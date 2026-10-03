#include <iostream>
#include "Ride.h"

using namespace std;

Ride::Ride(int id, string pickup, string dropoff, double dist) {
    rideID = id;
    pickupLocation = pickup;
    dropoffLocation = dropoff;
    distance = dist;
}

int Ride::getRideID() const {
    return rideID;
}

string Ride::getPickupLocation() const {
    return pickupLocation;
}

string Ride::getDropoffLocation() const {
    return dropoffLocation;
}

double Ride::getDistance() const {
    return distance;
}

void Ride::rideDetails() const {
    cout << "Ride ID: " << rideID << endl;
    cout << "Pickup: " << pickupLocation << endl;
    cout << "Dropoff: " << dropoffLocation << endl;
    cout << "Distance: " << distance << " miles" << endl;
}