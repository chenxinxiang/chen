package com.cornucopia.dao;

import java.util.List;

import com.cornucopia.bean.MemberAccount;
import com.cornucopia.bean.MemberBankcards;
import com.cornucopia.bean.Subject;
import com.cornucopia.bean.SubjectPurchaseRecord;


public interface SubjectQianDao {

	Subject getById(int sid);

	void saveOrUpdateProduct(Subject subject);

	MemberAccount ListAllByMemberId(int memberId);

	MemberBankcards ListCardByMemberId(int memberId);

	Subject getSubjectById(int parseInt);

	void updateSubject(Subject subject);

	void updateMemberAccount(Object object);

	void saveMemberProfitRecord(Object object);

	void saveMemberTradeRecord(Object object);

	void saveMember_tally(Object object);

	void saveSubjectPurchaseRecord(Object object);

	int getCntBySubjectIdAndMemberId(int parseInt, int memberId);

	List<SubjectPurchaseRecord> listSubjectPurchaseRecordAll(int parseInt, int memberId);

	void updateSubjectPurchaseRecordAfterSave(Object object);
	
}
