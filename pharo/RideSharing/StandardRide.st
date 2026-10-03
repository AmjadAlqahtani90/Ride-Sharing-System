[
    | rideClass standardClass |

    rideClass := Smalltalk globals at: #Ride.

    standardClass := (rideClass << #StandardRide
        package: 'RideSharing') install.

    standardClass compile: '
fare
    ^ self distance * 2
'.

    standardClass compile: '
rideDetails
    Stdio stdout
        nextPutAll: ''Standard    '';
        nextPutAll: self rideID printString;
        nextPutAll: ''        '';
        nextPutAll: self pickupLocation;
        nextPutAll: ''        '';
        nextPutAll: self dropoffLocation;
        nextPutAll: ''        '';
        nextPutAll: self distance printString;
        nextPutAll: ''          $'';
        nextPutAll: self fare printString;
        lf
'.
] value.