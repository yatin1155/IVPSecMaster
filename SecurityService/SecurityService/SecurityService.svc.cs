using System;
using System.ServiceModel;
using System.Text;
using System.IO;
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
using System.ServiceModel.Activation;



namespace SecurityService

{
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class SecurityService : ISecurityService
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
        public String testPOST(String JsonString)
        {
            //check for jsonstring
            Console.WriteLine(JsonString);
            return "Post Service Called Successfully";
        }



        public string UpsertEquity(string data)
        {
            try
            {
                return insertDinctionaryIntoTables(data, "[SM_EQUITYInsert]");
            }
            catch (Exception exc)
            {
                return exc.Message + data;
            }
        }
        public string UpsertBond(string data)
        {
            try
            {
                return insertDinctionaryIntoTables(data, "[SM_BONDInsert]");
            }
            catch (Exception exc)
            {
                return exc.Message + data;
            }
        }



        public string insertDinctionaryIntoTables(string data, string procedure) 
        {
            try
            {
                JObject jsonObj = JObject.Parse(data);
                Dictionary<string, string> dictObj = jsonObj.ToObject<Dictionary<string, string>>();

                string dbConn = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
                using (SqlConnection con = new SqlConnection(dbConn))
                {
                    using (SqlCommand cmd = new SqlCommand(procedure, con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        foreach (string entry in dictObj.Keys)
                        {
                            string key = entry;
                            dynamic value = dictObj[entry];
                            // Dictionary<string, string> securityNames = new Dictionary<string, string>();
                            cmd.Parameters.AddWithValue(entry, value);
                        }
                        con.Open();
                        int k = cmd.ExecuteNonQuery();
                        if (k != 0)
                        {
                            con.Close();
                            return "records added successfully";
                        }
                        else
                        {
                            con.Close();
                            return "unable to add records";
                        }

                    }
                }
            }
            catch (Exception)
            {
                
                throw;
            }

        }



        public string GetSingleEquity(string id)
        {
            DataTable dt = new DataTable();
            string dbConn = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            using (SqlConnection con = new SqlConnection(dbConn))
            {
                string query = "";
                //selecting data according id
                query = "select * from SM_EQUITY where equity_id="+id;
                //End
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    con.Close();
                    return JsonConvert.SerializeObject(dt, Formatting.Indented);
                }
            }
        }

        public string GetSingleBond(string id)
        {
            DataTable dt = new DataTable();
            string dbConn = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            using (SqlConnection con = new SqlConnection(dbConn))
            {
                string query = "";
                //selecting data according id
                query = "select * from SM_BOND where bond_id=" + id;
                //End
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    con.Close();
                    return JsonConvert.SerializeObject(dt, Formatting.Indented);
                }
            }
        }



       
        //update methoda
        public string updateEquity(string data)
        {
            try
            {
                return insertDinctionaryIntoTables(data, "[SM_EQUITYUpdate]");
            }
            catch (Exception exc)
            {
                return exc.Message + data;
            }
        }
        public string updateBond(string data)
        {
            try
            {
                return insertDinctionaryIntoTables(data, "[SM_BONDUpdate]");
            }
            catch (Exception exc)
            {
                return exc.Message + data;
            }
        }






        public String DeleteEquity(String id)
        {

            return DeleteRecords("SM_EQUITY", id, "EQ_Id");

        }

        public String DeleteBond(String id)
        {
            return DeleteRecords("SM_BOND", id, "Bond_Id");

        }
        public string DeleteRecords(string procedure,string id,string columnName)
        {
            string query = "Update "+procedure+" set Is_Deleted = 1 where "+columnName +"= "+id;
            string dbConn = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
            try
            {
               
                using (SqlConnection con = new SqlConnection(dbConn))
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        con.Open();
                        if (cmd.ExecuteNonQuery() == 1)
                        {
                            
                            return "Security deleted successfully";
                        }
                        else
                        {
                            return "Unable to delete records";
                        }
                    }
                }



            }
            catch (Exception)
            {

                throw;
            }
        }
   
        #endregion
    }

    
}
