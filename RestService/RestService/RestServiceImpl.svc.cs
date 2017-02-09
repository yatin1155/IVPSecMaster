using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Newtonsoft.Json;
using System.ComponentModel;
using System.Web.Script.Serialization;
using Newtonsoft.Json.Linq;
  

namespace RestService
{
    public class RestServiceImpl : IRestServiceImpl
    {
        BondPOCO bondPOCO = new BondPOCO();
        EquityPOCO equityPOCO = new EquityPOCO();
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

        public string UpsertEquity(string data)
        {
            
            //Console.WriteLine("Service has been called " + data);
            //List<SM_EQUITY> UserList = JsonConvert.DeserializeObject<List<SM_EQUITY>>(data);
            //ToDataTable(UserList);

            JavaScriptSerializer json_serializer = new JavaScriptSerializer();
            SM_EQUITY routes_list = (SM_EQUITY)json_serializer.DeserializeObject(data);
            using (var dbCtx = new Group4Entities())
            {
                dbCtx.AddToSM_EQUITY(routes_list);

                // call SaveChanges method to save student into database
                dbCtx.SaveChanges();
            }
            return "Success asshole" ;
        }


        //public static DataTable ToDataTable<T>(this IList<T> data)
        //{
        //    PropertyDescriptorCollection props =
        //    TypeDescriptor.GetProperties(typeof(T));
        //    DataTable table = new DataTable();
        //    for (int i = 0; i < props.Count; i++)
        //    {
        //        PropertyDescriptor prop = props[i];
        //        table.Columns.Add(prop.Name, prop.PropertyType);
        //    }
        //    object[] values = new object[props.Count];
        //    foreach (T item in data)
        //    {
        //        for (int i = 0; i < values.Length; i++)
        //        {
        //            values[i] = props[i].GetValue(item);
        //        }
        //        table.Rows.Add(values);
        //    }
        //    return table;
        //}
        #endregion
    }
}