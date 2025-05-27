namespace WheelyGoodCars.Model
{
    public class Car
    {
        public int Id { get; set; }
        public string LicensePlate { get; set; }
        public string Brand { get; set; }
        public string Model { get; set; }
        public decimal Price { get; set; }
        public string Description { get; set; }
        public string ImagePath { get; set; } // <-- Nieuw!
        public string Tags { get; set; }

    }
}
