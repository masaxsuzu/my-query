using System;
using System.Linq;
using app.contexts;

namespace app.entry
{
    class Program
    {
        static void Main(string[] args)
        {
            using var context = new dbContext();
            context._1s.RemoveRange(context._1s);
            context.SaveChanges();
            
            context._1s.Add(new _1(){ Id = 1});
            context.SaveChanges();

            System.Console.WriteLine($"Count: {context._1s.Count()}");
        }
    }
}
