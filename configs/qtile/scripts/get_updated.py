#!/run/current-system/sw/bin/python
import os.path
from datetime import datetime


def get_last_updated():
    lock_file = f"{os.path.expanduser('~')}/.dotfiles/flake.nix"
    updated = datetime.fromtimestamp(os.path.getmtime(lock_file))
    today = datetime.now()
    last_updated = (today - updated).days
    print(f'{last_updated} days')


if __name__ == '__main__':
    get_last_updated()
    
