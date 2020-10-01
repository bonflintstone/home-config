# Defined in - @ line 1
function screenshot --wraps='slurp | grim -g - ~/Pictures/screenshots/screenshot_(date --iso-8601=seconds).png' --description 'alias screenshot slurp | grim -g - ~/Pictures/screenshots/screenshot_(date --iso-8601=seconds).png'
  slurp | grim -g - ~/Pictures/screenshots/screenshot_(date --iso-8601=seconds).png $argv;
end
