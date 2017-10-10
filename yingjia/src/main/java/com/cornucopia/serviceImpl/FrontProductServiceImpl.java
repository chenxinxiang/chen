package com.cornucopia.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.cornucopia.bean.MemberAccount;
import com.cornucopia.bean.MemberBankcards;
import com.cornucopia.bean.MemberProfitRecord;
import com.cornucopia.bean.MemberTradeRecord;
import com.cornucopia.bean.Member_tally;
import com.cornucopia.bean.Subject;
import com.cornucopia.bean.SubjectPurchaseRecord;
import com.cornucopia.dao.SubjectQianDao;
import com.cornucopia.service.FrontProductService;


@Service
public class FrontProductServiceImpl implements FrontProductService {

	@Autowired
	@Qualifier("subjectQianDaoImpl")
	private SubjectQianDao sq;
	
	public Subject getById(int sid) {
		// TODO Auto-generated method stub
		return this.sq.getById(sid);
	}

	public void saveOrUpdateProduct(Subject subject) {
		// TODO Auto-generated method stub
		this.sq.saveOrUpdateProduct(subject);
	}

	public MemberAccount ListAllByMemberId(int memberId) {
		// TODO Auto-generated method stub
		return this.sq.ListAllByMemberId(memberId);
	}

	public MemberBankcards ListCardByMemberId(int memberId) {
		// TODO Auto-generated method stub
		return this.sq.ListCardByMemberId(memberId);
	}

	public Subject getSubjectById(int parseInt) {
		// TODO Auto-generated method stub
		return this.sq.getSubjectById(parseInt);
	}

	public void updateSubject(Subject subject) {
		// TODO Auto-generated method stub
		this.sq.updateSubject(subject);
	}

	public void updateMemberAccount(MemberAccount memberAccount) {
		// TODO Auto-generated method stub
		this.sq.updateMemberAccount(memberAccount);
	}

	public void saveMemberProfitRecord(MemberProfitRecord memberProfitRecord) {
		// TODO Auto-generated method stub
		this.sq.saveMemberProfitRecord(memberProfitRecord);
	}

	public void saveMemberTradeRecord(MemberTradeRecord memberTradeRecord) {
		// TODO Auto-generated method stub
		this.sq.saveMemberTradeRecord(memberTradeRecord);
	}

	public void saveMember_tally(Member_tally member_tally) {
		// TODO Auto-generated method stub
		this.sq.saveMember_tally(member_tally);
	}

	public void saveSubjectPurchaseRecord(SubjectPurchaseRecord subjectPurchaseRecord) {
		// TODO Auto-generated method stub
		this.sq.saveSubjectPurchaseRecord(subjectPurchaseRecord);
	}

	public int getCntBySubjectIdAndMemberId(int parseInt, int memberId) {
		// TODO Auto-generated method stub
		return this.sq.getCntBySubjectIdAndMemberId(parseInt, memberId);
	}

	public List<SubjectPurchaseRecord> listSubjectPurchaseRecordAll(int parseInt, int memberId) {
		// TODO Auto-generated method stub
		return this.sq.listSubjectPurchaseRecordAll(parseInt, memberId);
	}

	public void updateSubjectPurchaseRecordAfterSave(SubjectPurchaseRecord subjectPurchaseRecord2) {
		// TODO Auto-generated method stub
		this.sq.updateSubjectPurchaseRecordAfterSave(subjectPurchaseRecord2);
	}

}
