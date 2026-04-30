#!/usr/bin/env python3

import http.server
import socketserver
import sys

PORT = 8080

class CustomHandler(http.server.SimpleHTTPRequestHandler):
	"""Custom Handler with logging"""

	def log_message(self, format, *args):
		client_ip = self.client_address[0]
		print(f"[{client_ip}] - {format % args}")

	def handle_error(self, request, client_address):
		print(f"Connection error from  {client_address}")

def main():
	try:
		with socketserver.TCPServer(("", PORT), CustomHandler) as httpd:
			print("=" * 40)
			print("LOCALWEB - Static web  server")
			print("=" * 40)
			print(f"Address: http://localhost:{PORT}")
			print(f"Directory: {os.getcwd()}")
			print("")
			print("Press Ctrl+C to stop")
			print("=" * 40)
			httpd.serve_forever()
	except KeyboardInterrupt:
		print("\n\n Server stopped")
		sys.exit(0)
	except OSError as e:
		print(f"Error: {e}")
		sys.exit(1)

if __name__ == "__main__":
	import os
	main()
