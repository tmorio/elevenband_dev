#!/usr/bin/env python
import nfc
def connected(tag):
  print tag
clf = nfc.ContactlessFrontend('usb')
clf.connect(rdwr={'on-connect': connected})
