#!/usr/bin/env python3

import http.server
import socketserver
import sys
import os

PORT = 8080
DIRECTORY = os.getcwd

if len(sys.argv) > 1:
	PORT = int(sys.argv[1])
if len(sys.argv) > 2:
	DIRECTORY = sys.argv[2]
	od.chdir(DIRECTORY)

class CustomHandler(http.server.SimpleHTTPRequestHandler):
	"""Custom Handler with logging"""

	def log_message(self, format, *args):
		client_ip = self.client_address[0]
		print(f"[{client_ip}] - {format % args}")

	def send_error(self, code, message=None):
		if code == 404:
			self.send_response(404)
			self.send_header('Content-type', 'text/html')
			self.end_headers()

			error_page = f"""
			<!DOCTYPE html>
			<html lang="en">
				<head>
					<meta charset="UTF-8">
					<title>404 - Page Not Found</title>
					<style>
						body{{
							font-family: Arial, sans-serif;
							text-align: center;
							padding: 50px;
							background-color: #f5f5f5; 
						}}
						h1{{
							font-size: 72px;
							color: #333;
							margin-bottom: 0;
						}}
						p{{
							font-size: 18px;
							color: #666;
						}}
						a{{
							color: blue;
							text-decoration: none;
						}}
					</style>
				</head>
				<body>
					<h1>404</h1>
					<p>Oops ! The page you are looking for does not exist.</p>
					<p><a href="/">Go back to home</a></p>
				</body>
			</html>
			"""

			self.wfile.write(error_page.encode())
		else:
			super().send_error(code, message)

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
		if e.errno == 98:
			print(f"Error: Port {PORT} is already in use.")
			print("Try a different port: python3 server.py 9000")
		else:
			print(f"Error: {e}")
		sys.exist(1)

if __name__ == "__main__":
	import os
	main()
