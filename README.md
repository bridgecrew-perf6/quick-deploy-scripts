# Some quick scripts I threw together for personal use

Many of these are either very insecure or flaky; others just violate accepted best practices. You probably shouldn't use them. Minimaly tested on Ubuntu 18.04, but should work on any recent Ubuntu distribution.

### Structure:
```
.
├── setup                   # Basic system setup and checks (run these before running scripts from lxd/ or scripts/)
├── lxd                     # Top level scripts (run these to setup LXD containers, calls scripts from scripts/)
├── scripts                 # Service level scripts (run these to setup a service on a new install)
├── test                    # Test scripts 
├── tools                   # Other useful tools
└── README.md
```

### Use:
```
chmod +x $SCRIPT
./$SCRIPT
```
