import os
import sys

from PIL import Image, ImageDraw, ImageFont, ImageFilter


TOTAL_NUMBERS = 10
FONT_FILE = "../../../../../resource/fonts/font-latosemibold-original.ttf"
FONT_SIZE = 64
OUTPUT_DIR = "numbers"
TEXT_COLOR = (255, 255, 255)
BACKGROUND_COLOR = (0, 0, 0, 0)

max_digits = len(str(TOTAL_NUMBERS - 1))
image_width = max_digits * FONT_SIZE
image_height = FONT_SIZE
image_size = (image_width, image_height)


def generate_number_images():
    script_dir = os.path.dirname(os.path.realpath(__file__))
    os.chdir(script_dir)

    os.makedirs(OUTPUT_DIR, exist_ok=True)

    try:
        font = ImageFont.truetype(FONT_FILE, FONT_SIZE)
    except Exception as e:
        print(f"Error: Failed to load font '{FONT_FILE}'")
        print(f"Reason: {str(e)}")
        return

    for number in range(TOTAL_NUMBERS):
        progress = (number + 1) / TOTAL_NUMBERS * 100
        sys.stdout.write(f"\rProgress: {number + 1}/{TOTAL_NUMBERS} ({progress:.1f}%)")
        sys.stdout.flush()

        img = Image.new("RGBA", image_size, BACKGROUND_COLOR)
        draw = ImageDraw.Draw(img)
        text = str(number)

        bbox = draw.textbbox((0, 0), text, font=font)
        text_width = bbox[2] - bbox[0]
        text_height = bbox[3] - bbox[1]

        x = (image_width - text_width) // 2 - bbox[0]
        y = (image_height - text_height) // 2 - bbox[1]

        draw.text((x, y), text, fill=TEXT_COLOR, font=font)

        img = img.filter(ImageFilter.SMOOTH)

        img.save(os.path.join(OUTPUT_DIR, f"{number}.png"))

    print(f"\nSuccess: Generated {TOTAL_NUMBERS} images")


if __name__ == "__main__":
    generate_number_images()
