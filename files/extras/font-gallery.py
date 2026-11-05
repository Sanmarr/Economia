import subprocess

fonts = subprocess.check_output(["typst", "fonts"], text=True).splitlines()
sample = "The quick brown fox jumps over the lazy dog. 0123456789"

def typst_string(value):
    return value.replace("\\", "\\\\").replace('"', '\\"')

with open("font-gallery.typ", "w", encoding="utf-8") as file:
    file.write("#set page(margin: 12mm)\n")
    for font in fonts:
        name = typst_string(font)
        file.write(
            f'\n#text(weight: "bold")[{name}]\n\n'
            f'#text(font: "{name}", size: 18pt)[{sample}]\n\n'
            f"#v(1em)\n"
        )