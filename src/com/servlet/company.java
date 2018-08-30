package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.logic.PrioriryList;
import com.trade.InProgress;

/**
 * Servlet implementation class company
 */
@WebServlet("/company")
public class company extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stock = request.getParameter("stock");
		PrioriryList prioriryList = new PrioriryList();
		List<InProgress> buy= prioriryList.buy(stock);
		List<InProgress> sell=prioriryList.sell(stock);
		request.setAttribute("buy", buy);
		request.setAttribute("sell", sell);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("company.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
