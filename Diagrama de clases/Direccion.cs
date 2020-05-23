///////////////////////////////////////////////////////////
//  Direccion.cs
//  Implementation of the Class Direccion
//  Generated by Enterprise Architect
//  Created on:      22-may.-2020 17:37:54
//  Original author: Haskell
///////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;



public class Direccion {

	private Barrio Barrio;
	private char Calle;
	private Localidad Localidad;
	private int Numero;
	private Provincia Provincia;
	public Personal m_Personal;
	public TipoDireccion m_TipoDireccion;

	public Direccion(){

	}

	~Direccion(){

	}

	public char Calle{
		get{
			return Calle;
		}
		set{
			Calle = value;
		}
	}

	public int Numero{
		get{
			return Numero;
		}
		set{
			Numero = value;
		}
	}

}//end Direccion