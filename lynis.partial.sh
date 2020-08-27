#!/bin/bash
lynis audit --tests malware --logfile /tmp/lynis.partial_scan.log
lynis audit --tests authentication  --logfile /tmp/lynis.partial_scan.log
lynis audit --tests networking --logfile /tmp/lynis.partial_scan.log
lynis audit --tests storage --logfile /tmp/lynis.partial_scan.log
lynis audit --tests filesystems --logfile /tmp/lynis.partial_scan.log
