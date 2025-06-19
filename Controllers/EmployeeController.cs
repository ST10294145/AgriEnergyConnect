using System.ComponentModel.DataAnnotations;
using System.Threading.Tasks;
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

        public EmployeeController(UserManager<ApplicationUser> userManager)
        {
            _userManager = userManager;
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
                Name = model.Name,
                Location = model.Location
                // FarmerId will be auto-generated
            };

            var result = await _userManager.CreateAsync(farmer, model.Password);

            if (result.Succeeded)
            {
                await _userManager.AddToRoleAsync(farmer, "Farmer");

                // Option 1: Show success message and clear form
                ViewBag.Message = "Farmer account created successfully.";
                ModelState.Clear();
                return View();

                // Option 2: Redirect to confirmation or dashboard
                // return RedirectToAction("FarmerList");
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
