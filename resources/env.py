import os
from dotenv import load_dotenv

env = os.environ.get("RF_ENV", "dev")
env_file = os.path.join(os.path.dirname(__file__), "..", "otaiE2ETest", "env_files", f"{env}.env")
print(f"DEBUG: Loading env file from: {os.path.abspath(env_file)}")

workflow_name = os.environ.get("GITHUB_WORKFLOW", "")

if workflow_name == "Run Robot Framework Tests":
    loaded = load_dotenv(env_file, override=False)
elif workflow_name == "Common Execution Access":
    loaded = load_dotenv(env_file, override=True)
else:
    loaded = load_dotenv(env_file, override=False)

print(f"DEBUG: load_dotenv returned: {loaded}")

def get_variables():
    return {
        "LOGIN_URL": os.getenv("LOGIN_URL"),
        "USEREMAIL": os.getenv("USEREMAIL"),
        "USERPASSWORD": os.getenv("USERPASSWORD")
    }