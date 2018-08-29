package com.servlet;


import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.crud.UserDetailDAO;
import com.crud.WalletCRUD;
import com.trade.Wallet;

@WebServlet("/walletlist")
public class WalletList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	double amount=0.0;
	double netamount=0.0;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		WalletCRUD walletcrud=new WalletCRUD();
		String userId= (String) session.getAttribute("userid");
		List<Wallet> walletList=walletcrud.getWalletInfo(userId);
		request.setAttribute("walletList", walletList);
		RequestDispatcher rd=request.getRequestDispatcher("/wallet.jsp");
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getParameter("amount")!=null) {
		 amount=Double.parseDouble(request.getParameter("amount"));
		 netamount = Double.parseDouble(request.getParameter("netamount"));
		}
		 if(request.getParameter("amount")==null) {
			 UserDetailDAO userDetail=new UserDetailDAO();
			 
		 }
		 
		 
		
		
		
		//doGet(request, response);
	}

}

