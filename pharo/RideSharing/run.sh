#!/bin/bash

cd "$(dirname "$0")"

../pharo ../Pharo.image eval "$(
    cat Ride.st
    cat StandardRide.st
    cat PremiumRide.st
    cat Driver.st
    cat Rider.st
    cat main.st
)" | sed '$d'