# exit this file if we are not in Codespaces
if [ -z "${CODESPACES}" ]; then
  # We are not in Codespaces

  node tools/setup-dev.js

  # npm install --force --save-optional @swc/core

  echo "Setup done!"
  ecoh "Run 'npm start' to start the development server."

  exit 0
fi

echo "Running Setup for Codespaces"

sh .devcontainer/codespaces.sh
