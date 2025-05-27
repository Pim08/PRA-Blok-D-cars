using System;
using System.Linq;
using System.Collections.Generic;
using WheelyGoodCars.Data;
using WheelyGoodCars.Model;

namespace WheelyGoodCars.Controller
{
    public class CarController
    {
        private WheelyGoodCarsContext _context;

        public CarController()
        {
            _context = new WheelyGoodCarsContext();
        }

        // Voeg een nieuwe auto toe
        public void AddCar(string licensePlate, string brand, string model, decimal price, string description, string image, string tags = "")
        {
            var car = new Car
            {
                LicensePlate = licensePlate,
                Brand = brand,
                Model = model,
                Price = price,
                Description = description,
                ImagePath = image,
                Tags = tags
            };

            _context.Cars.Add(car);
            _context.SaveChanges();
            Console.WriteLine("Auto toegevoegd");
        }

        // Toon alle auto's
        public List<Car> ListCars()
        {
            
            var cars = _context.Cars.ToList();
            Console.WriteLine("Overzicht van alle aangeboden auto's:");
            foreach (var car in cars)
            {
                Console.WriteLine($"{car.Id} | {car.Brand} {car.Model} - {car.LicensePlate} | €{car.Price} | {car.Description} | Tags: {car.Tags}");
            }
            return cars;
        }
        public bool UpdateCarTags(int id, string newTags)
        {
            var car = _context.Cars.SingleOrDefault(c => c.Id == id);
            if (car != null)
            {
                car.Tags = newTags;
                return true;
            }
            return false;
        }


        // Verwijder een auto
        public void DeleteCar(int id)
        {
            var car = _context.Cars.SingleOrDefault(c => c.Id == id);
            if (car != null)
            {
                _context.Cars.Remove(car);
                _context.SaveChanges();
                Console.WriteLine("Auto verwijderd");
            }
            else
            {
                Console.WriteLine("Auto niet gevonden.");
            }
        }
    }
}
