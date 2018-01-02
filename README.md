requirements: ssed, jot

- `rndlines.sh`: Extracts random lines from a text file
- `split.sh`: Splits a CSV file into chunks of N lines

- re-encode file: `iconv -f iso-8859-15 -t utf-8 "$file" > "${file%.csv}.utf8.csv"`
- replace header in csv file: `sed -i '.bak' '1s/.*/new_header_string/' filename.csv`
