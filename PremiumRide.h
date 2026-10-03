#ifndef PREMIUMRIDE_H
#define PREMIUMRIDE_H

#include "Ride.h"

class PremiumRide : public Ride {
public:
    PremiumRide(int id, string pickup, string dropoff, double dist);
    double fare() const override;
    void rideDetails() const override;
};

#endif