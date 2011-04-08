#!/bin/bash

condition=$(conkyForecast --location=USOH0195 --imperial --datatype=CC)
temp=$(conkyForecast --location=USOH0008 --imperial --datatype=HT -ux)F

echo -e "$temp" - "$condition"
