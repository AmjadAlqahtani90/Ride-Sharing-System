#include <iostream>
#include "Driver.h"
#include <iomanip>

using namespace std;

Driver::Driver(int id, string n, double r) {
    driverID = id;
    name = n;
    rating = r;
}

void Driver::addRide(Ride* ride) {
    assignedRides.push_back(ride);
}

void Driver::getDriverInfo() const {

    cout << "\n=== Driver Information ===" << endl;

    cout << left
         << setw(15) << "Driver ID"
         << setw(20) << "Name"
         << setw(10) << "Rating"
         << endl;

    cout << string(45, '-') << endl;

    cout << left
         << setw(15) << driverID
         << setw(20) << name
         << setw(10) << rating
         << endl;

    cout << "\nAssigned Rides:" << endl;

    cout << left
         << setw(12) << "Type"
         << setw(10) << "Ride ID"
         << setw(18) << "Pickup"
         << setw(18) << "Dropoff"
         << setw(12) << "Distance"
         << "Fare"
         << endl;

    cout << string(80, '-') << endl;

    for (Ride* ride : assignedRides) {
        ride->rideDetails();
    }
}