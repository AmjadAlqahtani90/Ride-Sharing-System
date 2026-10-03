#ifndef DRIVER_H
#define DRIVER_H

#include <vector>
#include "Ride.h"
#include <string>

using namespace std;

class Driver {

private:
    int driverID;
    string name;
    double rating;
    vector<Ride*> assignedRides;

public:
    Driver(int id, string n, double r);
    void addRide(Ride* ride);
    void getDriverInfo() const;

};

#endif