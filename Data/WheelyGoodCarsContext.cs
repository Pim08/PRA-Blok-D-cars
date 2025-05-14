using Microsoft.EntityFrameworkCore;
using WheelyGoodCars.Model;

namespace WheelyGoodCars.Data
{
    public class WheelyGoodCarsContext : DbContext
    {
        public DbSet<Car> Cars { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseMySql(
                "server=localhost;" +                     // Server name
                "port=3306;" +                            // Server port
                "user=c_sharp_dev;" +                     // Username
                "password=c_sharp_dev;" +                 // Password
                "database=WheelyGoodCarsDB;"       // Database name
                , Microsoft.EntityFrameworkCore.ServerVersion.Parse("8.0.21-mysql") // Version
                );
        }
    }
}
