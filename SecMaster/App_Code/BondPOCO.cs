using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BondPOCO
/// </summary>
namespace RestService
{
    public class BondPOCO
    {
        public BondPOCO()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public int Bond_Id { get; set; }
        public string Security_Description { get; set; }
        public string Security_Name { get; set; }
        public string Asset_Type { get; set; }
        public decimal Trading_Factor { get; set; }
        public decimal Pricing_Factor { get; set; }
        public string ISIN { get; set; }
        public string BBG_Ticker { get; set; }
        public string BBG_Unique_ID { get; set; }
        public string CUSIP { get; set; }
        public string SEDOL { get; set; }
        public DateTime First_Coupon_Date { get; set; }
        public string Cap { get; set; }
        public string Floor { get; set; }
        public int Coupon_Frequency { get; set; }
        public decimal Coupon { get; set; }
        public string Coupon_Type { get; set; }
        public string Spread { get; set; }
        public bool Callable_Flag { get; set; }
        public bool Fix_To_Float_Flag { get; set; }
        public bool Putable_Flag { get; set; }
        public DateTime Issue_Date { get; set; }
        public DateTime? Last_Reset_Date { get; set; }
        public DateTime Maturity { get; set; }
        public decimal Call_Notification_Max_Days { get; set; }
        public int? Put_Notification_Max_Days { get; set; }
        public DateTime Penultimate_Coupon_Date { get; set; }
        public string Reset_Frequency { get; set; }
        public bool Has_Position { get; set; }
        public decimal Macaulay_Duration { get; set; }
        public decimal? Volatility_30D { get; set; }
        public decimal? Volatility_90D { get; set; }
        public decimal Convexity { get; set; }
        public decimal? Average_Volume_30D { get; set; }
        public string PF_Asset_Class { get; set; }
        public string PF_Country { get; set; }
        public string PF_Credit_Rating { get; set; }
        public string PF_Currency { get; set; }
        public string PF_Instrument { get; set; }
        public string PF_Liquidity_Profile { get; set; }
        public string PF_Maturity { get; set; }
        public string PF_NAICS_Code { get; set; }
        public string PF_Region { get; set; }
        public string PF_Sector { get; set; }
        public string PF_Sub_Asset_Class { get; set; }
        public string Bloomberg_Industry_Group { get; set; }
        public string Bloomberg_Industry_Sub_Group { get; set; }
        public string Bloomberg_Industry_Sector { get; set; }
        public string Country_of_Issuance { get; set; }
        public string Issue_Currency { get; set; }
        public string Issuer { get; set; }
        public string Risk_Currency { get; set; }
        public DateTime? Put_Date { get; set; }
        public decimal? Put_Price { get; set; }
        public decimal Ask_Price { get; set; }
        public decimal High_Price { get; set; }
        public decimal Low_Price { get; set; }
        public decimal Open_Price { get; set; }
        public decimal Volume { get; set; }
        public decimal Bid_Price { get; set; }
        public decimal Last_Price { get; set; }
        public DateTime? Call_Date { get; set; }
        public decimal? Call_Price { get; set; }


    }
}