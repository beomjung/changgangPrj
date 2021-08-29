package poly.persistance.mapper;

import config.Mapper;
import poly.dto.DailyDTO;

@Mapper("DailyMapper")
public interface IDailyMapper {
	//일일 매출 현황 확인
	int setDailyList(DailyDTO pDTO) throws Exception;

}
