python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade google-genai 
pip install Pillow


# Replace the `GOOGLE_CLOUD_PROJECT_ID` and `GOOGLE_CLOUD_LOCATION` values
# with appropriate values for your project.
export GOOGLE_CLOUD_PROJECT=project-70a839fb-987b-4578-840
export GOOGLE_CLOUD_LOCATION=global
export GOOGLE_GENAI_USE_ENTERPRISE=True

gcloud auth application-default login

python request.py
python generate-image.py
python understand-images.py
python use-code-execution.py

deactivate