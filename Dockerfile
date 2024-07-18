FROM mathworks/matlab:r2024a

# ARG MATLAB_RELEASE=R2024a

WORKDIR /opt/matlab/R2024a

COPY ./.matlab-license/libmwlmgrimpl.so ./bin/glnxa64/matlab_startup_plugins/lmgrimpl/
COPY ./.matlab-license/license.lic ./licenses/

# ARG MLM_LICENSE_FILE="/opt/matlab/R2024a/.license.lic"

# ENV MLM_LICENSE_FILE="./.matlab-license/license.lic"
# ENV MLM_LICENSE_FILE="/opt/matlab/R2024a/license.lic"

# # Copying source and test files.
# COPY ./src ./src
# COPY ./tests/ ./tests

# Start of the command for any of the checks. Packages will be installed along the way.
# ENTRYPOINT ["matlab", "-c", "./license.lic"]

# Stay running.
# CMD ["sleep", "infinity"]

# CMD ["matlab"]
