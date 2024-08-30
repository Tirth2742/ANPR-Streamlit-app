# vehicle_info.py
import requests

def get_vehicle_info(plate_number):
    url = "https://rto-vehicle-information-india.p.rapidapi.com/getVehicleInfo"
    payload = {
        "vehicle_no": plate_number,
        "consent": "Y",
        "consent_text": "I hereby give my consent for Eccentric Labs API to fetch my information"
    }
    headers = {
        "x-rapidapi-key": "2f5d218a23msh77bebeb7cff3914p19ec61jsnc3bc041f30ef",
        "x-rapidapi-host": "rto-vehicle-information-india.p.rapidapi.com",
        "Content-Type": "application/json"
    }

    try:
        response = requests.post(url, json=payload, headers=headers)
        response_data = response.json()

        if response.status_code == 200 and response_data.get('status'):
            return response_data
        else:
            print(f"API call failed with status: {response.status_code} and message: {response_data}")
            return None
    except requests.RequestException as e:
        print(f"Error during API call: {e}")
        return None
