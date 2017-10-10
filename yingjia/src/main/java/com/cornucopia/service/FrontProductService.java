package com.cornucopia.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cornucopia.bean.MemberAccount;
import com.cornucopia.bean.MemberBankcards;
import com.cornucopia.bean.MemberProfitRecord;
import com.cornucopia.bean.MemberTradeRecord;
import com.cornucopia.bean.Member_tally;
import com.cornucopia.bean.Subject;
import com.cornucopia.bean.SubjectPurchaseRecord;


public interface FrontProductService {

	Subject getById(int sid);

	void saveOrUpdateProduct(Subject subject);

	MemberAccount ListAllByMemberId(int memberId);

	MemberBankcards ListCardByMemberId(int memberId);

	Subject getSubjectById(int parseInt);//无

	void updateSubject(Subject subject);

	void updateMemberAccount(MemberAccount memberAccount);

	void saveMemberProfitRecord(MemberProfitRecord memberProfitRecord);

	void saveMemberTradeRecord(MemberTradeRecord memberTradeRecord);

	void saveMember_tally(Member_tally member_tally);

	void saveSubjectPurchaseRecord(SubjectPurchaseRecord subjectPurchaseRecord);

	int getCntBySubjectIdAndMemberId(int parseInt, int memberId);

	List<SubjectPurchaseRecord> listSubjectPurchaseRecordAll(int parseInt, int memberId);

	void updateSubjectPurchaseRecordAfterSave(SubjectPurchaseRecord subjectPurchaseRecord2);
	
	
	
}
