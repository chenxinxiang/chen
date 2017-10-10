(function () {

    // Private array of chars to use
    var CHARS = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'.split('');
    Math.uuidFast = function () {
        var chars = CHARS, uuid = new Array(36), rnd = 0, r;
        for (var i = 0; i < 36; i++) {
            if (i == 8 || i == 13 || i == 18 || i == 23) {
                uuid[i] = '-';
            } else if (i == 14) {
                uuid[i] = '4';
            } else {
                if (rnd <= 0x02) rnd = 0x2000000 + (Math.random() * 0x1000000) | 0;
                r = rnd & 0xf;
                rnd = rnd >> 4;
                uuid[i] = chars[(i == 19) ? (r & 0x3) | 0x8 : r];
            }
        }
        return uuid.join('');
    };
    if (typeof util == "undefined") util = {
        toQueryPair: function (key, value) {
            if (typeof value == 'undefined'){
                return key;
            }
            return key + '=' + encodeURIComponent(value === null ? '' : String(value));
        },
        toQueryString:function (obj) {
            var ret = [];
            for(var key in obj){
                key = encodeURIComponent(key);
                var values = obj[key];
                if(values && values.constructor == Array){//数组
                    var queryValues = [];
                    for (var i = 0, len = values.length, value; i < len; i++) {
                        value = values[i];
                        queryValues.push(toQueryPair(key, value));
                    }
                    ret = ret.concat(queryValues);
                }else{ //字符串
                    ret.push(util.toQueryPair(key, values));
                }
            }
            return ret.join('&');
        }
    };

    _jaq.track=function (page){}

    function setCookie(c_name, value, expireMinutes) {
        var exdate = new Date();
        exdate.setTime(exdate.getTime() + 60*1000*expireMinutes);
        document.cookie = c_name + "=" + escape(value) + ((expireMinutes == null) ? "" : ";expires=" + exdate.toGMTString());
    }

    function getCookie(name) {
        var nameEQ = name + "=";
        var ca = document.cookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') c = c.substring(1, c.length);
            if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
        }
        return null;
    }


    function pvuv(key,fuc){
        fuc();
        var user = 'uv_' + key;
        var num = 'nv_' + key;
        var nuser = 'nu_' + key;
        var uv = getCookie(user) || '';
        var nv = getCookie(num) || '';
        var nu = getCookie(nuser) || '';
        if (uv == null || uv == 'undefined' || uv == '') {
            uv = Math.uuidFast();
            setCookie(user, uv, 1440);
            fuc('_UV');
        }
        if (nv == null || nv == 'undefined' || nv == '') {
            nv = Math.uuidFast();
            fuc('_NV');
        }
        if (nu == null || nu == 'undefined' || nu == '') {
            nu = Math.uuidFast();
            setCookie(nuser, nu, 365 * 1440);
            fuc('_NU');
        }
        setCookie(num, nv, 30);
    }

    function pvOnly(key,fuc){
        fuc();
    }

    function dataPush(url,data,type) {
        if(type) data.type=type;
        data.uid='boxer';
        data.rnd=Math.random();
        data.refer=document.referrer;
        var img = new Image();//
        var param=util.toQueryString(data);
        img.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'ag.jd.com/rest/ja/'+url+'?'+param;
    }

    var cnf=null;
    var _UA_BIZ = '';
    var _UA_PAGE ='' ;
    var _Page_Begin=0;

    (function () {
        _Page_Begin=new Date().getTime()
        cnf = _jaq.shift();
        while (cnf != null) {
            if (cnf instanceof Array && cnf.length > 1) {
                if (cnf[0] == '_setAccount') {
                    _UA_BIZ = cnf[1];
                }
            } else {
                _UA_PAGE =cnf;
                pvuv(_UA_BIZ + '_' + cnf,function(type){
                    var d={
                        page : cnf,
                        acc : _UA_BIZ
                    }
                    dataPush('pb',d,type);
                });
            }
            cnf = _jaq.shift();
        }
    })();

    $(document).bind("click", function (e) {
        e = e || event;
        var tag = e.srcElement || e.target;
        var d = $(tag).attr('psa');
        var dWithoutCache = $(tag).attr('psanc');
        while (!d && !dWithoutCache) {
            tag = tag.parentNode;
            if (!tag || (tag.nodeName == 'BODY')) {
                break;
            }
            d = $(tag).attr('psa');
            dWithoutCache = $(tag).attr('psanc');
        }
        if (d) {
            var eid=d;
            pvuv(_UA_BIZ + '_' + _UA_PAGE + '_' + d,function(type){
                var d={
                    page : _UA_PAGE,
                    acc : _UA_BIZ,
                    eid : eid
                }
                dataPush('e',d,type);
            });
        } else if (dWithoutCache) {
            var eid=dWithoutCache;
            pvOnly(_UA_BIZ + '_' + _UA_PAGE + '_' + d,function(type){
                var d={
                    page : _UA_PAGE,
                    acc : _UA_BIZ,
                    eid : eid
                }
                dataPush('e',d,type);
            });
        }
    });

    window.onunload=function(){

        var d={
            page : _UA_PAGE,
            acc : _UA_BIZ,
            pageTime : new Date().getTime() - _Page_Begin
        }
        dataPush('pe',d);
    }

    var $psa=function(title){
        return new $psa.fn.init(title);
    }

    $psa.fn =$psa.prototype={
        init:function(title){
            this.title=title;
        },
        title:"",
        pv:function(){
            var eid=this.title;
            pvOnly(_UA_BIZ + '_' + _UA_PAGE + '_' + eid,function(type){
                var d={
                    page : _UA_PAGE,
                    acc : _UA_BIZ,
                    eid : eid
                }
                dataPush('e',d,type);
            });
        },
        pvuv:function(){
            var eid=this.title;
            pvuv(_UA_BIZ + '_' + _UA_PAGE + '_' + eid,function(type){
                var d={
                    page : _UA_PAGE,
                    acc : _UA_BIZ,
                    eid : eid
                }
                dataPush('e',d,type);
            });
        }
    }
    $psa.fn.init.prototype=$psa.fn;
    window.$psa=$psa;

})()