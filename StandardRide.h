#ifndef STANDARDRIDE_H
#define STANDARDRIDE_H

#include "Ride.h"

class StandardRide : public Ride {
public:
    StandardRide(int id, string pickup, string dropoff, double dist);
    double fare() const override;
    void rideDetails() const override;
};

#endif