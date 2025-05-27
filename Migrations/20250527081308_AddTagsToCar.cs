using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace pra_blok_D_cars.Migrations
{
    /// <inheritdoc />
    public partial class AddTagsToCar : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Tags",
                table: "Cars",
                type: "longtext",
                nullable: false)
                .Annotation("MySql:CharSet", "utf8mb4");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Tags",
                table: "Cars");
        }
    }
}
