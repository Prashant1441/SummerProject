package com.Manage.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Manage.Services.flightService;
import com.Manage.domain.flight;

@Controller
public class flightController {
	@Autowired
	private flightService fservice;

	@RequestMapping(value = "/flight_form")
	public String flightForm(Model m) {
		flight f = new flight();
		m.addAttribute("command", f);
		return "flightForm";
	}

	@RequestMapping(value = "/flightList")
	public String flightlist(Model m, HttpSession session) {
		Integer userId = (Integer) session.getAttribute("userId");
		m.addAttribute("flightList", fservice.findUserFlight(userId));
		return "flightList";
	}

	
	  @RequestMapping(value= "/dataSearch") 
	  public String pratice(Model
	  m,@RequestParam(value = "freeText") String freeText,@RequestParam(value =
	  "freeText2") String freeText2 ) {
	 
	 m.addAttribute("flightList",fservice.findAllBook(
	  freeText,freeText2) );
	 return "BookFlightlist"; }
	  
	 /*
		 * @RequestMapping(value = "/dataSearch") public String
		 * pratice(@Valid @ModelAttribute("command") flight f,BindingResult result,Model
		 * m) {
		 * 
		 * if (result.hasErrors()) {
		 * 
		 * return "user_dashboard"; } f.setFlightStatus(1); f.setTimeIn("12");
		 * f.setTimeOut("12"); f.setFreturn("12"); f.setFlightType(1); f.setTraveler(1);
		 * f.setFlightClass("2");
		 * 
		 * 
		 * 
		 * m.addAttribute("flightList",
		 * fservice.findAllBook(f.getDestination(),f.getDestinationTwo(),f.getDeparture(
		 * ))); return "BookFlightlist"; }
		 * 
		 */


	@RequestMapping(value = "/adminflightList")
	public String adminflightlist(Model m) {

		m.addAttribute("flightList", fservice.findAll());
		return "AdminflightList";
	}

	@RequestMapping(value = "/user/del")
	public String flightListDelete(@RequestParam("fid") Integer flightId) {

		fservice.delete(flightId);
		return "redirect:/adminflightList?act=del";
	}

	@RequestMapping(value = "/user/cancel")
	public String userlae(@RequestParam("fid") Integer flightId) {

		fservice.delete(flightId);
		return "redirect:/flightList?act=del";
	}

	@RequestMapping(value = "/user/update")
	public String flightListUpdate(Model m, HttpSession session, @RequestParam("fid") Integer flightId) {
		session.setAttribute("upflightId", flightId);
		flight f = fservice.findById(flightId);
		m.addAttribute("command", f);
		return "flightForm";
	}

	@RequestMapping(value = "/Book/flights")
	public String BookFlights( @ModelAttribute("command") flight f, Model m, HttpSession session) {
		
	

		try {
			Integer userId = (Integer) session.getAttribute("userId");
			f.setUserId(userId);
			f.setFlightStatus(1);
			fservice.save(f);
			return "redirect:/modes?act=saved";
		} catch (Exception e) {

			e.printStackTrace();
			m.addAttribute("err", "failed to save flights details");
			return "flightForm";
		}

	}
	
	@RequestMapping(value= {"/modes"})
	public String modeOfPayment() {
		return "Mode";
	
	}


	@RequestMapping(value = "/user/book")
	public String flightListBook(Model m, HttpSession session, @RequestParam("fid") Integer flightId) {
		session.setAttribute("upflightId", flightId);
		flight f = fservice.findById(flightId);

		m.addAttribute("command", f);

		return "bookForm";
	}

	/*
	 * @RequestMapping(value = "/flights") public String
	 * saveFlightsOrUpadate(@Valid @ModelAttribute("command") flight f,
	 * BindingResult result, Model m, HttpSession session) { if (result.hasErrors())
	 * {
	 * 
	 * return "flightForm"; }
	 * 
	 * Integer flightId = (Integer) session.getAttribute("upflightId"); if (flightId
	 * == null) {
	 * 
	 * try { Integer userId = (Integer) session.getAttribute("userId");
	 * f.setUserId(userId); fservice.save(f); return
	 * "redirect:/adminflightList?act=saved"; } catch (Exception e) {
	 * 
	 * e.printStackTrace(); m.addAttribute("err", "failed to save flights details");
	 * return "flightForm"; } }
	 * 
	 * else {
	 * 
	 * try { f.setFlightId(flightId); fservice.update(f); return
	 * "redirect:/adminflightList?act=up"; } catch (Exception e) {
	 * 
	 * e.printStackTrace(); m.addAttribute("err", "failed to  flights details");
	 * return "flightForm"; } } }
	 */
	@RequestMapping(value= "/flights")
	public String saveFlightsOrUpadate(@Valid @ModelAttribute("command") flight f, BindingResult result,Model m,HttpSession session) {
		if(result.hasErrors()) {
			return "flightForm";
		}
		Integer flightId=(Integer)session.getAttribute("upflightId");
		if(flightId==null) {
		
		
		try {
			Integer userId=(Integer)session.getAttribute("userId");
			f.setUserId(userId);
			f.setFlightClass(null);
			f.setFreturn(null);
			f.setFlightType(null);
			f.setTraveler(null);

		fservice.save(f);
		return  "redirect:/adminflightList?act=saved";
	}
		catch( Exception e) {
			
			e.printStackTrace();
			m.addAttribute("err", "failed to save flights details");
			return "flightForm";
			}
		}
	
	else {
		
		try {
			f.setFlightId(flightId);
			fservice.update(f);
			return  "redirect:/adminflightList?act=up";
		}
			catch( Exception e) {
				
				e.printStackTrace();
				m.addAttribute("err", "failed to  flights details");
				return "flightForm";
				}
	}
	}}