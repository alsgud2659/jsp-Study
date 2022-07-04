package com.koreait.calc;

public class Calc {
	public int num1;
	public int num2;
	
	public Calc() {;}

	public Calc(int num1, int num2) {
		super();
		this.num1 = num1;
		this.num2 = num2;
	}
	
	/**
	 * @throws NumberFormatException 
	 */
	public Calc(String num1, String num2) {
		super();
		this.num1 = Integer.parseInt(num1);
		this.num2 = Integer.parseInt(num2);
	}
	
	public int add() {return num1 + num2;}
	public int sub() {return num1 - num2;}
	public int mul() {return num1 * num2;}
	/**
	 * @throws ArithmeticException
	 */
	public int div() {return num1 / num2;}
}
