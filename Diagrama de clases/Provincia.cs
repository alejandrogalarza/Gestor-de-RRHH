///////////////////////////////////////////////////////////
//  Provincia.cs
//  Implementation of the Class Provincia
//  Generated by Enterprise Architect
//  Created on:      22-may.-2020 17:37:55
//  Original author: Haskell
///////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;



public class Provincia : ClaseGenerica {

	private Localidad Localidad;
	public Localidad m_Localidad;
	public Direccion m_Direccion;

	public Provincia(){

	}

	~Provincia(){

	}

	public Localidad Localidad{
		get{
			return Localidad;
		}
		set{
			Localidad = value;
		}
	}

}//end Provincia