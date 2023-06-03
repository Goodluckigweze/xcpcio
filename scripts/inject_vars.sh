#! /bin/bash

TARGET_FILE="${1}"

PUBLIC_PATH="${BOARD_PUBLIC_PATH:-}"
DATA_HOST="${BOARD_DATA_HOST}"
DEFAULT_TITLE="${BOARD_DEFAULT_TITLE}"
BAIDU_ANALYTICS_ID="${BOARD_BAIDU_ANALYTICS_ID}"
GOOGLE_ANALYTICS_ID="${BOARD_GOOGLE_ANALYTICS_ID}"
PLAUSIBLE_JS_URL="${BOARD_PLAUSIBLE_JS_URL}"
PLAUSIBLE_DATA_DOMAIN="${BOARD_PLAUSIBLE_DATA_DOMAIN}"

sed -i "s|__PUBLIC_PATH__|${PUBLIC_PATH}|g" "${TARGET_FILE}"

if [[ -n "${DATA_HOST}" ]]; then
    sed -i "s|__DATA_HOST__|\"${DATA_HOST}\"|g" "${TARGET_FILE}"
fi

if [ -n "${DEFAULT_TITLE}" ]; then
    sed -i "s|__DEFAULT_TITLE__|\"${DEFAULT_TITLE}\"|g" "${TARGET_FILE}"
fi

if [[ -n "${BAIDU_ANALYTICS_ID}" ]]; then
    sed -i "s|__BAIDU_ANALYTICS_ID__|\"${BAIDU_ANALYTICS_ID}\"|g" "${TARGET_FILE}"
fi

if [[ -n "${GOOGLE_ANALYTICS_ID}" ]]; then
    sed -i "s|__GOOGLE_ANALYTICS_ID__|\"${GOOGLE_ANALYTICS_ID}\"|g" "${TARGET_FILE}"
fi

if [[ -n "${PLAUSIBLE_JS_URL}" ]]; then
    sed -i "s|__PLAUSIBLE_JS_URL__|\"${PLAUSIBLE_JS_URL}\"|g" "${TARGET_FILE}"
fi

if [[ -n "${PLAUSIBLE_DATA_DOMAIN}" ]]; then
    sed -i "s|__PLAUSIBLE_DATA_DOMAIN__|\"${PLAUSIBLE_DATA_DOMAIN}\"|g" "${TARGET_FILE}"
fi
