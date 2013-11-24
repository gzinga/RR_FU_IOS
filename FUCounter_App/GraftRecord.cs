using System;
using System.Xml;

namespace FUCounter_App
{
	[Serializable]
	public class GraftRecord
	{

		public int HairCount{ get; set;}
		public	int TxdHairCount{ get; set;}
		public	int TerminalHairCount{ get; set;}
		public	int TxdTerminalHairCount{ get; set;}
		public	bool Discard{ get; set;}
		public	int GroupNumber{ get; set;}

		public GraftRecord(){}

		public GraftRecord (int hairCount, int txdHairCount, int terminalHairCount, int txdTerminalHairCount, bool discard, int groupNumber)
		{
			HairCount = hairCount;
			TxdHairCount = txdHairCount;
			TerminalHairCount = terminalHairCount;
			TxdTerminalHairCount = txdTerminalHairCount;
			Discard = discard;
			GroupNumber = groupNumber;
		}
	}
}

