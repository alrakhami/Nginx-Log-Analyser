# Nginx-Log-Analyser
a simple tool to analyze logs from the command line.

## project URL
https://roadmap.sh/projects/nginx-log-analyser

## Requirements
The tool uses the sample nginx access log file from in the same repository named "nginx-access.log.txt". The log file contains the following fields:
IP address
Date and time
Request method and path
Response status code
Response size
Referrer
User agent

## Output
The tool reads the log file and provides the following information:
Top 5 IP addresses with the most requests
Top 5 most requested paths
Top 5 response status codes
Top 5 user agents

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/alrakhami/Nginx-Log-Analyser.git
   cd Nginx-Log-Analyser
   ./Nginx_Log_Analyser.sh nginx-access.log.txt

