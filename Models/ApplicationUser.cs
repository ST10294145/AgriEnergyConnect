using Microsoft.AspNetCore.Identity;

namespace AgriEnergyConnect.Models
{
    public class ApplicationUser : IdentityUser
    {
        public string Role { get; set; }              // "Employee" or "Farmer"
        public string? CreatedByEmployeeId { get; set; }  // For farmers, links to their creator
    }
}





