# GitHub Actions: ESP32-S3 Auto Build

This repository includes a GitHub Actions workflow at `.github/workflows/esp32s3-build.yml`.
It will:

1. Install ESP-IDF on the runner using `espressif/esp-idf-action`.
2. Run `idf.py set-target esp32s3` and `idf.py build`.
3. Upload the `build/` directory as a workflow artifact (`firmware-artifacts`).

How to use:
- Push this repo to GitHub (to the `main` branch) or create a new repository and upload these files.
- In GitHub, go to **Actions** -> select *Build ESP32-S3 firmware* workflow, then click **Run workflow** (or push to `main`).
- After the run completes, download the artifact named `firmware-artifacts`. It contains the built firmware (.bin files).

Notes:
- The workflow uses `espressif/esp-idf-action@v2` which installs ESP-IDF. If your project requires a specific ESP-IDF version, edit `esp_idf_version`.
- If the build fails due to missing components or project-specific configuration, open the workflow logs to see errors and adjust project files accordingly.
