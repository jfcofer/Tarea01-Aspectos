package com.mycompany.seccionb;

public class Adaptado implements Target{
	public void request() {
        System.out.println("Adaptado: request");
    }

	public void specificRequest() {
        System.out.println("Adaptado: specificRequest");
    }
    
}
