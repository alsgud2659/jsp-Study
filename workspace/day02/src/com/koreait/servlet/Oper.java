package com.koreait.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.calc.Calc;

/**
 * Servlet implementation class Oper
 */
@WebServlet("/Oper")
public class Oper extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Oper() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//사용자가 입력한 값(수식)
		String input = request.getParameter("input");
		//연산자 문자열
		String opers = "+*/-";
		//두 정수를 담을 배열
		String[] nums = null;
		//결과 메세지
		String resultMsg = null;
		//연산 결과 값
		int result = 0;
		int index = 0;
		Calc c = null;
		char oper = ' ';
		
		//연산자 개수만큼 반복
		for (int i = 0;  i < opers.length(); i++) {
			//수식에 해당 연산자가 없다면 다음 반복
			if(input.indexOf(opers.charAt(i)) == -1) {
				continue;
			}
			//연산자를 찾았다면 oper에 저장
			oper = opers.charAt(i);
			//연산자를 oper에 저장 후 반복문 종료(다른 연산자로 하여금 혼란을 막기 위함!)
			break;
		}
		out.print("<p>");
		
		//찾은 연산자를 기준으로 앞과 뒤의 두 정수를 분리하여 nums배열에 담아준다.
		nums = input.split("\\" + oper);
		try {
			//만약 -(음수)로 시작하고 개수가 3개라면
			//음수끼리의 사칙연산이므로
			if(input.charAt(0) == '-' && nums.length == 3) {
				//0번째 방에는 ""이 들어가 있다. 
				index++; //인덱스 번호를 한 개 건너 뛰어 준다.
				//첫번째 정수인 음수가 양수로 처리되기 때문에, -1을 곱하여 음수로 바꿔준다.
				//예)"-1-2".split("\\-") --> "", "1", "2"
				nums[index] = Integer.parseInt(nums[index]) * -1 + "";
			}else if(nums.length != 2){ //정수의 개수가 2개가 아닐 때
				resultMsg = "잘못된 수식입니다. 두 정수의 연산만 가능합니다.";
			}
			c = new Calc(nums[index++], nums[index++]);
			
			switch(oper) {
			case '+':
				result = c.add();
				break;
			case '-':
				result = c.sub();
				break;
			case '*':
				result = c.mul();
				break;
			case '/':
				try {
					result = c.div();
				} catch (Exception e) {
					resultMsg = "0으로 나눌 수 없습니다.";
				}
				break;
			}
		} catch (Exception e) {
			resultMsg = "잘못된 수식입니다. 두 정수의 연산만 가능합니다.";
		}
		
		if(resultMsg == null) {
			resultMsg = result + "";
		}
		out.print(resultMsg);
		out.print("</p>");
		out.print("<a href='calc'>다시 계산하기</a>");
		out.close();
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
