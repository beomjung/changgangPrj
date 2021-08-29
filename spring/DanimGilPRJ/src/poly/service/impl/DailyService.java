package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import poly.dto.DailyDTO;
import poly.persistance.mapper.IDailyMapper;
import poly.service.IDailyService;

@Service("DailyService")
public class DailyService implements IDailyService {

	private Logger log = Logger.getLogger(getClass());

	@Resource(name = "DailyMapper")
	private IDailyMapper DailyMapper;

	@SuppressWarnings("null")
	@Override
	public int DailyUpdateService(List<String> arr) throws Exception {
		
		DailyDTO pDTO = null;
		int num = 0;
		int res = 0;
		boolean boo = true;
		// html tag 순서대로 값을 넣어주는 것 0번부터 시작
		while(boo) {
			pDTO = new DailyDTO();
			pDTO.setSal_no(arr.get(num));
			
			pDTO.setSal_date(arr.get(num+1)); // 날짜
			pDTO.setSal_item(arr.get(num+2)); // 아이템
			pDTO.setSal_price(arr.get(num+3)); // 가격
			pDTO.setSal_quantity(arr.get(num+4)); // 수량
			pDTO.setSal_kind(arr.get(num+5)); // 카드? 현금? 배달앱?
			res = DailyMapper.setDailyList(pDTO);
			log.info(res);
			num += 6; // 인덱스 트리거 증가
			log.info(pDTO);
			pDTO = null; // 다 쓰고 메모리 비워주기
			if(num >= arr.size()) {boo = false; res = 1;}
		}
		
		return res;
	}

}
