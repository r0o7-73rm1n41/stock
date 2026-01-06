#!/bin/bash
# Make sure dependencies are installed
pip install --no-cache-dir -r requirements.txt

# Start the Flask app with Gunicorn for production
gunicorn bond:app --bind 0.0.0.0:5000
