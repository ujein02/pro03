package kr.go.pohang.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.pohang.dto.ImpressDTO;
import kr.go.pohang.model.ImpressDAO;


@WebServlet("/AddImpressCtrl.do")
public class AddImpressCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
			//cate, tourno, id, content, star, imgSrc
		String cate = request.getParameter("cate");
		String tourno = request.getParameter("tourno");
		String id = request.getParameter("id");
		String content = request.getParameter("content");
		//double star = Double.parseDouble(request.getParameter("star"));
		String imgSrc = request.getParameter("imgSrc");
				
		ImpressDTO dto = new ImpressDTO();
		dto.setCate(cate);
		dto.setTourno(tourno);
		dto.setId(id);
		dto.setContent(content);
		dto.setImgSrc(imgSrc);
		
		ImpressDAO dao = new ImpressDAO();
		int cnt = dao.addImpress(dto);
		
		if(cnt>=1){
			response.sendRedirect("GetImpressListCtrl.do");
		} else {
			response.sendRedirect("./impress/addImpress.jsp");
		}
	}
}