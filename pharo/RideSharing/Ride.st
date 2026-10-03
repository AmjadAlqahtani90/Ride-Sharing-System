[
    | rideClass |

    rideClass := (Object << #Ride
        slots: { #rideID . #pickupLocation . #dropoffLocation . #distance };
        package: 'RideSharing') install.

    rideClass compile: '
initializeWithID: anID pickup: aPickup dropoff: aDropoff distance: aDistance
    rideID := anID.
    pickupLocation := aPickup.
    dropoffLocation := aDropoff.
    distance := aDistance.
    ^ self
'.

    rideClass compile: '
rideID
    ^ rideID
'.

    rideClass compile: '
pickupLocation
    ^ pickupLocation
'.

    rideClass compile: '
dropoffLocation
    ^ dropoffLocation
'.

    rideClass compile: '
distance
    ^ distance
'.

    rideClass compile: '
fare
    self subclassResponsibility
'.

    rideClass compile: '
rideDetails
    self subclassResponsibility
'.
] value.