#ifndef RIDER_H
#define RIDER_H

#include <iostream>
#include <string>
#include <vector>

#include "Ride.h"

using namespace std;

class Rider {
private:
    int riderID;
    string name;
    vector<Ride*> requestedRides;

public:
    Rider(int id, string n);
    void requestRide(Ride* ride);
    void viewRides() const;
};

#endif