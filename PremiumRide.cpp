#include <iostream>
#include "PremiumRide.h"
#include <iomanip>

using namespace std;

PremiumRide::PremiumRide(
    int id,
    string pickup,
    string dropoff,
    double dist
) : Ride(id, pickup, dropoff, dist) {}

double PremiumRide::fare() const {
    return getDistance() * 4.0;
}

void PremiumRide::rideDetails() const {
    cout << left
         << setw(12) << "Premium"
         << setw(10) << getRideID()
         << setw(18) << getPickupLocation()
         << setw(18) << getDropoffLocation()
         << setw(12) << getDistance()
         << "$" << fare()
         << endl;
}