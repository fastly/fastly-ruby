printf '%s' "## ${API_CLIENT_NAME} API client v${VERSION}"

if [ "${DRY_RUN}" == "1" ]; then
  printf '%s' " (dry run)"
fi

echo ""

# add a newline
echo ""

CODE_PATH=${CODE_PATH:-./}
G_CODE=$(jq -r .G "${CODE_PATH}/sig.json")
D_CODE=$(jq -r .D "${CODE_PATH}/sig.json")

PACKAGE_FILESIZE=$(ls -lh "${GITHUB_WORKSPACE}/dist/${PACKAGE_FILENAME}" | awk '{print $5}')B

echo "Artifact"
echo " ${PACKAGE_FILENAME} (${PACKAGE_FILESIZE})"
echo ""
echo "Generated on: $(date)"
echo "G-code: ${G_CODE}, D-code: ${D_CODE}"
if [ "${PUBLISH_TAG}" != "latest" ]; then
  echo "Pre-release Tag: ${PUBLISH_TAG}"
fi
