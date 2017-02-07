using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Newtonsoft.Json;
  

namespace RestService
{
    public class RestServiceImpl : IRestServiceImpl
    {
        #region IRestServiceImpl Members
        public string XMLData(string id)
        {
            return "You requested product " + id;
        }

        public string JSONData(string id)
        {
            return "You requested product " + id;
        }

        public string GetJsonResult(string id)
        {
            DataTable dt = new DataTable();
            string dbConn = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            using (SqlConnection con = new SqlConnection(dbConn))
            {
                string query = "";
                //selecting data according id
                if (id.Equals("bond"))
                {
                    query = "select * from SM_BOND";
                }
                else if (id.Equals("equity"))
                {
                    query = "select * from SM_EQUITY";
                }
                //End
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    return JsonConvert.SerializeObject(dt, Formatting.Indented);
                }
            }
        }

        public Boolean UpsertEquity(string data)
        {
            BondPOCO bondPOCO = new BondPOCO();
            EquityPOCO equityPOCO = new EquityPOCO();
            Console.WriteLine("Service has been called " + data);
            return false;
        }
        #endregion
    }
}