using System.ComponentModel.DataAnnotations;
using System.Threading.Tasks;
using AgriEnergyConnect.Data;              // DbContext namespace
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
        private readonly ApplicationDbContext _context;  // DbContext for FarmerProfile

        public EmployeeController(UserManager<ApplicationUser> userManager, ApplicationDbContext context)
        {
            _userManager = userManager;
            _context = context;
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

            var farmer = new ApplicationUser
            {
                UserName = model.Email,
                Email = model.Email,
                Name = model.Name
                // Location is stored in FarmerProfile, not here
            };

            var result = await _userManager.CreateAsync(farmer, model.Password);

            if (result.Succeeded)
            {
                await _userManager.AddToRoleAsync(farmer, "Farmer");

                // Create FarmerProfile with Name and Location from ViewModel
                var farmerProfile = new FarmerProfile
                {
                    UserId = farmer.Id,
                    Name = model.Name,      // Must set Name here to avoid NULL insert error
                    Location = model.Location
                };

                _context.FarmerProfiles.Add(farmerProfile);
                await _context.SaveChangesAsync();

                ViewBag.Message = "Farmer account created successfully.";
                ModelState.Clear();
                return View();
            }

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
        public string Location { get; set; }

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
