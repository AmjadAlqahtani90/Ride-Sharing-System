#include <iostream>
#include "Rider.h"
#include <iomanip>

using namespace std;

Rider::Rider(int id, string n) {
    riderID = id;
    name = n;
}

void Rider::requestRide(Ride* ride) {
    requestedRides.push_back(ride);
}

void Rider::viewRides() const {
    cout << "\n=== Rider Information ===" << endl;
    cout << left
         << setw(15) << "Rider ID"
         << setw(20) << "Name"
         << endl;
    cout << string(35, '-') << endl;
    cout << left
         << setw(15) << riderID
         << setw(20) << name
         << endl;
    cout << "\nRide History:" << endl;
    cout << left
         << setw(12) << "Type"
         << setw(10) << "Ride ID"
         << setw(18) << "Pickup"
         << setw(18) << "Dropoff"
         << setw(12) << "Distance"
         << "Fare"
         << endl;
    cout << string(80, '-') << endl;
    for (Ride* ride : requestedRides) {
        ride->rideDetails();
    }
}