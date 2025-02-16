#!/bin/bash

# Check if argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 domain.com [-v]  OR  $0 domains.txt [-v]"
    exit 1
fi

# Check for verbose mode
VERBOSE=false
if [[ "$2" == "-v" ]]; then
    VERBOSE=true
fi

# Function to fetch subdomains for a single domain
fetch_subdomains() {
    local domain=$1
    local output_file="${domain}-subs.txt"

    $VERBOSE && echo "[*] Fetching subdomains for: $domain"

    # Fetch subdomains and process each line in real-time
    curl -s "https://crt.sh/?q=%25.${domain}&output=json" | jq -r '.[].name_value' | sed 's/\*\.//g' | sort -u | while read -r subdomain; do
        echo "$subdomain" | tee -a "$output_file"
    done

    $VERBOSE && echo "[*] Scan completed. Subdomains saved to: $output_file"
}

# Check if input is a file (domain list) or a single domain
if [ -f "$1" ]; then
    $VERBOSE && echo "[*] Scanning multiple domains from file: $1"
    while read -r domain; do
        fetch_subdomains "$domain"
    done < "$1"
else
    fetch_subdomains "$1"
fi
