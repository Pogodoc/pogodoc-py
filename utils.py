import httpx

def upload_to_s3_with_url(presigned_url: str, payload, payload_length, content_type: str):
    headers = {
        "Content-Length": str(payload_length),
    }

    if content_type:
        headers["Content-Type"] = content_type

    httpx.put(presigned_url, content=payload, headers=headers)
