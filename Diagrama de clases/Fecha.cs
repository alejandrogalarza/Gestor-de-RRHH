///////////////////////////////////////////////////////////
//  Fecha.cs
//  Implementation of the Class Fecha
//  Generated by Enterprise Architect
//  Created on:      22-may.-2020 17:37:55
//  Original author: Haskell
///////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;



public class Fecha {

	private int A�o;
	private int Dia;
	private int Mes;
	public Personal m_Personal;
	public Necesidad m_Necesidad;

	public Fecha(){

	}

	~Fecha(){

	}

	public int A�o{
		get{
			return A�o;
		}
		set{
			A�o = value;
		}
	}

	public int Dia{
		get{
			return Dia;
		}
		set{
			Dia = value;
		}
	}

	public int Mes{
		get{
			return Mes;
		}
		set{
			Mes = value;
		}
	}

}//end Fecha