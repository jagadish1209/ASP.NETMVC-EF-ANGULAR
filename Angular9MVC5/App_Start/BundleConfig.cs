using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;

namespace Angular9MVC5.App_Start
{
    public class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/Script/Bundles").Include(
                       "~/bundles/runtime.*",
                       "~/bundles/ployies.*",
                       "~/bundles/main.*"));
            bundles.Add(new StyleBundle("~/Content/Styles").Include("~/bundles/styles.*"));
            bundles.Add(new ScriptBundle("~/Script/Zone").Include(
                    "~/zone/zone.*"
                ));
        }
    }
}