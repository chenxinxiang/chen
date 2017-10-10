package com.cornucopia.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cornucopia.bean.Member;
import com.cornucopia.bean.MemberAccount;
import com.cornucopia.bean.MemberBankcards;
import com.cornucopia.bean.MemberProfitRecord;
import com.cornucopia.bean.MemberTradeRecord;
import com.cornucopia.bean.Member_tally;
import com.cornucopia.bean.Subject;
import com.cornucopia.bean.SubjectPurchaseRecord;
import com.cornucopia.service.FrontProductService;
import com.cornucopia.service.TouziService;


@Controller
@RequestMapping("/product")
public class FrontProductCenterController {

	@Autowired
	@Qualifier("frontProductServiceImpl")
	private FrontProductService frontProductServiceImpl;
	
	  @Autowired
	  @Qualifier("touziServiceImpl")
	  private TouziService touziServiceImpl;
	
//	//去购买前的操作
//	@RequestMapping("/login")
//	public String login(Model model){
//		List<Subject> subjectList=frontProductServiceImpl.listAll(1);
//		model.addAttribute("subjectList", subjectList);
//		return "frontProductCenter";
//	}
	
	//点击去购买跳入到购买页面去
	@RequestMapping("/toBuy")
	public String goToBuy(String id,Model model,HttpSession session,String url){
//		session.setAttribute("url", url);
		//这一段显示用户金额信息
		Member member=(Member) session.getAttribute("member");
		if (member!=null) {
			int memberId=member.getId();
			MemberAccount memberAccount=this.frontProductServiceImpl.ListAllByMemberId(memberId);
			model.addAttribute("memberAccount", memberAccount);
			//这一段判断有没有绑定银行卡
			MemberBankcards memberBankcards=this.frontProductServiceImpl.ListCardByMemberId(memberId);
			model.addAttribute("memberBankcards", memberBankcards);
		}else{
			return "redirect:/item2/login?url="+url+"";
		}
		//这一段显示标的信息
		Subject subject=(Subject) this.frontProductServiceImpl.getById(Integer.parseInt(id));
		int datePeriod=subject.getPeriod();
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//存入开始计息时间
		try {
			subject.setStart_date(sdf.parse(sdf.format(date)));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DAY_OF_MONTH, +datePeriod);//今天的时间加标的周期
        date = calendar.getTime();
		try {
			subject.setEnd_date(sdf.parse(sdf.format(date)));//存入预计到账时间
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.frontProductServiceImpl.saveOrUpdateProduct(subject);
		subject=(Subject) this.frontProductServiceImpl.getById(Integer.parseInt(id));
		model.addAttribute("sub", subject);
		calendar.setTime(date);
        calendar.add(Calendar.DAY_OF_MONTH, +1);//预计到账日期加一天
        date = calendar.getTime();
		model.addAttribute("lastDatePlusOne", sdf.format(date));
		return "frontShopping";
	}
	
	/**
	 * 该方法用来操作点击购买之后跳转的页面
	 */
	@RequestMapping("/afterBuy")
	public String afterBuy(String subjectId,String amountYuE,String mytext,Model model,HttpSession session,
	MemberProfitRecord memberProfitRecord,MemberTradeRecord memberTradeRecord,
	Member_tally member_tally,SubjectPurchaseRecord subjectPurchaseRecord) throws ParseException{
		System.out.println(subjectId+"1"+amountYuE+"2"+mytext+"---------------------------");
		//从session获取member信息
		Object object=session.getAttribute("member");
		if (object!=null) {
			Member member=(Member) object;
			int memberId=member.getId();
			String sysDate=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
			String sysDateAndRandom=new SimpleDateFormat("yyyyMMddHHmmss").format(new Date())+(int)(Math.random()*9)+(int)(Math.random()*9);
			Calendar now=Calendar.getInstance();
			//0 操作subject表
			Subject subject=this.frontProductServiceImpl.getSubjectById(Integer.parseInt(subjectId));
			subject.setBought(subject.getBought()+1);
			subject.setAmount(subject.getAmount()+Integer.parseInt(mytext));
			this.frontProductServiceImpl.updateSubject(subject);
			subject=this.frontProductServiceImpl.getSubjectById(Integer.parseInt(subjectId));
			float interest=((((Integer.parseInt(mytext)*(subject.getYear_rate()+1))/100)/365)*(subject.getPeriod()));
			
			//1、操作成员账户表数据
			MemberAccount memberAccount=this.frontProductServiceImpl.ListAllByMemberId(memberId);
//			memberAccount.setUseable_balance(Integer.parseInt(amountYuE)-Integer.parseInt(mytext));
			memberAccount.setUseable_balance(Double.parseDouble(amountYuE)-Double.parseDouble(mytext));
			System.out.println("剩余可用余额："+memberAccount.getUseable_balance());
			try {
				memberAccount.setUpdate_date(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(sysDate));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			memberAccount.setInvest_amount(Double.parseDouble(mytext)+memberAccount.getInvest_amount());
			memberAccount.setMember(member);
			this.frontProductServiceImpl.updateMemberAccount(memberAccount);
			
			//2、操作成员利润表
			memberProfitRecord.setMember(member);
			memberProfitRecord.setSubject(subject);
			memberProfitRecord.setSerial_number(sysDateAndRandom);
			memberProfitRecord.setType(0);
			memberProfitRecord.setAmount(interest);
			memberProfitRecord.setDelflag(0);
			try {
				memberProfitRecord.setCreate_date(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(sysDate));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				memberProfitRecord.setUpdate_date((new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(sysDate)));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			memberProfitRecord.setComment(subject.getName());
			memberProfitRecord.setProfit_year(now.get(Calendar.YEAR));
			memberProfitRecord.setProfit_month(now.get(Calendar.MONTH+1));
			memberProfitRecord.setProfit_day(now.get(Calendar.DAY_OF_MONTH));
			this.frontProductServiceImpl.saveMemberProfitRecord(memberProfitRecord);
			
			//3操作交易记录表
			memberTradeRecord.setMember(member);
			memberTradeRecord.setTrade_no(sysDateAndRandom);
			memberTradeRecord.setTrade_name("购买"+subject.getName());
			memberTradeRecord.setCounterpart("");
			memberTradeRecord.setAmount(Integer.parseInt(mytext));
			memberTradeRecord.setTrade_type(subject.getName());
			memberTradeRecord.setFund_flow(0);
			memberTradeRecord.setTrade_status(0);
			memberTradeRecord.setExt_field_1("扩展1");
			memberTradeRecord.setExt_field_2("扩展2");
			memberTradeRecord.setExt_field_3("扩展3");
			try {
				memberTradeRecord.setCreate_date(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(sysDate));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				memberTradeRecord.setUpdate_date(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(sysDate));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			this.frontProductServiceImpl.saveMemberTradeRecord(memberTradeRecord);
			
			//4 操作记账表
			member_tally.setMember(member);
			member_tally.setType_id(1);
			member_tally.setType_name("A标");
			member_tally.setAmount(Integer.parseInt(mytext));
			try {
				member_tally.setPay_date(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(sysDate));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				member_tally.setCreate_date(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(sysDate));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			this.frontProductServiceImpl.saveMember_tally(member_tally);
			
			//5操作标的购买表
			subjectPurchaseRecord.setSubject(subject);
			subjectPurchaseRecord.setSubject(subject);
            subjectPurchaseRecord.setMember(member);

			subjectPurchaseRecord.setMember(member);
			subjectPurchaseRecord.setSerial_number(sysDate);
			subjectPurchaseRecord.setAmount(Integer.parseInt(mytext));
			subjectPurchaseRecord.setDeal_id("127.0.0.1");
			subjectPurchaseRecord.setDelflag(0);
			subjectPurchaseRecord.setCreate_date(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(sysDate));
			subjectPurchaseRecord.setUpdate_date(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(sysDate));
			subjectPurchaseRecord.setInterest(interest);
			subjectPurchaseRecord.setIspayment(1);
			subjectPurchaseRecord.setPay_interest_times(1);
			subjectPurchaseRecord.setLast_profit_day(Integer.parseInt(new SimpleDateFormat("yyyyMMdd").format(new Date())));
			subjectPurchaseRecord.setBonus_info("无");
			this.frontProductServiceImpl.saveSubjectPurchaseRecord(subjectPurchaseRecord);
			subjectPurchaseRecord.setInterest(0);
			int cnt=this.frontProductServiceImpl.getCntBySubjectIdAndMemberId(Integer.parseInt(subjectId), memberId);
			List<SubjectPurchaseRecord> sList=this.frontProductServiceImpl.listSubjectPurchaseRecordAll(Integer.parseInt(subjectId), memberId);
			if(sList!=null&&sList.size()>0){
				for (SubjectPurchaseRecord subjectPurchaseRecord2 : sList) {
					subjectPurchaseRecord2.setMember(member);
					subjectPurchaseRecord2.setSubject(subject);
					subjectPurchaseRecord2.setPay_interest_times(cnt);
					this.frontProductServiceImpl.updateSubjectPurchaseRecordAfterSave(subjectPurchaseRecord2);
				}
			}
			model.addAttribute("memberAccount", memberAccount);
			//这一段判断有没有绑定银行卡
			MemberBankcards memberBankcards=this.frontProductServiceImpl.ListCardByMemberId(memberId);
			model.addAttribute("memberBankcards", memberBankcards);
			return "redirect:/memberCenter/list";//最后购买成功后跳转到个人中心 显示购买的信息
		}
		return "redirect:/product/toBuy";
	}
	
	
}
