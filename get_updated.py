import json
from datetime import datetime

with open('flake.lock') as f:
    lock = json.load(f)
    ts = lock["nodes"]["nixpkgs"]["locked"]["lastModified"]
    updated = datetime.fromtimestamp(ts)
    today = datetime.now()
    last_updated = str(today - updated)
    print(last_updated.split(', ')[0])
