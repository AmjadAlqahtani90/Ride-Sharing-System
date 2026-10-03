[
    | rideClass premiumClass |

    rideClass := Smalltalk globals at: #Ride.

    premiumClass := (rideClass << #PremiumRide
        package: 'RideSharing') install.

    premiumClass compile: '
fare
    ^ self distance * 4
'.

    premiumClass compile: '
rideDetails
    Stdio stdout
        nextPutAll: ''Premium     '';
        nextPutAll: self rideID printString;
        nextPutAll: ''        '';
        nextPutAll: self pickupLocation;
        nextPutAll: ''              '';
        nextPutAll: self dropoffLocation;
        nextPutAll: ''       '';
        nextPutAll: self distance printString;
        nextPutAll: ''           $'';
        nextPutAll: self fare printString;
        lf
'.
] value.