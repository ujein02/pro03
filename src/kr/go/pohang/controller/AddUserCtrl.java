package kr.go.pohang.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.pohang.dto.UserDTO;
import kr.go.pohang.model.UserDAO;
import kr.go.pohang.service.AES256;



@WebServlet("/AddUserCtrl.do")
public class AddUserCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		//id, pw, name, birth, email, tel, address
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String addr1 = request.getParameter("address1");
		String addr2 = request.getParameter("address2");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String birth = request.getParameter("birth");
        
		boolean result = false;
		System.out.println("입력된 아이디 : "+id);
		int cnt = 0, suc = 0;
		UserDAO dao = new UserDAO();
		cnt = dao.idCheckPro(id);
		
		UserDTO user = new UserDTO();
        String key = "%02x";
        String encrypted = "";
        try {
			encrypted = AES256.encryptAES256(pw, key);
			System.out.println("비밀번호 암호화 : "+encrypted);
		} catch (Exception e) {
			e.printStackTrace();
		} 
        
		if(cnt>=1){	//이미 있는 아이디임
			result = false;
			response.sendRedirect("./user/join.jsp?qid="+id);
		} else { //없는 아이디인 경우 회원 가입
			result = true;
			user.setId(id);
			user.setPw(encrypted);
			user.setName(name);
			user.setAddress(addr1 + "<br>" +addr2);
			user.setTel(tel);
			user.setEmail(email);
			user.setBirth(birth);
			suc = dao.addUser(user);
			if(suc>=1){
				response.sendRedirect(request.getContextPath());
			} else {
				response.sendRedirect("./user/join.jsp?qid="+id);
			}
		}
	}
}