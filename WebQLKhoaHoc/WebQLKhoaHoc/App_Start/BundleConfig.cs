﻿using System.Web;
using System.Web.Optimization;

namespace WebQLKhoaHoc
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            bundles.Add(new ScriptBundle("~/bundles/qlkh").Include(
                "~/Scripts/custom.js",
                "~/Scripts/jquery-ui.min.js",
                "~/Scripts/jquery-plugin-collection.js"
            ));

            bundles.Add(new ScriptBundle("~/bundles/charts").Include(
                "~/Scripts/charts.js"
            ));

            bundles.Add(new ScriptBundle("~/bundles/admin").Include(
                "~/Scripts/app.js",
                "~/Scripts/app_admin.js"
            ));

            bundles.Add(new StyleBundle("~/Content/admincss").Include(
                     "~/Content/bootstrap.css",   
               "~/Content/jquery-ui.min.css",
               "~/Content/custom.css",
               "~/Content/daterangepicker.css"
               ));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/site.css",
                "~/Content/animate.css",
                "~/Content/css-plugin-collections.css",
                "~/Content/custom-bootstrap-margin-padding.css",
                "~/Content/menuzord-rounded-boxed.css",
                "~/Content/reponsive.css",
                "~/Content/style-main.css",
                "~/Content/theme-skin-color-set-1.css",
                "~/Content/utility-classes.css",
                "~/Content/jquery-ui.min.css"
                ));
        }
    }
}
