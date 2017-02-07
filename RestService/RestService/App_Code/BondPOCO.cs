using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RestService
{
    class BondPOCO
    {
        public int Bond_Id { get; set; } // int, not null
        public string Security_Description { get; set; } // nvarchar(100), not null
        public string Security_Name { get; set; } // nvarchar(100), not null
        public string Asset_Type { get; set; } // nvarchar(100), not null
        public decimal Trading_Factor { get; set; } // decimal(20,10), not null
        public decimal Pricing_Factor { get; set; } // decimal(20,10), not null
        public string ISIN { get; set; } // nvarchar(50), not null
        public string BBG_Ticker { get; set; } // nvarchar(50), not null
        public string BBG_Unique_ID { get; set; } // nvarchar(50), not null
        public string CUSIP { get; set; } // nvarchar(50), not null
        public string SEDOL { get; set; } // nvarchar(50), not null
        public DateTime First_Coupon_Date { get; set; } // date, not null
        public string Cap { get; set; } // nvarchar(50), null
        public string Floor { get; set; } // nvarchar(50), null
        public int Coupon_Frequency { get; set; } // int, not null
        public decimal Coupon { get; set; } // decimal(20,10), not null
        public string Coupon_Type { get; set; } // nvarchar(50), not null
        public string Spread { get; set; } // nvarchar(50), null
        public bool Callable_Flag { get; set; } // bit, not null
        public bool Fix_To_Float_Flag { get; set; } // bit, not null
        public bool Putable_Flag { get; set; } // bit, not null
        public DateTime Issue_Date { get; set; } // date, not null
        public DateTime? Last_Reset_Date { get; set; } // date, null
        public DateTime Maturity { get; set; } // date, not null
        public decimal Call_Notification_Max_Days { get; set; } // decimal(20,10), not null
        public int? Put_Notification_Max_Days { get; set; } // int, null
        public DateTime Penultimate_Coupon_Date { get; set; } // date, not null
        public string Reset_Frequency { get; set; } // nvarchar(50), null
        public bool Has_Position { get; set; } // bit, not null
        public decimal Macaulay_Duration { get; set; } // decimal(20,10), not null
        public decimal? _30D_Volatility { get; set; } // decimal(20,10), null
        public decimal? _90D_Volatility { get; set; } // decimal(20,10), null
        public decimal Convexity { get; set; } // decimal(20,10), not null
        public decimal? _30Day_Average_Volume { get; set; } // decimal(20,10), null
        public string PF_Asset_Class { get; set; } // nvarchar(50), not null
        public string PF_Country { get; set; } // nvarchar(50), not null
        public string PF_Credit_Rating { get; set; } // nvarchar(50), not null
        public string PF_Currency { get; set; } // nvarchar(50), not null
        public string PF_Instrument { get; set; } // nvarchar(50), not null
        public string PF_Liquidity_Profile { get; set; } // nvarchar(50), not null
        public string PF_Maturity { get; set; } // nvarchar(50), null
        public string PF_NAICS_Code { get; set; } // nvarchar(50), null
        public string PF_Region { get; set; } // nvarchar(50), not null
        public string PF_Sector { get; set; } // nvarchar(50), null
        public string PF_Sub_Asset_Class { get; set; } // nvarchar(100), not null
        public string Bloomberg_Industry_Group { get; set; } // nvarchar(50), not null
        public string Bloomberg_Industry_Sub_Group { get; set; } // nvarchar(50), not null
        public string Bloomberg_Industry_Sector { get; set; } // nvarchar(50), not null
        public string Country_of_Issuance { get; set; } // nvarchar(50), not null
        public string Issue_Currency { get; set; } // nvarchar(50), not null
        public string Issuer { get; set; } // nvarchar(50), not null
        public string Risk_Currency { get; set; } // nvarchar(50), not null
        public DateTime? Put_Date { get; set; } // date, null
        public decimal? Put_Price { get; set; } // decimal(20,10), null
        public decimal Ask_Price { get; set; } // decimal(20,10), not null
        public decimal High_Price { get; set; } // decimal(20,10), not null
        public decimal Low_Price { get; set; } // decimal(20,10), not null
        public decimal Open_Price { get; set; } // decimal(20,10), not null
        public decimal Volume { get; set; } // decimal(20,10), not null
        public decimal Bid_Price { get; set; } // decimal(20,10), not null
        public decimal Last_Price { get; set; } // decimal(20,10), not null
        public DateTime? Call_Date { get; set; } // date, null
        public decimal? Call_Price { get; set; } // decimal(20,10), null

    }
}
