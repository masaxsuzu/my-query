using System;
using System.Linq;

using app.contexts;

using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace app.entry
{
    class Program
    {
        static void Main(string[] args)
        {
            var builder = new DbContextOptionsBuilder<dbContext>()
                .UseNpgsql("Host=localhost;Database=db;Username=root;Password=root")
                .LogTo(Console.WriteLine, LogLevel.Information);

            using var context = new dbContext(builder.Options);
            context._1s.RemoveRange(context._1s);
            context.SaveChanges();
            
            context._1s.Add(new _1(){ Id = 1});
            context.SaveChanges();

            System.Console.WriteLine($"Count: {context._1s.Count()}");
        }
    }
}
