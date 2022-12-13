# Parse the release tag

# strip leading 'release/'
TAG="${GITHUB_REF_NAME#release/}"

# strip leading v
TAG_VALUE="${TAG#v}"

# strip trailing -dry
VERSION="${TAG_VALUE%-dry}"

# detect valid semver
VALID_VERSION=$(npx -y semver-parser-cli@0.2.0 "${VERSION}" --field matches)
if [ "${VALID_VERSION}" != "true" ]; then
  exit 1
fi

# Detect dry run mode
DRY_RUN=0
if [ "${TAG_VALUE}" != "${VERSION}" ]; then
    DRY_RUN=1
fi

# publish tag ('alpha', 'beta', etc.) is used to tag the release
PUBLISH_TAG="$(npx -y semver-parser-cli@0.2.0 "${VERSION}" --field preid)"
if [ "${PUBLISH_TAG}" == "undefined" ]; then
  PUBLISH_TAG=latest
fi

echo "API_CLIENT_NAME=Ruby"
echo "PROJECT_NAME=fastly-ruby"
echo "PACKAGE_REPO_NAME=RubyGems"
echo "VERSION=${VERSION}"
echo "DRY_RUN=${DRY_RUN}"
echo "PUBLISH_TAG=${PUBLISH_TAG}"
