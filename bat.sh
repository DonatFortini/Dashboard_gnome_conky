#!/bin/bash

battery_time=$(acpi -b | grep -Eo "[0-9]+:[0-9]+:[0-9]")

echo $battery_time
