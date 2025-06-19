using AgriEnergyConnect.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace AgriEnergyConnect.Data
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public DbSet<Product> Products { get; set; }

        // Add this DbSet for FarmerProfile
        public DbSet<FarmerProfile> FarmerProfiles { get; set; }
    }
}
