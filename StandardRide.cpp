#include <iostream>
#include "StandardRide.h"
#include <iomanip>

using namespace std;

StandardRide::StandardRide(int id, string pickup, string dropoff, double dist) : Ride(id, pickup, dropoff, dist) {}

double StandardRide::fare() const {
    return getDistance() * 2.0;
}

void StandardRide::rideDetails() const {
    cout << left
         << setw(12) << "Standard"
         << setw(10) << getRideID()
         << setw(18) << getPickupLocation()
         << setw(18) << getDropoffLocation()
         << setw(12) << getDistance()
         << "$" << fare()
         << endl;
}