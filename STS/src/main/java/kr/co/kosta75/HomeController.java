package kr.co.kosta75;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping(value ={"/", "/home.sil"}, method = RequestMethod.GET)
	public String home() {
		return "home";
	}
	
	@RequestMapping("/notice.sil")
	public String notice() {
		return "notice";
	}
	
	@RequestMapping(value = "/login.sil", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
}
