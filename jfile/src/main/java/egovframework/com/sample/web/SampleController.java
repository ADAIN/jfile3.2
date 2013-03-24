package egovframework.com.sample.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import egovframework.com.jfile.view.JSonView;

@Controller
@RequestMapping("/sample/*")
public class SampleController {
	
	@RequestMapping
	public void fileupload() {
	}
	
	@RequestMapping(value="/guide")
	public void guide() {
		
	}

	/**
	 * 샘플 업로드 페이지
	 */
	@RequestMapping(value="/site/upload1.do")
	public void upload1() {}
	
	@RequestMapping(value="/site/upload2.do")
	public void upload2() {}
	
	/**
	 * 샘플 다운로드 페이지
	 */
	@RequestMapping(value="/site/download1.do")
	public void download1() {
	}
	
	@RequestMapping(value="/site/cutdownSessionLimitTime.do")
	public ModelAndView cutdownSessionLimitTime(HttpServletRequest request) {
		System.out.println("SampleController.cutdownSessionLimitTime()");
		ModelAndView modelAndView = new ModelAndView(JSonView.NAME);
		request.getSession().setMaxInactiveInterval(10);
		return modelAndView;
	}
}
