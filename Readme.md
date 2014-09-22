# Torquebox zero-downtime deploy with symlinks & public assets

This demonstrates a possible issue with zero downtime deploys, static
assets, and symlinks in torquebox. If your knob points to a symlinked
directory and you change that symlink to a new directory, static
assets with filenames that match the previous folders filenames are
not refreshed.

1. Make sure you have no deployed apps at /static-test

2. Run `bash release-one.sh` to symlink release-one/ to current and deploy (assumes sinatra gem installed)

3. Go to http://localhost:8080/static-test/assets/release-one.js and see `window.release = 1;`

4. Run `bash release-two.sh` to symlink release-two/ to current and touch current/tmp/restart-all.txt

5. Go to http://localhost:8080/static-test/assets/release-two.js and see `window.release = 2;` (new assets files are picked up)

6. Go to http://localhost:8080/static-test/assets/release-one.js and still see `window.release = 1;` (bad).

In (6), we should be seeing the new release-one.js from release-two/public/assets/release-one.js.
