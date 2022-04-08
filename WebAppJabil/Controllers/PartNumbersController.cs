using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebAppJabil;

namespace WebAppJabil.Controllers
{
    public class PartNumbersController : Controller
    {
        private MaterialsEntities db = new MaterialsEntities();

        // GET: PartNumbers
        public ActionResult Index()
        {
            var partNumbers = db.PartNumbers.Include(p => p.Customers);
            return View(partNumbers.ToList());
        }

        // GET: PartNumbers/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PartNumbers partNumbers = db.PartNumbers.Find(id);
            if (partNumbers == null)
            {
                return HttpNotFound();
            }
            return View(partNumbers);
        }

        // GET: PartNumbers/Create
        public ActionResult Create()
        {
            ViewBag.FKCustomers = new SelectList(db.Customers, "PKCustomers", "Customer");
            return View();
        }

        // POST: PartNumbers/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PKPartNumber,PartNumber,FKCustomers,Available")] PartNumbers partNumbers)
        {
            if (ModelState.IsValid)
            {
                db.PartNumbers.Add(partNumbers);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.FKCustomers = new SelectList(db.Customers, "PKCustomers", "Customer", partNumbers.FKCustomers);
            return View(partNumbers);
        }

        // GET: PartNumbers/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PartNumbers partNumbers = db.PartNumbers.Find(id);
            if (partNumbers == null)
            {
                return HttpNotFound();
            }
            ViewBag.FKCustomers = new SelectList(db.Customers, "PKCustomers", "Customer", partNumbers.FKCustomers);
            return View(partNumbers);
        }

        // POST: PartNumbers/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "PKPartNumber,PartNumber,FKCustomers,Available")] PartNumbers partNumbers)
        {
            if (ModelState.IsValid)
            {
                db.Entry(partNumbers).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.FKCustomers = new SelectList(db.Customers, "PKCustomers", "Customer", partNumbers.FKCustomers);
            return View(partNumbers);
        }

        // GET: PartNumbers/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PartNumbers partNumbers = db.PartNumbers.Find(id);
            if (partNumbers == null)
            {
                return HttpNotFound();
            }
            return View(partNumbers);
        }

        // POST: PartNumbers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PartNumbers partNumbers = db.PartNumbers.Find(id);
            db.PartNumbers.Remove(partNumbers);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
