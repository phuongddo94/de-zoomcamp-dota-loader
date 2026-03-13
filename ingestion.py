import requests
import sys

def fetch_dota_matches():
    url = "https://api.opendota.com/api/publicMatches"

    try:
        # Fetching data from OpenData
        response = requests.get(url, timeout=10)
        response.raise_for_status()   #Check for HTTP errors

        matches = response.json()

        top_5 = matches[:5]

        print(f"--- Successfully fetched {len(top_5)} matches =--")
        for i, match in enumerate(top_5, 1):
            print(f"{i}. Match ID: {match['match_id']} has duration of {match['duration']}s")

    except Exception as e:
        print(f"Error fetching data: {e}")
        sys.exit(1)

if __name__ == "__main__":
    fetch_dota_matches()