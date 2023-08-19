import requests

def my_function_to_test():
    response = requests.get("http://localhost:8000")
    return response.status_code
