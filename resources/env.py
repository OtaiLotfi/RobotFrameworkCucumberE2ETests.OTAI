import os
from dotenv import load_dotenv

env = os.environ.get("RF_ENV", "dev")
env_file = os.path.join(os.path.dirname(__file__), "..", "otaiE2ETest", "env_files", f"{env}.env")
print(f"DEBUG: Loading env file from: {os.path.abspath(env_file)}")

loaded = load_dotenv(env_file, override=True)
print(f"DEBUG: load_dotenv returned: {loaded}")

LOGIN_URL = os.getenv("LOGIN_URL")
USEREMAIL = os.getenv("USEREMAIL")
USERPASSWORD = os.getenv("USERPASSWORD")

print(f"DEBUG: LOGIN_URL={LOGIN_URL}")
print(f"DEBUG: USEREMAIL={USEREMAIL}")
print(f"DEBUG: USERPASSWORD={USERPASSWORD}")
