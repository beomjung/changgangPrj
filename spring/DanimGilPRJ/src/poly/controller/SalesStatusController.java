package poly.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.service.IDailyService;

/*
 * 매출 보여주는 컨트롤러
 * */
@Controller
public class SalesStatusController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="DailyService")
	private IDailyService DailyService;
	// 연도별 매출현황 보여주는 페이지
			@RequestMapping(value = "/main/year")
			public String yearSales(HttpServletRequest request, ModelMap model) throws Exception {
				log.info(this.getClass() + "main/yearSales start!!");
				log.info(this.getClass() + "main/yearSales end!!");
				return "/main/yearSales";
			}
			
			// 월별 매출현황 보여주는 페이지
			@RequestMapping(value = "/main/monthly")
			public String monthlySales(HttpServletRequest request, ModelMap model) throws Exception {
				log.info(this.getClass() + "main/monthlySales start!!");
				log.info(this.getClass() + "main/monthlySales end!!");
				return "/main/monthlySales";
			}
			
			// 일별 매출현황 보여주는 페이지
			@RequestMapping(value = "/main/daily")
			public String dailySales(HttpServletRequest request, ModelMap model) throws Exception {
				log.info(this.getClass() + "main/dailySales start!!");
				log.info(this.getClass() + "main/dailySales end!!");
				return "/main/dailySales";
			}
			@RequestMapping(value = "/main/SalesInput")
			public String SalesInput(HttpServletRequest request, ModelMap model) throws Exception {
				log.info(this.getClass() + "main/SalesInput start!!");
				log.info(this.getClass() + "main/SalesInput end!!");
				return "/main/SalesInput";
			}
			
			@RequestMapping(value = "/main/NewFile")
			public String Clone(HttpServletRequest request, ModelMap model) throws Exception {
				log.info(this.getClass() + "main/SalesInput start!!");
				log.info(this.getClass() + "main/SalesInput end!!");
				return "/main/NewFile";
			}
			
			//일일 매출현황 등록
			@ResponseBody
			@RequestMapping(value="/main/Daily_UPDATEProc", method = RequestMethod.POST)
			public int insertDBData(@RequestParam(value="arr[]") List<String> arr) throws Exception{
				log.info(this.getClass().getName() +  "async DB Insert Start!!");
				log.info(arr);
				int res = DailyService.DailyUpdateService(arr);
				log.info(this.getClass().getName() + "async DB Insert END!!");
				return res;
			}
			
			
			/*public String SalesInputProc(HttpServletRequest request, HttpSession session, ModelMap model) throws Exception{
			
			log.info(this.getClass().getName()+"SalesInputProc start!!!");	
			
			String sal_no= CmmUtil.nvl(request.getParameter("sal_no"));
			String sal_date= CmmUtil.nvl(request.getParameter("sal_date"));
			String sal_item=CmmUtil.nvl(request.getParameter("sal_item"));
			String sal_price=CmmUtil.nvl(request.getParameter("sal_price"));
			String sal_quantity = CmmUtil.nvl(request.getParameter("sal_quantity"));
			String sal_kind= CmmUtil.nvl(request.getParameter("sal_kind"));
			
			log.info("NO : " + sal_no);
			log.info("DATE : " + sal_date);
			log.info("ITEM : " + sal_item);
			log.info("PRICE" + sal_price);
			log.info("QUANTITY :" + sal_quantity);
			log.info("KIND : " + sal_kind);
			
			String msg="";
			String url ="";
			
			int res = 0;
			
			DailyDTO pDTO = null;
			
			
			try {
				pDTO = new DailyDTO();
				
				pDTO.setSal_no(sal_no);
				pDTO.setSal_date(sal_date);
				pDTO.setSal_item(sal_item);
				pDTO.setSal_price(sal_price);
				pDTO.setSal_quantity(sal_quantity);
				pDTO.setSal_kind(sal_kind);
				
				res=DailyService.setDailyList(pDTO);
				log.info("res : "+res);
				pDTO=null;
				
				if(res==0) {
					log.info("서비스 확인 바람");
					msg="매출 업로드 실패!";
					url="/";
				}else {
					log.info("이상없음");
					msg="매출 업로드 성공!";
					url="/";
				}
			} catch (Exception e) {
				log.info(e.getStackTrace());
			} finally {
				model.addAttribute("msg", msg);
				model.addAttribute("url", url);
			}
			log.info(this.getClass().getName()+"SalesInputProc end!!!");
			 return "/main/SalesInput";*/
		}
			


