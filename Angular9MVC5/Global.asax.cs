using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Http;
using Angular9MVC5.Controllers.Core;
using Angular9MVC5.App_Start;
using System.Web.Optimization;

namespace Angular9MVC5
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            AreaRegistration.RegisterAllAreas();
            GlobalConfiguration.Configure(WebApiConfig.Register);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            // add script and content bundles
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            //load all data
            SystemController.Instance.LoadData();
        }
    }
}