import os.path
from datetime import datetime

lock_file = "./flake.nix"
updated = datetime.fromtimestamp(os.path.getmtime(lock_file))
today = datetime.now()
last_updated = str(today - updated)
print(last_updated.split(', ')[0])

