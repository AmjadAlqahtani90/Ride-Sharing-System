[
    | riderClass |

    riderClass := (Object << #Rider
        slots: { #riderID . #name . #requestedRides };
        package: 'RideSharing') install.

    riderClass compile: '
initializeWithID: anID name: aName
    riderID := anID.
    name := aName.
    requestedRides := OrderedCollection new.
    ^ self
'.

    riderClass compile: '
requestRide: aRide
    requestedRides add: aRide
'.

    riderClass compile: '
viewRides
    Stdio stdout
        lf;
        nextPutAll: ''=== RIDER INFORMATION ===''; lf;
        nextPutAll: ''Rider ID     Name''; lf;
        nextPutAll: ''------------------------------''; lf;
        nextPutAll: riderID printString;
        nextPutAll: ''           '';
        nextPutAll: name;
        lf;
        lf;
        nextPutAll: ''Ride History:''; lf;
        nextPutAll: ''Type        Ride ID    Pickup            Dropoff        Distance    Fare''; lf;
        nextPutAll: ''--------------------------------------------------------------------------''; lf.

    requestedRides do: [ :eachRide |
        eachRide rideDetails
    ]
'.
] value.