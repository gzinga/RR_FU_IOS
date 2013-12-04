using System;
using System.Collections;
using System.Xml;
using System.IO;
using MonoTouch.Foundation;
using MonoTouch.UIKit;

namespace FUCounter_App
{

	[Serializable]
	public class GroupData
	{
		public int group{ get; set;}
		public ArrayList _allRecords{ get; set;}
		public int[] FA{ get; set;}
		public int[] FT{ get; set;}
		public double totalTX{ get; set;}
		public double totalDX{ get; set;}
		public int totalHair{ get; set;}
		public int totalTXHair{ get; set;}
		public bool Active{ get; set;}

		public GroupData(){
		}

		public GroupData(int _group)
		{
			group = _group;
			_allRecords = new ArrayList ();
			FA = new int[4];
			FT = new int[4];
			totalTX = 0;
			totalDX = 0;
			totalHair = 0;
			totalTXHair = 0;
			Active = false;
		}

		private void ComputeInternalStatistics()
		{
			// calculates total dx and tx
			totalHair = FT [0] + 2*FT [1] + 3*FT [2] + 4*FT [3];
			totalTX = (double)totalTXHair / (double)totalHair;
			totalTX *= 100;
		}

		public void AddRecordTop(GraftRecord rec)
		{
			if (rec.HairCount == 0 || rec.TerminalHairCount == 0) {
				new UIAlertView("Improper Entry", "Hair Count and/or Terminal Hair Count cannot be 0", null, "OK", null).Show();
				return;
			}
			_allRecords.Add(rec);
			// calculates FUs
			totalTXHair += rec.TxdTerminalHairCount;
			FA [rec.HairCount-1]++;
			FT [rec.TerminalHairCount-1]++;
			ComputeInternalStatistics ();

		}

		public void InsertRecord (int position, GraftRecord rec)
		{
			if (rec.HairCount == 0 || rec.TerminalHairCount == 0) {
				new UIAlertView("Improper Entry", "Hair Count and/or Terminal Hair Count cannot be 0", null, "OK", null).Show();
				return;
			}
			_allRecords.Insert (position, rec);
			_allRecords.RemoveAt (position + 1);
			// it now has to recompute all hair count
			FT [0] = FT [1] = FT [2] = FT [3] = totalTXHair = 0;
			totalDX = 0.0;
			foreach (object record in _allRecords) 
			{
				FA [((GraftRecord)record).HairCount - 1]++;
				FA [((GraftRecord)record).TerminalHairCount - 1]++;
				totalTXHair += ((GraftRecord)record).TxdTerminalHairCount;
				if (((GraftRecord)record).Discard == true)
					totalDX++;
			}
			ComputeInternalStatistics ();
		}

	}


	[Serializable]
	public class CaseCount
	{
		public string Notes{ get; set;}
		public DateTime Date{ get; set;}
		public int[] TFA{ get; set;}
		public int[] TFT{ get; set;}
		public ArrayList AllGroups{ get; set;}
		public double totalTX{ get; set;}
		public double totalDX{ get; set;}
		public int totalHair{ get; set;}
		public int totalTXHair{ get; set;}
		public string PatientID { get; set;}
		public string TechID { get; set;}
		public int TotalNumberOfGrafts{ get; set;}
		public ArrayList _allRecords{ get; set;}

		public CaseCount(){
		}
		public CaseCount (DateTime date, String patientID)
		{
			TFA = new int[4];
			TFT = new int[4];
			AllGroups = new ArrayList ();
			Date = date;
			Notes = "";
			PatientID = patientID;
			totalTX = 0;
			totalDX = 0;
			totalHair = 0;
			totalTXHair = 0;
			for (int i=0;i<12;i++)
				AllGroups.Add (new GroupData (i));
			TechID = "";
			TotalNumberOfGrafts = 0;
			_allRecords = new ArrayList ();
		}

		private void ComputeInternalStatistics(ref GraftRecord rec)
		{
			totalDX = 0;
			totalHair = 0;
			totalTXHair = 0;
			// calculates FUs
			TFA[rec.HairCount-1]++;
			TFT[rec.TerminalHairCount-1]++;
			foreach (object obj in AllGroups) 
			{
				GroupData group = (GroupData)obj;
				totalHair += group.totalHair;
				totalTXHair += group.totalTXHair;
				totalDX += group.totalDX;
			}
			totalTX = (double)totalTXHair / (double)totalHair;
			totalTX *= 100;
			TotalNumberOfGrafts++;

		}
	
		public void AddRecordTop(GraftRecord rec)
		{
			if (rec.HairCount == 0 || rec.TerminalHairCount == 0) {
				new UIAlertView("Improper Entry", "Hair Count and/or Terminal Hair Count cannot be 0", null, "OK", null).Show();
				return;
			}
			((GroupData)AllGroups[rec.GroupNumber-1]).Active = true;
			//insert the record
			((GroupData)AllGroups[rec.GroupNumber-1]).AddRecordTop (rec);
		
			ComputeInternalStatistics (ref rec);

			int allrecCounts = ((GroupData)AllGroups [rec.GroupNumber - 1])._allRecords.Count;
			_allRecords.Add(((GroupData)AllGroups[rec.GroupNumber-1])._allRecords[allrecCounts-1]);
		}

		public void InsertRecord (int position, GraftRecord rec)
		{
			if (rec.HairCount == 0 || rec.TerminalHairCount == 0) {
				new UIAlertView("Improper Entry", "Hair Count and/or Terminal Hair Count cannot be 0", null, "OK", null).Show();
				return;
			}
			((GroupData)AllGroups[rec.GroupNumber-1]).InsertRecord(position,rec);
			ComputeInternalStatistics (ref rec);

		}

		public int GetNumRecords()
		{
			int sum = 0;
			foreach (object obj in AllGroups)
			{
				sum += ((GroupData)obj)._allRecords.Count;
			}
			return sum;
		}
	}
}

