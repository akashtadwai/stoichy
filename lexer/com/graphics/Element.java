package com.graphics;
import java.util.Scanner;
import java.util.*;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;
import java.util.ArrayList;

public class Element
{
	private int charge;
	private double mass;
	private int electrons;
	public Element(double mass, int charge, int electrons)
	{
		this.mass = mass;
		this.charge = charge;
		this.electrons = electrons;
	}

	public double mass()
	{
		return mass;
	}

	public int charge()
	{
		return charge;
	}

	public int electrons()
	{
		return electrons;
	}

	
}
