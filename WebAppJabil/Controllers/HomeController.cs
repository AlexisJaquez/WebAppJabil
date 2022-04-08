using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Core.Objects;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace WebAppJabil.Controllers
{
    public class HomeController : Controller
    {
        
        public ActionResult Index()
        {
            try
            {
                string part = Request["txt"].ToString();

                var busqueda = db.Busqueda(part);
                return View(busqueda.ToList());
            }
            catch
            {
                var busqueda = db.Busqueda("");
                return View(busqueda.ToList());
            }
            //return View();
        }

        private MaterialsEntities db = new MaterialsEntities();

        // GET: Customers


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult About()
        {
            string part = (Request["txtAmount"].ToString());

            var busqueda = db.Busqueda(part);

            return View(busqueda);
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }



    }
}