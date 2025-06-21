using AgriEnergyConnect.Data;
using AgriEnergyConnect.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace AgriEnergyConnect.Controllers
{
    public class ProductController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<ApplicationUser> _userManager;

        public ProductController(ApplicationDbContext context, UserManager<ApplicationUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        // GET: Farmers can see their own products
        [Authorize(Roles = "Farmer")]
        public async Task<IActionResult> MyProducts()
        {
            var user = await _userManager.GetUserAsync(User);
            var products = await _context.Products
                .Where(p => p.FarmerId == user.Id)
                .ToListAsync();
            return View(products);
        }

        // GET: Show product creation form
        [Authorize(Roles = "Farmer")]
        public IActionResult Create()
        {
            return View();
        }

        // POST: Save product
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "Farmer")]
        public async Task<IActionResult> Create(Product product)
        {
            var user = await _userManager.GetUserAsync(User);
            product.FarmerId = user.Id; // Set FarmerId before validation

            if (!TryValidateModel(product))
            {
                var errors = ModelState.Values.SelectMany(v => v.Errors)
                              .Select(e => e.ErrorMessage);
                TempData["Error"] = string.Join("; ", errors);
                return View(product);
            }

            _context.Products.Add(product);
            await _context.SaveChangesAsync();

            TempData["Success"] = "Product created successfully!";
            return RedirectToAction(nameof(MyProducts));
        }
    }
}
