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

        public int Equity_Id { get; set; }
        public string Security_Name { get; set; }
        public string Security_Description { get; set; }
        public bool Has_Position { get; set; }
        public bool Is_Active { get; set; }
        public decimal Round_Lot_Size { get; set; }
        public string Bloomberg_Unique_Name { get; set; }
        public string CUSIP { get; set; }
        public string ISIN { get; set; }
        public string SEDOL { get; set; }
        public string Bloomberg_Ticker { get; set; }
        public string Bloomberg_Unique_ID { get; set; }
        public string Bloomberg_Global_ID { get; set; }
        public string Bloomberg_Ticker_And_Exchange { get; set; }
        public bool Is_ADR { get; set; }
        public string ADR_Underlying_Ticker { get; set; }
        public string ADR_Underlying_Currency { get; set; }
        public string Shares_Per_ADR { get; set; }
        public DateTime? IPO_Date { get; set; }
        public string Pricing_Currency { get; set; }
        public int Settle_Days { get; set; }
        public decimal? Total_Shares_Outstanding { get; set; }
        public decimal Voting_Rights_Per_Share { get; set; }
        public decimal Average_Volume_20Day { get; set; }
        public decimal Beta { get; set; }
        public decimal Short_Interest { get; set; }
        public decimal YTD_Return { get; set; }
        public decimal? Price_Volatility_90Day { get; set; }
        public string Form_PF_Asset_Class { get; set; }
        public string Form_PF_Country { get; set; }
        public string Form_PF_Credit_Rating { get; set; }
        public string Form_PF_Currency { get; set; }
        public string Form_PF_Instrument { get; set; }
        public string Form_PF_Liquidity_Profile { get; set; }
        public string Form_PF_Maturity { get; set; }
        public string Form_PF_NAICS_Code { get; set; }
        public string Form_PF_Region { get; set; }
        public string Form_PF_Sector { get; set; }
        public string Form_PF_Sub_Asset_Class { get; set; }
        public string Issue_Country { get; set; }
        public string Exchange { get; set; }
        public string Issuer { get; set; }
        public string Issue_Currency { get; set; }
        public string Trading_Currency { get; set; }
        public string Bloomberg_Industry_Sub_Group { get; set; }
        public string Bloomberg_Industry_Group { get; set; }
        public string Bloomberg_Industry_Sector { get; set; }
        public string Country_Of_Incorporation { get; set; }
        public string Risk_Currency { get; set; }
        public decimal Open_Price { get; set; }
        public decimal Close_Price { get; set; }
        public decimal Volume { get; set; }
        public decimal Last_Price { get; set; }
        public decimal Ask_Price { get; set; }
        public decimal Bid_Price { get; set; }
        public decimal PE_Ratio { get; set; }
        public DateTime Declared_Date { get; set; }
        public DateTime Ex_Date { get; set; }
        public DateTime Record_Date { get; set; }
        public DateTime Pay_Date { get; set; }
        public decimal Dividend_Amount { get; set; }
        public string Frequency { get; set; }
        public string Dividend_Type { get; set; }

    }
}