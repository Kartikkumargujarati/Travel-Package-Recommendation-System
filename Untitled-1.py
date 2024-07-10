def get_user_input():
    destination = input("Enter your travel destination: ")
    duration = input("Enter the duration of your trip (in days): ")
    travel_date = input("Enter your travel date (YYYY-MM-DD): ")
    transport = input("Do you need transport from the airport to the hotel? (yes/no) ")
    car_rental = input("Do you need a car rental? (yes/no) ")
    attractions = input("What type of attractions are you looking for? (e.g., museums, parks, historical sites): ")
    return destination, duration, travel_date, transport, car_rental, attractions

def create_travel_packages(destination, duration, travel_date, transport, car_rental, attractions):
    # Implement logic to create three travel packages
    package1 = {"Destination": destination, "Duration": duration, "Travel Date": travel_date, "Transport": transport, "Car Rental": car_rental, "Attractions": attractions}
    package2 = {"Destination": destination, "Duration": duration, "Travel Date": travel_date, "Transport": transport, "Car Rental": car_rental, "Attractions": attractions}
    package3 = {"Destination": destination, "Duration": duration, "Travel Date": travel_date, "Transport": transport, "Car Rental": car_rental, "Attractions": attractions}
    return package1, package2, package3

if __name__ == "__main__":
    destination, duration, travel_date, transport, car_rental, attractions = get_user_input()
    packages = create_travel_packages(destination, duration, travel_date, transport, car_rental, attractions)
    print("Here are your travel package options:")
    for i, package in enumerate(packages, 1):
        print(f"Package {i}: {package}")
