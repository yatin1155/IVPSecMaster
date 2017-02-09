﻿using System.ServiceModel;
using System.ServiceModel.Web;

namespace RestService
{
    
    [ServiceContract]
    public interface IRestServiceImpl
    {
        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Wrapped,
            UriTemplate = "xml/{id}")]
        string XMLData(string id);

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Json,
            BodyStyle = WebMessageBodyStyle.Wrapped,
            UriTemplate = "json/{id}")]
        string GetJsonResult(string id);

        [OperationContract]
        [WebInvoke(Method = "POST",
            ResponseFormat = WebMessageFormat.Json,
            BodyStyle = WebMessageBodyStyle.Wrapped,
            UriTemplate = "json/upsertEquity/{data}")]
        string UpsertEquity(string data);


        //[OperationContract]
        //[WebInvoke(Method = "POST",
        //            RequestFormat = WebMessageFormat.Json,
        //            ResponseFormat = WebMessageFormat.Json,
        //            UriTemplate = "UpsertEquity")]
        //string UpsertEquity(string name);
    }
}