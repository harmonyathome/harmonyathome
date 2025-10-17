#!/bin/bash

# List of files to update
files=(
    "about.html"
    "contact.html" 
    "harmony-literary-foundation.html"
    "high-profile-families.html"
    "index.html"
    "newborn-care-specialist.html"
    "page-faq.html"
    "page-gallery.html"
    "page-testimonials.html"
    "teachers.html"
    "terms-and-conditions.html"
    "travel-support.html"
)

for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "Updating $file..."
        # Create a temporary file with the correct order
        sed 's|<a class="dropdown-item" href="page-gallery.html">TRAVEL SUPPORT</a>|TEMP_TRAVEL|g; s|<a class="dropdown-item" href="page-testimonials.html">ON-CALL CARE</a>|TEMP_ONCALL|g; s|<a class="dropdown-item" href="page-faq.html">PLACEMENTS</a>|TEMP_PLACEMENTS|g' "$file" > temp_file
        
        # Replace with correct order
        sed 's|TEMP_TRAVEL|<a class="dropdown-item" href="page-gallery.html">TRAVEL SUPPORT</a>|g; s|TEMP_ONCALL|<a class="dropdown-item" href="page-testimonials.html">ON-CALL CARE</a>|g; s|TEMP_PLACEMENTS|<a class="dropdown-item" href="page-faq.html">PLACEMENTS</a>|g' temp_file > temp_file2
        
        # Now reorder them properly
        sed '/TEMP_TRAVEL/{N;N;s/TEMP_TRAVEL.*TEMP_ONCALL.*TEMP_PLACEMENTS/<a class="dropdown-item" href="page-faq.html">PLACEMENTS<\/a>\
											<a class="dropdown-item" href="page-testimonials.html">ON-CALL CARE<\/a>\
											<a class="dropdown-item" href="page-gallery.html">TRAVEL SUPPORT<\/a>/;}' temp_file2 > "$file"
        
        rm temp_file temp_file2
    fi
done

echo "Dropdown order updated in all files!"