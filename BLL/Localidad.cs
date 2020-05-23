///////////////////////////////////////////////////////////
//  Localidad.cs
//  Implementation of the Class Localidad
//  Generated by Enterprise Architect
//  Created on:      22-may.-2020 17:37:55
//  Original author: Haskell
///////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;



public class Localidad : ClaseGenerica 
{

	private List<Barrio> _barrios;

	public List<Barrio> Barrios
	{
		get
		{
			return _barrios;
		}
		set
		{
			_barrios = value;
		}
	}

}//end Localidad