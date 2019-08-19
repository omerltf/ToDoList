using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ToDoList.Models
{
    /// <summary>
    /// 
    /// </summary>
    public static class ToDoItemData
    {
        // HACK: Using a static collection here
        // to work around not having a database.
        private static List<ToDoItem> Items = new List<ToDoItem>();

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public static List<ToDoItem> GetToDoItems()
        {
            return Items;
        }

        public static void AddItem(string description, int priority)
        {
            ToDoItem item = new ToDoItem();
            item.Description = description;
            item.Priority = priority;
            item.Done = false;

            Items.Add(item);
        }
    }
}