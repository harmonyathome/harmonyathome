# KIDS - Kindergarten Template Copilot Instructions

## Project Overview
This is a **KIDS Kindergarten and Child Care HTML template** from ThemeForest, despite legacy references to "MAZE Photography" in some CSS comments. The codebase is a multi-page Bootstrap 4-based website template focused on kindergarten, childcare, and educational services.

## Architecture & File Structure

### Core Template Structure
- **`HTML/`** - Main template files (production-ready)
  - Page templates: `index.html`, `about.html`, `classes.html`, `contact.html`, etc.
  - Compiled CSS: `css/style.css` (generated from SASS)
  - Assets: `images/`, `fonts/`, `js/`
- **`DOCUMENTATION/`** - Template documentation and setup guide
- **`HTML/sass/`** - SASS source files for styling

### SASS Architecture (HTML/sass/)
The project uses a modular SASS structure with clear separation of concerns:

```scss
style.scss (main entry point)
├── variable.scss      // Colors, fonts, component settings
├── normalize.scss     // CSS reset
├── global.scss        // Base styles
├── components.scss    // Reusable UI components
├── logo-nav.scss      // Header/navigation
├── section.scss       // Page sections
├── footer.scss        // Footer styles
└── responsive.scss    // Media queries
```

## Development Patterns

### Color System (HTML/sass/variable.scss)
The template uses a well-defined color palette:
- Primary: `#FD4D40` (red)
- Secondary: `#F1C22E` (yellow) 
- Tertiary: `#16C3B0` (teal)
- Quaternary: `#2DB3D9` (blue)

All component colors are derived from these variables - always reference `$color-primary`, `$color-secondary`, etc.

### Component Structure
Components follow a consistent naming pattern:
- Box components: `.box-icon-1`, `.box-image-2`, `.box-team-2`
- Section-based: Each page section has dedicated styles in `section.scss`
- State classes: `.stiky` for navbar, `.active` for navigation

### JavaScript Patterns (HTML/js/script.js)
- **Strict mode enabled** - all custom code uses `"use strict"`
- **jQuery-based** - Template relies heavily on jQuery
- **Data attributes**: Uses `data-background` for dynamic background images
- **Scroll-based interactions**: Sticky navbar at 200px scroll threshold

## Development Workflow

### CSS Compilation
The template uses SASS compilation. To modify styles:
1. Edit SASS files in `HTML/sass/`
2. Compile to `HTML/css/style.css`
3. Use tools like Koala App or command-line SASS compiler

### Asset Management
- **Images**: Place in `HTML/images/` - template includes dummy placeholders
- **Fonts**: Custom icon font in `HTML/fonts/` (FontAwesome + custom SAS font)
- **Vendor CSS/JS**: Keep in respective `vendor/` subdirectories

### Form Processing
Contact forms use `HTML/php/form-process.php`:
- Basic PHP mail() function
- Required fields: name, email, subject, message
- Update `$EmailTo` variable for destination email

## Key Integration Points

### Bootstrap 4 Integration
- Uses Bootstrap 4.x classes throughout
- Custom components extend Bootstrap base classes
- Responsive breakpoints follow Bootstrap conventions

### Third-party Libraries
Key vendor dependencies in `HTML/js/vendor/`:
- `jquery.min.js` - Core jQuery
- `bootstrap.min.js` - Bootstrap JavaScript
- `owl.carousel.js` - Image carousels
- `jquery.magnific-popup.min.js` - Lightbox functionality
- `waypoints.min.js` - Scroll-triggered animations

### Template Inconsistencies to Note
- CSS comments reference "MAZE Photography" (legacy from template base)
- Actual template is KIDS kindergarten theme
- When editing, focus on kindergarten/childcare context, not photography

## Common Customization Points

### Navigation (HTML/index.html)
Header uses `.header-1` class with topbar and main navbar. Modify contact info in topbar section and menu items in `.navbar-nav`.

### Page Sections
Each page section follows pattern: `.section-[name]` with inner `.container` and consistent spacing classes.

### Color Customization
Update brand colors in `HTML/sass/variable.scss` then recompile. All components will automatically use new color scheme.

### Content Areas
Replace dummy content in HTML files - look for placeholder text and `dummy-img-*` image references that need real content.