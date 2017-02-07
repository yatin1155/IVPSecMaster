using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for EquityPOCO
/// </summary>
namespace RestService
{
    public class EquityPOCO
    {
        public EquityPOCO()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public int Equity_Id { get; set; } // int, not null
        public string Security_Name { get; set; } // nvarchar(50), not null
        public string Security_Description { get; set; } // nvarchar(50), not null
        public bool Has_Position { get; set; } // bit, not null
        public bool Is_Active { get; set; } // bit, not null
        public decimal Round_Lot_Size { get; set; } // decimal(20,10), not null
        public string Bloomberg_Unique_Name { get; set; } // nvarchar(50), not null
        public string CUSIP { get; set; } // nchar(10), null
        public string ISIN { get; set; } // nvarchar(50), null
        public string SEDOL { get; set; } // nvarchar(50), null
        public string Bloomberg_Ticker { get; set; } // nvarchar(50), not null
        public string Bloomberg_Unique_ID { get; set; } // nvarchar(50), not null
        public string Bloomberg_Global_ID { get; set; } // nvarchar(50), null
        public string Bloomberg_Ticker_And_Exchange { get; set; } // nvarchar(50), not null
        public bool Is_ADR { get; set; } // bit, not null
        public string ADR_Underlying_Ticker { get; set; } // nvarchar(50), null
        public string ADR_Underlying_Currency { get; set; } // nvarchar(50), null
        public string Shares_Per_ADR { get; set; } // nvarchar(50), null
        public DateTime? IPO_Date { get; set; } // date, null
        public string Pricing_Currency { get; set; } // nvarchar(50), not null
        public int Settle_Days { get; set; } // int, not null
        public decimal? Total_Shares_Outstanding { get; set; } // decimal(20,10), null
        public decimal Voting_Rights_Per_Share { get; set; } // decimal(20,10), not null
        public decimal Average_Volume_20Day { get; set; } // decimal(20,10), not null
        public decimal Beta { get; set; } // decimal(20,10), not null
        public decimal Short_Interest { get; set; } // decimal(20,10), not null
        public decimal YTD_Return { get; set; } // decimal(20,10), not null
        public decimal? Price_Volatility_90Day { get; set; } // decimal(20,10), null
        public string Form_PF_Asset_Class { get; set; } // nvarchar(50), not null
        public string Form_PF_Country { get; set; } // nvarchar(50), not null
        public string Form_PF_Credit_Rating { get; set; } // nvarchar(50), not null
        public string Form_PF_Currency { get; set; } // nvarchar(50), not null
        public string Form_PF_Instrument { get; set; } // nvarchar(50), not null
        public string Form_PF_Liquidity_Profile { get; set; } // nvarchar(50), not null
        public string Form_PF_Maturity { get; set; } // nvarchar(50), null
        public string Form_PF_NAICS_Code { get; set; } // nvarchar(50), null
        public string Form_PF_Region { get; set; } // nvarchar(50), not null
        public string Form_PF_Sector { get; set; } // nvarchar(50), null
        public string Form_PF_Sub_Asset_Class { get; set; } // nvarchar(50), not null
        public string Issue_Country { get; set; } // nvarchar(50), not null
        public string Exchange { get; set; } // nvarchar(50), not null
        public string Issuer { get; set; } // nvarchar(50), not null
        public string Issue_Currency { get; set; } // nchar(3), not null
        public string Trading_Currency { get; set; } // nchar(3), not null
        public string Bloomberg_Industry_Sub_Group { get; set; } // nvarchar(50), not null
        public string Bloomberg_Industry_Group { get; set; } // nvarchar(50), not null
        public string Bloomberg_Industry_Sector { get; set; } // nvarchar(50), not null
        public string Country_Of_Incorporation { get; set; } // nvarchar(50), not null
        public string Risk_Currency { get; set; } // nchar(3), not null
        public decimal Open_Price { get; set; } // decimal(20,10), not null
        public decimal Close_Price { get; set; } // decimal(20,10), not null
        public decimal Volume { get; set; } // decimal(20,10), not null
        public decimal Last_Price { get; set; } // decimal(20,10), not null
        public decimal Ask_Price { get; set; } // decimal(20,10), not null
        public decimal Bid_Price { get; set; } // decimal(20,10), not null
        public decimal PE_Ratio { get; set; } // decimal(20,10), not null
        public DateTime Declared_Date { get; set; } // date, not null
        public DateTime Ex_Date { get; set; } // date, not null
        public DateTime Record_Date { get; set; } // date, not null
        public DateTime Pay_Date { get; set; } // date, not null
        public decimal Dividend_Amount { get; set; } // decimal(20,10), not null
        public string Frequency { get; set; } // nvarchar(50), null
        public string Dividend_Type { get; set; } // nvarchar(50), not null

    }
}