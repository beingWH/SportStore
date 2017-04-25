using LanguageFeatures.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LanguageFeatures.Controllers
{
    public class HomeController : Controller
    {
        public string Index()
        {
            return "Navigate to a URL to show an example";
        }
        public ViewResult AutoProperty()
        {
            Product myProduct = new Product() {
            ProductID = 100,
            Name = "Kayak",
            Description = "A boat for one person",
            Price = 275M,
            Category = "Watersports"
        }; 
            string productName = myProduct.Name;
            return View("Result", (object)String.Format("Product name:{0}", productName));
        }
        public ViewResult UseExtension()
        {
            ShoppingCart cart = new ShoppingCart()
            {
                products = new List<Product>
                {
                    new Product {Name="Kayak",Price=275M },
                    new Product {Name="Lifejacket",Price=48.95M },
                    new Product {Name="Soccer ball",Price=19.50M },
                    new Product {Name="Corner flag",Price=34.95M }
                }
            };
            decimal cartTotal = cart.TotalPrices();
            return View("Result", (object)String.Format("Total:{0:c}", cartTotal));
        }
        public ViewResult UseFilterExtensionMethod()
        {
            IEnumerable<Product> products = new ShoppingCart
            {
                products = new List<Product>
                {
                     new Product {Name="Kayak",Category="Watersports",Price=275M },
                     new Product {Name="Lifejacket",Category="Watersports",Price=48.95M },
                     new Product {Name="Soccer ball",Category="Soccer",Price=19.50M },
                     new Product {Name="Corner flag",Category="Soccer",Price=34.95M }
                }
            };
            //Func<Product, bool> categoryFilter = delegate (Product prod)
            //   {
            //       return prod.Category == "Soccer";
            //   };
            decimal total = 0;
            foreach(Product prod in products.Filter(prod=>prod.Category=="Soccer"))
            {
                total += prod.Price;
            }
            return View("Result", (object)String.Format("Total:{0}", total));
        }
    }
}