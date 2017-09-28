package com.cornucopia.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cornucopia.service.GgManagerService;
@Controller
@RequestMapping("GongGao")
public class YjTopController {

	@Autowired
	@Qualifier("ggManagerServiceImpl")
	private GgManagerService ggManagerService;
//	//根据id查询公告内容
//	@RequestMapping("/YjToo")
//	public String YjToo(int id,Model model){
//		Pushnotice push_notice=ggManagerService.chakan(id);
//		model.addAttribute("pushNotice",push_notice);
//		return "backModel/fxx/YjToo";
//	}
//	
//	//修改内容,標題
//	@RequestMapping("/serTor")
//	public String serTor(Pushnotice push,int id,String title,String content){
//		Date date=new Date();
//		SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
//		String sun=simpleDateFormat.format(date);
//		Date me=null;
//		try {
//			me=simpleDateFormat.parse(sun);
//		} catch (ParseException e) {
//			e.printStackTrace();
//		}
//		push.setCreateDate(me);  
////		push.setUpdate_Date(new Date());
//		this.ggManagerService.updatelist(id,title,content);
//	
//		return "redirect:/GongGao/manager";
//	}
//	//添加标题
//		@RequestMapping("/serTow")
//		public String serTow(Pushnotice push_notice,Date create_date){
//			Date date = new Date();  
//	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
//	        String dateNowStr = sdf.format(date); 
//	        Date me=null;
//	        try {
//				me=sdf.parse(dateNowStr);
//				System.out.println(me);
//			} catch (ParseException e) {
//				e.printStackTrace();
//			}
//			push_notice.setCreateDate(me);
//			this.ggManagerService.save(push_notice);
//			return "redirect:/GongGao/manager";
//		}
//	//编辑公告
//	@RequestMapping("/YjTom")
//	public String YjTom(int id,Model model){
//		Pushnotice push_notice=ggManagerService.chakan(id);
//		model.addAttribute("pushNotice",push_notice);
//		System.out.println(push_notice.getTitle());
//		return "backModel/fxx/YjTom";
//	}
//	    //查询所有公告，新闻
//		@RequestMapping("/manager")
//		public String menus1(Model model){
//	    	List list =this.ggManagerService.listSubject();
//	    	model.addAttribute("list", list);
//			return "backModel/fxx/YjTop";
//		}
		//红包统计
		@RequestMapping("/serCop")
		public String serCop(Model model,HttpServletRequest re,String creatTime,String endTime,String time){
			System.out.println(time+"----------------------");
			if("2".equals(time)||"1".equals(time)||"3".equals(time)){
				if("1".equals(time)){
				int month=1;
				List list =this.ggManagerService.ListCop(creatTime,endTime,month);
				List list2=this.ggManagerService.ListCop1(creatTime,endTime,month);
				List list3=this.ggManagerService.ListCop2(creatTime,endTime,month);
				List list4=this.ggManagerService.ListCop3(creatTime,endTime,month);
				List list5=this.ggManagerService.ListCop4(creatTime,endTime,month);
				List list6=this.ggManagerService.ListCop5(creatTime,endTime,month);
				List list7=this.ggManagerService.ListCop6(creatTime,endTime,month);
				List list8=this.ggManagerService.ListCop7(creatTime,endTime,month);
				List list9=this.ggManagerService.ListCop8(creatTime,endTime,month);
				List list10=this.ggManagerService.ListCop9(creatTime,endTime,month);
				List list11=this.ggManagerService.ListCop10(creatTime,endTime,month);
				List list12=this.ggManagerService.ListCop11(creatTime,endTime,month);
				List list13=this.ggManagerService.ListCop12(creatTime,endTime,month);
				List list14=this.ggManagerService.ListCop13(creatTime,endTime,month);
				List list15=this.ggManagerService.ListCop14(creatTime,endTime,month);
				model.addAttribute("list", list);
				model.addAttribute("list2", list2);
				model.addAttribute("list3", list3);
				model.addAttribute("list4", list4);
				model.addAttribute("list5", list5);
				model.addAttribute("list6", list6);
				model.addAttribute("list7", list7);
				model.addAttribute("list8", list8);
				model.addAttribute("list9", list9);
				model.addAttribute("list10", list10);
				model.addAttribute("list11", list11);
				model.addAttribute("list12", list12);
				model.addAttribute("list13", list13);
				model.addAttribute("list14", list14);
				model.addAttribute("list15", list15);
				return "YjCop";
			}else if("2".equals(time)) {
				int month=2;
				List list =this.ggManagerService.ListCop(creatTime,endTime,month);
				List list2=this.ggManagerService.ListCop1(creatTime,endTime,month);
				List list3=this.ggManagerService.ListCop2(creatTime,endTime,month);
				List list4=this.ggManagerService.ListCop3(creatTime,endTime,month);
				List list5=this.ggManagerService.ListCop4(creatTime,endTime,month);
				List list6=this.ggManagerService.ListCop5(creatTime,endTime,month);
				List list7=this.ggManagerService.ListCop6(creatTime,endTime,month);
				List list8=this.ggManagerService.ListCop7(creatTime,endTime,month);
				List list9=this.ggManagerService.ListCop8(creatTime,endTime,month);
				List list10=this.ggManagerService.ListCop9(creatTime,endTime,month);
				List list11=this.ggManagerService.ListCop10(creatTime,endTime,month);
				List list12=this.ggManagerService.ListCop11(creatTime,endTime,month);
				List list13=this.ggManagerService.ListCop12(creatTime,endTime,month);
				List list14=this.ggManagerService.ListCop13(creatTime,endTime,month);
				List list15=this.ggManagerService.ListCop14(creatTime,endTime,month);
				model.addAttribute("list", list);
				model.addAttribute("list2", list2);
				model.addAttribute("list3", list3);
				model.addAttribute("list4", list4);
				model.addAttribute("list5", list5);
				model.addAttribute("list6", list6);
				model.addAttribute("list7", list7);
				model.addAttribute("list8", list8);
				model.addAttribute("list9", list9);
				model.addAttribute("list10", list10);
				model.addAttribute("list11", list11);
				model.addAttribute("list12", list12);
				model.addAttribute("list13", list13);
				model.addAttribute("list14", list14);
				model.addAttribute("list15", list15);
				return "YjCop";
			}else if("3".equals(time)){
				int month=3;
				List list =this.ggManagerService.ListCop(creatTime,endTime,month);
				List list2=this.ggManagerService.ListCop1(creatTime,endTime,month);
				List list3=this.ggManagerService.ListCop2(creatTime,endTime,month);
				List list4=this.ggManagerService.ListCop3(creatTime,endTime,month);
				List list5=this.ggManagerService.ListCop4(creatTime,endTime,month);
				List list6=this.ggManagerService.ListCop5(creatTime,endTime,month);
				List list7=this.ggManagerService.ListCop6(creatTime,endTime,month);
				List list8=this.ggManagerService.ListCop7(creatTime,endTime,month);
				List list9=this.ggManagerService.ListCop8(creatTime,endTime,month);
				List list10=this.ggManagerService.ListCop9(creatTime,endTime,month);
				List list11=this.ggManagerService.ListCop10(creatTime,endTime,month);
				List list12=this.ggManagerService.ListCop11(creatTime,endTime,month);
				List list13=this.ggManagerService.ListCop12(creatTime,endTime,month);
				List list14=this.ggManagerService.ListCop13(creatTime,endTime,month);
				List list15=this.ggManagerService.ListCop14(creatTime,endTime,month);
				model.addAttribute("list", list);
				model.addAttribute("list2", list2);
				model.addAttribute("list3", list3);
				model.addAttribute("list4", list4);
				model.addAttribute("list5", list5);
				model.addAttribute("list6", list6);
				model.addAttribute("list7", list7);
				model.addAttribute("list8", list8);
				model.addAttribute("list9", list9);
				model.addAttribute("list10", list10);
				model.addAttribute("list11", list11);
				model.addAttribute("list12", list12);
				model.addAttribute("list13", list13);
				model.addAttribute("list14", list14);
				model.addAttribute("list15", list15);
				return "YjCop";
			}
			}
			int month = 0;
			
			List list =this.ggManagerService.ListCop(creatTime,endTime,month);
			List list2=this.ggManagerService.ListCop1(creatTime,endTime,month);
			List list3=this.ggManagerService.ListCop2(creatTime,endTime,month);
			List list4=this.ggManagerService.ListCop3(creatTime,endTime,month);
			List list5=this.ggManagerService.ListCop4(creatTime,endTime,month);
			List list6=this.ggManagerService.ListCop5(creatTime,endTime,month);
			List list7=this.ggManagerService.ListCop6(creatTime,endTime,month);
			List list8=this.ggManagerService.ListCop7(creatTime,endTime,month);
			List list9=this.ggManagerService.ListCop8(creatTime,endTime,month);
			List list10=this.ggManagerService.ListCop9(creatTime,endTime,month);
			List list11=this.ggManagerService.ListCop10(creatTime,endTime,month);
			List list12=this.ggManagerService.ListCop11(creatTime,endTime,month);
			List list13=this.ggManagerService.ListCop12(creatTime,endTime,month);
			List list14=this.ggManagerService.ListCop13(creatTime,endTime,month);
			List list15=this.ggManagerService.ListCop14(creatTime,endTime,month);
			model.addAttribute("list", list);
			model.addAttribute("list2", list2);
			model.addAttribute("list3", list3);
			model.addAttribute("list4", list4);
			model.addAttribute("list5", list5);
			model.addAttribute("list6", list6);
			model.addAttribute("list7", list7);
			model.addAttribute("list8", list8);
			model.addAttribute("list9", list9);
			model.addAttribute("list10", list10);
			model.addAttribute("list11", list11);
			model.addAttribute("list12", list12);
			model.addAttribute("list13", list13);
			model.addAttribute("list14", list14);
			model.addAttribute("list15", list15);
			return "YjCop";
		}
//		//查询所有反馈意见表
//		@RequestMapping("/YjFom")
//		public String YjFom(Model model){
//			List list=this.ggManagerService.listfeedback();
//			model.addAttribute("list",list);
//			return "backModel/fxx/YjFom";
//		}
//		//查询是否有该标题
//	@RequestMapping("/serTop")
//	public String serTop(String title,Model model){
//		
//		String hql="from Push_notice where title like '%"+title+"%'";
//					List list=this.ggManagerService.listPush_notice(hql);
//					System.out.println(list.size());
//					model.addAttribute("list", list);
//					
//						return "backModel/fxx/YjTop";
//	}
//	//跳轉添加
//	@RequestMapping("/serTou")
//	public String serTou(){
//		return "backModel/fxx/YjTow";
//	}
//	
//	//跳转用户综合统计
////		@RequestMapping("/serHow")
////		public String serHow(){
////			return "backModel/fxx/YjHow";
////		}
////		@RequestMapping("/serHow")
////		public String serHow(Model model,HttpServletRequest re,String creatTime,String endTime){
////			System.out.println(creatTime);
////			List list =this.ggManagerService.ListCop(creatTime,endTime);
////			List list2=this.ggManagerService.ListCop1(creatTime,endTime);
////			List list3=this.ggManagerService.ListCop2(creatTime,endTime);
////			List list4=this.ggManagerService.ListCop3(creatTime,endTime);
////			List list5=this.ggManagerService.ListCop4(creatTime,endTime);
////			List list6=this.ggManagerService.ListCop5(creatTime,endTime);
////			List list7=this.ggManagerService.ListCop6(creatTime,endTime);
////			List list8=this.ggManagerService.ListCop7(creatTime,endTime);
////			List list9=this.ggManagerService.ListCop8(creatTime,endTime);
////			List list10=this.ggManagerService.ListCop9(creatTime,endTime);
////			List list11=this.ggManagerService.ListCop10(creatTime,endTime);
////			List list12=this.ggManagerService.ListCop11(creatTime,endTime);
////			List list13=this.ggManagerService.ListCop12(creatTime,endTime);
////			List list14=this.ggManagerService.ListCop13(creatTime,endTime);
////			List list15=this.ggManagerService.ListCop14(creatTime,endTime);
////			model.addAttribute("list", list);
////			model.addAttribute("list2", list2);
////			model.addAttribute("list3", list3);
////			model.addAttribute("list4", list4);
////			model.addAttribute("list5", list5);
////			model.addAttribute("list6", list6);
////			model.addAttribute("list7", list7);
////			model.addAttribute("list8", list8);
////			model.addAttribute("list9", list9);
////			model.addAttribute("list10", list10);
////			model.addAttribute("list11", list11);
////			model.addAttribute("list12", list12);
////			model.addAttribute("list13", list13);
////			model.addAttribute("list14", list14);
////			model.addAttribute("list15", list15);
////			return "backModel/fxx/YjHow";
////		}
//	
	
}
