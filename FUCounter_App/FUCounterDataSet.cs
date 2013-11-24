using System;
using System.Xml;
using System.Collections;
using System.IO;

namespace FUCounter_App
{
	/*
	<FUCounter>
	<HairCount>2</HairCount>
	<TxdHairCount>1</TxdHairCount>
	<TerminalHairCount>2</TerminalHairCount>
	<TxdTerminalHairCount>1</TxdTerminalHairCount>
	<Discarded>true</Discarded>
	<GroupNumber>1</GroupNumber>
	</FUCounter>
*/
	[Serializable]
	public class FUCounter
	{
		public FUCounter(){}
		public int HairCount{ get; set;}
		public int TxdHairCount{ get; set;}
		public int TerminalHairCount{ get; set;}
		public int TxdTerminalHairCount{ get; set;}
		public bool Discarded{ get; set;}
		public int GroupNumber{ get; set;}
	}

	[Serializable]
	public class Subject
	{
		public Subject(){}
		public String PatientID{ get; set;}
		public DateTime ProcedureDate{ get; set;}
		public String Protocol{ get; set;}
		public String MicroscopicNotes{ get; set;}
	}

	[Serializable]
	public class FUCounterDataSet
	{
		public FUCounter[] data;
		public Subject Subject;
		public FUCounterDataSet(){
		}
		public FUCounterDataSet (int size)
		{
			data = new FUCounter[size];
			Subject = new Subject ();
		}
	}
}

