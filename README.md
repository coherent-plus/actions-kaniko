# actions-kaniko

## How to build

- Build container image.

1.  Set executable permission to `run.sh`.

    ```
    chmod 777 run.sh
    ```

2.  Build container image.

    > NOTE: Please update the `KANIKO_TAG` to the latest version. Please refer to https://github.com/GoogleContainerTools/kaniko/releases

    > NOTE: Please update the `KANIKO_CUSTOM_IMAGE` to the target container registry. E.g. `ghcr.io/coherentplus/actions-kaniko`

    > NOTE: Please login to the target container registry before build.

    ```
    KANIKO_TAG="v1.18.0-debug" \
    KANIKO_CUSTOM_IMAGE="ghcr.io/coherentplus/actions-kaniko" \
    ./run.sh
    ```
