using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ToDoList.Models
{
    public class ToDoItem
    {
        public string Description { get; set; }
        public int Priority { get; set; }
        public bool Done { get; set; }
    }
}