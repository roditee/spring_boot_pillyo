package com.pillyo.pill.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.pillyo.pill.model.DrugShapeVO;

public interface IDrugShapeService {
	//	낱알 옵션별 검색
	ArrayList<DrugShapeVO> drugShapeSearch(HashMap<String, Object> map); 
}