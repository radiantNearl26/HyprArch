#!/usr/bin/env python3
"""
Convert hex color code to signed 32-bit integer for Brave browser theme.
Usage: python3 hex2sig32.py <hex_color>
Example: python3 hex2sig32.py "#3D00FF" or python3 hex2sig32.py 3D00FF
"""

import sys

def hex_to_signed32(hex_color):
    """Convert hex color to signed 32-bit integer (ARGB format)."""
    # Remove '#' if present
    hex_color = hex_color.lstrip('#')
    
    # Parse RGB values
    if len(hex_color) == 6:
        r = int(hex_color[0:2], 16)
        g = int(hex_color[2:4], 16)
        b = int(hex_color[4:6], 16)
        a = 255  # Fully opaque
    elif len(hex_color) == 8:
        # ARGB format
        a = int(hex_color[0:2], 16)
        r = int(hex_color[2:4], 16)
        g = int(hex_color[4:6], 16)
        b = int(hex_color[6:8], 16)
    else:
        raise ValueError("Hex color must be 6 or 8 characters (RGB or ARGB)")
    
    # Combine into 32-bit unsigned integer (ARGB)
    unsigned = (a << 24) | (r << 16) | (g << 8) | b
    
    # Convert to signed 32-bit integer
    if unsigned >= 0x80000000:
        signed = unsigned - 0x100000000
    else:
        signed = unsigned
    
    return signed, unsigned, (a, r, g, b)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        sys.stderr.write("Usage: python3 hex2sig32.py <hex_color>\n")
        sys.stderr.write("Example: python3 hex2sig32.py '#3D00FF'\n")
        sys.exit(1)
    
    hex_color = sys.argv[1]
    
    try:
        signed, unsigned, (a, r, g, b) = hex_to_signed32(hex_color)
        sys.stdout.write(str(signed))
        
    except ValueError as e:
        sys.stderr.write(f"Error: {e}\n")
        sys.exit(1)
