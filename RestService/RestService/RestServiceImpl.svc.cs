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
                    //System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
                    //List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
                    //Dictionary<string, object> row;
                    //foreach (DataRow dr in dt.Rows)
                    //{
                    //    row = new Dictionary<string, object>();
                    //    foreach (DataColumn col in dt.Columns)
                    //    {
                    //        row.Add(col.ColumnName, dr[col]);
                    //    }
                    //    rows.Add(row);
                    //}
                    ////return serializer.Serialize(rows);

                    return JsonConvert.SerializeObject(dt, Formatting.Indented);
                }
            }
        }            
        

        #endregion
    }
}