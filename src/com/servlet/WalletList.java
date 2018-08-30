package com.servlet;


import java.io.IOException;
import java.math.BigDecimal;
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
import com.trade.UserDetail;
import com.trade.Wallet;

@WebServlet("/walletlist")
public class WalletList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	double amount=0.0;
	BigDecimal netamount=new BigDecimal(0.0);
	String buttonType;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		WalletCRUD walletcrud=new WalletCRUD();
		String userId= (String) session.getAttribute("userid");
		List<Wallet> walletList=walletcrud.getWalletInfo(userId);
		request.setAttribute("walletList", walletList);
	
		// request.setAttribute("submitval", buttonType);
		RequestDispatcher rd=request.getRequestDispatcher("/wallet.jsp");
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		String userId= (String) session.getAttribute("userid");
		BigDecimal amountAdded=new BigDecimal(request.getParameter("myField"));
		String type=(request.getParameter("type"));

		UserDetail userDetail=new UserDetail();
		userDetail.setUserId(userId);

		if(type.equals("deposit")) {
			 userDetail.setWalletBalance(userDetail.getWalletBalance().add(amountAdded));
		}else {
			 if(netamount.compareTo(userDetail.getWalletBalance())==1)
				 userDetail.setWalletBalance(userDetail.getWalletBalance().subtract(amountAdded));
		}
		
		
		
		
		
//		
//		System.out.println("check  "+request.getParameter("submitval"));
//	
//		if(request.getParameter("submitval")!=null) {
//			 buttonType=request.getParameter("submitval");
//			 System.out.println("submit type " +buttonType);
//			 request.setAttribute("submitval", buttonType);
////			 RequestDispatcher rd=request.getRequestDispatcher("/amount.jsp");
////				rd.include(request, response);
//			
//		}
//		if(request.getParameter("amount")!=null) {
//		 amount=Double.parseDouble(request.getParameter("amount"));
//		 netamount = new BigDecimal(request.getParameter("netamount"));
//		 System.out.println(amount + " first!!"+buttonType);
//		 request.setAttribute("amount", amount);
//		 request.setAttribute("netamount", netamount);
//
//		 if(buttonType.equals("withdraw")) {
//			 if(netamount.compareTo(userDetail.getWalletBalance())==1)
//				 userDetail.setWalletBalance(userDetail.getWalletBalance().subtract(netamount));
//		 }
//		 System.out.println(amount + " second!!");
////		 RequestDispatcher rd=request.getRequestDispatcher("/card.jsp");
////			rd.include(request, response);
//			System.out.println(amount + " third!!");
//		}
//		
//		 if(request.getParameter("amount")==null &&request.getParameter("submitval")==null) {
////			 UserDetailDAO userDetail=new UserDetailDAO();
//			 if(buttonType.equals("deposit"))
//				 userDetail.setWalletBalance(userDetail.getWalletBalance().add(netamount));
//			 System.out.println(amount + " fourth!!");
//			 
//		 }
		 
		 
		
		
		
		//doGet(request, response);
	}

}

