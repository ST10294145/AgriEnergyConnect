using AgriEnergyConnect.Models;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

public class Product
{
    public int ProductId { get; set; }

    [Required]
    [StringLength(100)]
    public string Name { get; set; }

    [Required]
    [StringLength(50)]
    public string Category { get; set; }

    [Required]
    public DateTime ProductionDate { get; set; }

    // Foreign Key
    [Required]
    public string FarmerId { get; set; }

    [ForeignKey("FarmerId")]
    public virtual ApplicationUser Farmer { get; set; }
}
