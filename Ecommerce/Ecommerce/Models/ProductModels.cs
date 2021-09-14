using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;

namespace Ecommerce.Models
{
    public class Product : DbContext
    {
        [Key, Display(Name = "ID")]
        [ScaffoldColumn(false)]
        public int ID { get; set; }

        [Required, StringLength(40), Display(Name = "Name")]
        public string Name { get; set; }

        [Required, StringLength(100), Display(Name = "Description")]
        public string Description { get; set; }


        public int Price { get; set; }

        public int Stock { get; set; }

        [Required, StringLength(300), Display(Name = "URL")]
        public string URL { get; set; }
    }
}