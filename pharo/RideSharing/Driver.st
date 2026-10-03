[
    | driverClass |

    driverClass := (Object << #Driver
        slots: { #driverID . #name . #rating . #assignedRides };
        package: 'RideSharing') install.

    driverClass compile: '
initializeWithID: anID name: aName rating: aRating
    driverID := anID.
    name := aName.
    rating := aRating.
    assignedRides := OrderedCollection new.
    ^ self
'.

    driverClass compile: '
addRide: aRide
    assignedRides add: aRide
'.

    driverClass compile: '
getDriverInfo
    Stdio stdout
        lf;
        nextPutAll: ''=== DRIVER INFORMATION ===''; lf;
        nextPutAll: ''Driver ID    Name                Rating''; lf;
        nextPutAll: ''---------------------------------------''; lf;
        nextPutAll: driverID printString;
        nextPutAll: ''            '';
        nextPutAll: name;
        nextPutAll: ''          '';
        nextPutAll: rating printString;
        lf;
        lf;
        nextPutAll: ''Assigned Rides:''; lf;
        nextPutAll: ''Type        Ride ID    Pickup            Dropoff        Distance    Fare''; lf;
        nextPutAll: ''--------------------------------------------------------------------------''; lf.

    assignedRides do: [ :eachRide |
        eachRide rideDetails
    ]
'.
] value.