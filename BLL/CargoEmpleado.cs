///////////////////////////////////////////////////////////
//  CargoEmpleado.cs
//  Implementation of the Class CargoEmpleado
//  Generated by Enterprise Architect
//  Created on:      22-may.-2020 17:37:54
//  Original author: Haskell
///////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;



public class CargoEmpleado : ClaseGenerica {

	private List<Permiso> _permisos = new List<Permiso>();

	public List<Permiso> Permisos
	{
		get
		{
			return _permisos;
		}
		set
		{
			_permisos = value;
		}
	}

}//end CargoEmpleado