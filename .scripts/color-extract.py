import math
import argparse
import sys

# The reference universe of colors.
COLOR_MAP = {
    "red": (255, 0, 0),
    "blue": (0, 0, 255),
    "green": (0, 255, 0),
    "orange": (255, 165, 0),
    "purple": (128, 0, 128),
    "brown": (165, 42, 42),
    "yellow": (255, 255, 0),
    "black": (0, 0, 0),
    "white": (255, 255, 255)
}

def hex_to_rgb(hex_code: str) -> tuple:
    """Converts a hexadecimal color string to an RGB tuple."""
    hex_code = hex_code.lstrip('#')
    
    # Input validation
    if len(hex_code) != 6:
        raise ValueError(f"Invalid hex code length: '{hex_code}'. Must be 6 characters.")
        
    try:
        r = int(hex_code[0:2], 16)
        g = int(hex_code[2:4], 16)
        b = int(hex_code[4:6], 16)
    except ValueError:
        raise ValueError(f"Invalid characters in hex code: '{hex_code}'.")
        
    return (r, g, b)

def get_closest_color_name(target_hex: str, color_reference: dict) -> str:
    """Finds the closest matching color name for a given hex code."""
    target_rgb = hex_to_rgb(target_hex)
    
    closest_name = None
    min_distance = float('inf')
    
    for name, reference_rgb in color_reference.items():
        # Euclidean distance formula
        distance = math.sqrt(
            (target_rgb[0] - reference_rgb[0]) ** 2 +
            (target_rgb[1] - reference_rgb[1]) ** 2 +
            (target_rgb[2] - reference_rgb[2]) ** 2
        )
        
        if distance < min_distance:
            min_distance = distance
            closest_name = name
            
    return closest_name

def main():
    """Handles command-line argument parsing and execution."""
    # Initialize the parser
    parser = argparse.ArgumentParser(
        description="Returns the closest human-readable color name from a hex code."
    )
    
    # Define the expected argument
    parser.add_argument(
        "hex_code", 
        type=str, 
        help="The 6-character hex color code (e.g., #fa0b54 or fa0b54)"
    )
    
    # Parse the arguments from the terminal
    args = parser.parse_args()
    
    try:
        # Calculate the result
        result = get_closest_color_name(args.hex_code, COLOR_MAP)
        
        # Print ONLY the string to standard output
        if (result == "blue"):
            sys.stdout.write("\n")
        elif (result == "brown"):
            sys.stdout.write("-yellow\n")
        elif (result == "white" or result == "black"):
            sys.stdout.write("-grey\n")
        else:
            sys.stdout.write(f"-{result}\n")
        sys.exit(0) # Exit code 0 indicates success
        
    except ValueError as e:
        # Print errors to standard error, not standard output
        sys.stderr.write(f"Error: {e}\n")
        sys.exit(1) # Exit code 1 indicates a failure

# The script entry point
if __name__ == "__main__":
    main()