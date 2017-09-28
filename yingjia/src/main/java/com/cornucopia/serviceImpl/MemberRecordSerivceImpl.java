package com.cornucopia.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import org.springframework.stereotype.Component;
import com.cornucopia.bean.Member;
import com.cornucopia.bean.MemberTradeRecord;
import com.cornucopia.dao.MemberRecordDao;
import com.cornucopia.service.MemberRecordService;

@Component
@Transactional
public class MemberRecordSerivceImpl  implements MemberRecordService{

@Resource
private MemberRecordDao memberRecordDao;

@Override
public List<Member> memberList() {
	return this.memberRecordDao.listMemberAll();
}

@Override
public List<MemberTradeRecord> mrList(Map map) {
	return this.memberRecordDao.listRecordAll(map);
}

@Override
public String listHql(Map map, String hql) {
	return this.memberRecordDao.listHql(map, hql);
}

//@Override
//public List<MemberTradeRecord> mtrList(String trade_no) {
//	return this.memberRecordDao.mtrlist(trade_no);
//}
//
//@Override
//public List<Member> memList(String mobile_Phone) {
//	return this.memberRecordDao.memList(mobile_Phone);
//}

	
}
