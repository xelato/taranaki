import os
import sys

if len(sys.argv) != 2:
    sys.exit("version required")

version = sys.argv[1]
if version.startswith("v"):
    version = version[1:]

print(version)

root = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
os.chdir(root)
with open("VERSION", "w") as f:
    f.write(f"""{version}\n""")

with open("crates/taranaki-python/src/version.rs", "w") as f:
    f.write(f"""pub static VERSION: &'static str = "{version}";\n""")
