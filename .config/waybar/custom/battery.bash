#!/bin/env bash

if acpi | grep --quiet Discharging; then
  EMOJI='🔋'
else
  EMOJI='🔌'
fi
PERCENTAGE=$(acpi | cut -d ',' -f 2 | cut -d '%' -f 1 | xargs)

TEXT="$EMOJI$PERCENTAGE"
TOOLTIP=$(acpi | cut -d " " -f 3-)

echo "{ \"text\": \"$TEXT\", \"tooltip\": \"$TOOLTIP\" }"
