#!/usr/bin/env python3
import os
import re

# List of files to update
files = [
    "about.html",
    "contact.html",
    "harmony-literary-foundation.html", 
    "high-profile-families.html",
    "index.html",
    "newborn-care-specialist.html",
    "page-faq.html",
    "page-gallery.html",
    "page-testimonials.html",
    "teachers.html",
    "terms-and-conditions.html",
    "travel-support.html"
]

# Pattern to match the dropdown menu
pattern = r'(<div class="dropdown-menu">)\s*(<a class="dropdown-item" href="page-gallery\.html">TRAVEL SUPPORT</a>)\s*(<a class="dropdown-item" href="page-testimonials\.html">ON-CALL CARE</a>)\s*(<a class="dropdown-item" href="page-faq\.html">PLACEMENTS</a>)\s*(</div>)'

# Replacement with correct order
replacement = r'\1\n\t\t\t\t\t\t\t\t\t\t\t<a class="dropdown-item" href="page-faq.html">PLACEMENTS</a>\n\t\t\t\t\t\t\t\t\t\t\t<a class="dropdown-item" href="page-testimonials.html">ON-CALL CARE</a>\n\t\t\t\t\t\t\t\t\t\t\t<a class="dropdown-item" href="page-gallery.html">TRAVEL SUPPORT</a>\n\t\t\t\t\t\t\t\t\t\5'

for filename in files:
    if os.path.exists(filename):
        print(f"Updating {filename}...")
        
        with open(filename, 'r', encoding='utf-8') as file:
            content = file.read()
        
        # Update the dropdown order
        updated_content = re.sub(pattern, replacement, content, flags=re.MULTILINE | re.DOTALL)
        
        with open(filename, 'w', encoding='utf-8') as file:
            file.write(updated_content)
        
        print(f"✓ Updated {filename}")
    else:
        print(f"✗ File not found: {filename}")

print("Dropdown reordering complete!")