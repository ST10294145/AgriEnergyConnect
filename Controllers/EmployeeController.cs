using System.ComponentModel.DataAnnotations;
using System.Threading.Tasks;
using AgriEnergyConnect.Data;              // Add this for DbContext
using AgriEnergyConnect.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace AgriEnergyConnect.Controllers
{
    [Authorize(Roles = "Employee")]
    public class EmployeeController : Controller
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly ApplicationDbContext _context;  // Add DbContext

        public EmployeeController(UserManager<ApplicationUser> userManager, ApplicationDbContext context)
        {
            _userManager = userManager;
            _context = context;  // Assign DbContext
        }

        // GET: Show the Register Farmer form
        public IActionResult RegisterFarmer()
        {
            return View();
        }

        // POST: Handle Farmer registration
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> RegisterFarmer(RegisterFarmerViewModel model)
        {
            if (!ModelState.IsValid)
                return View(model);

            // Create the user first
            var farmer = new ApplicationUser
            {
                UserName = model.Email,
                Email = model.Email,
                Name = model.Name
                // Location NOT in ApplicationUser
            };

            var result = await _userManager.CreateAsync(farmer, model.Password);

            if (result.Succeeded)
            {
                // Assign role
                await _userManager.AddToRoleAsync(farmer, "Farmer");

                // Create FarmerProfile linked to the user
                var farmerProfile = new FarmerProfile
                {
                    UserId = farmer.Id,
                    Location = model.Location
                };

                _context.FarmerProfiles.Add(farmerProfile);
                await _context.SaveChangesAsync();

                // Show success and clear form
                ViewBag.Message = "Farmer account created successfully.";
                ModelState.Clear();
                return View();
            }

            // Show errors if any
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError(string.Empty, error.Description);
            }
            return View(model);
        }
    }

    // ViewModel for Farmer registration
    public class RegisterFarmerViewModel
    {
        [Required]
        [Display(Name = "Farmer Name")]
        public string Name { get; set; }

        [Required]
        [Display(Name = "Location")]
        public string Location { get; set; }   // Include Location here

        [Required]
        [EmailAddress]
        [Display(Name = "Email Address")]
        public string Email { get; set; }

        [Required]
        [StringLength(100, MinimumLength = 6)]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage = "Passwords do not match.")]
        public string ConfirmPassword { get; set; }
    }
}
