import nfc, nfc.clf
import binascii

def on_connect(tag):
	print tag
def main():
	clf = nfc.ContactlessFrontend("usb")

	rdwr_options = {
		'targets': ['212F' , '424F'],
		'on-connect': on_connect,
	}
	clf.connect(rdwr=rdwr_options)

if __name__ == '__main__':
	main()
