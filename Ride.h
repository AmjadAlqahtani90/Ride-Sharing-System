#ifndef RIDE_H
#define RIDE_H

#include <string>

using namespace std;

class Ride {
private:
    int rideID;
    string pickupLocation;
    string dropoffLocation;
    double distance;

public:
    Ride(int id, string pickup, string dropoff, double dist);

    int getRideID() const;
    string getPickupLocation() const;
    string getDropoffLocation() const;
    double getDistance() const;

    virtual double fare() const = 0;
    virtual void rideDetails() const;

    virtual ~Ride() {}
};

#endif