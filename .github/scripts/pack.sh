# install deps
bundle install

# mark version
sed -i "s/^  VERSION = .*$/  VERSION = '${VERSION}'/" lib/fastly/version.rb
bundle install

# make a gem (output is ./pkg)
rake build

# save the output filename to env
PACKAGE_FILENAME=$(cd ./pkg && ls -1 -- *.gem)
echo "PACKAGE_FILENAME=${PACKAGE_FILENAME}" >> "${GITHUB_ENV}"

# move gem to dist
mkdir -p "${GITHUB_WORKSPACE}/dist"
mv "./pkg/${PACKAGE_FILENAME}" "${GITHUB_WORKSPACE}/dist/${PACKAGE_FILENAME}"
