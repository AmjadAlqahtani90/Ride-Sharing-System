[
    | standardClass premiumClass driverClass riderClass
      ride1 ride2 rides driver rider |

    standardClass := Smalltalk globals at: #StandardRide.
    premiumClass := Smalltalk globals at: #PremiumRide.
    driverClass := Smalltalk globals at: #Driver.
    riderClass := Smalltalk globals at: #Rider.

    ride1 := standardClass new
        initializeWithID: 101
        pickup: 'University'
        dropoff: 'Airport'
        distance: 10.

    ride2 := premiumClass new
        initializeWithID: 102
        pickup: 'Mall'
        dropoff: 'Downtown'
        distance: 8.

    rides := OrderedCollection new.
    rides add: ride1.
    rides add: ride2.

    Stdio stdout
        nextPutAll: '=== ALL RIDES ==='; lf;
        nextPutAll: 'Type        Ride ID    Pickup            Dropoff        Distance    Fare'; lf;
        nextPutAll: '--------------------------------------------------------------------------'; lf.

    rides do: [ :eachRide |
        eachRide rideDetails
    ].

    Stdio stdout
        lf;
        nextPutAll: '=== POLYMORPHIC FARE TEST ==='; lf;
        nextPutAll: 'Ride ID     Fare'; lf;
        nextPutAll: '----------------'; lf.

    rides do: [ :eachRide |
        Stdio stdout
            nextPutAll: eachRide rideID printString;
            nextPutAll: '          $';
            nextPutAll: eachRide fare printString;
            lf
    ].

    driver := driverClass new
        initializeWithID: 1
        name: 'John Smith'
        rating: 4.9.

    driver addRide: ride1.
    driver addRide: ride2.
    driver getDriverInfo.

    rider := riderClass new
        initializeWithID: 201
        name: 'Alice Johnson'.

    rider requestRide: ride1.
    rider requestRide: ride2.
    rider viewRides.

    nil
] value.