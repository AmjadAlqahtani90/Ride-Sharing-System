#include <iostream>
#include <iomanip>
#include <vector>
#include <string>

#include "Ride.h"
#include "StandardRide.h"
#include "PremiumRide.h"
#include "Driver.h"
#include "Rider.h"

using namespace std;

int main() {

    StandardRide ride1(101, "University", "Airport", 10 );
    PremiumRide ride2( 102, "Mall",  "Downtown", 8);
    
    vector<Ride*> rides;
    
    rides.push_back(&ride1);
    rides.push_back(&ride2);

    cout << "\n=== ALL RIDES ===" << endl;
    cout << left
         << setw(12) << "Type"
         << setw(10) << "Ride ID"
         << setw(18) << "Pickup"
         << setw(18) << "Dropoff"
         << setw(12) << "Distance"
         << "Fare"
         << endl;

    cout << string(80, '-') << endl;
    for (Ride* ride : rides) {
        ride->rideDetails();
    }

    Driver driver(1,"John Smith", 4.9);

    driver.addRide(&ride1);
    driver.addRide(&ride2);

    driver.getDriverInfo();

    Rider rider(201, "Alice Johnson");

    rider.requestRide(&ride1);
    rider.requestRide(&ride2);

    rider.viewRides();

    return 0;
}