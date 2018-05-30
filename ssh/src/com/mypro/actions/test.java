package com.mypro.actions;

public class test {

	public static void main(String[] args) {
		int total=0;
		int xiang=500;
		int geshuxiang=6;
		int kouyun=5;
		int pei=10;
		int huai=0;
		while(total!=1350){
			huai++;
			total=(xiang*geshuxiang/10)*5-huai*(kouyun+pei);
		}
		System.out.println(huai);
		

	}

}
