#!/bin/sh

cd /home
echo "RUN v2ray $PORT with $UUID"

cat << EOF > /home/v2ray.json
{
    "inbounds": [
        {
            "port": $PORT,
            "protocol": "vless",
            "settings": {
                "clients": [
                    {
                        "id": "$ID", 
                        "flow": "",
                        "level": 0,
                        "email": "test@example.org"
                    }
                ],
                "decryption": "none"
            },
            "streamSettings": {
                "network": "ws"
            }
        }
    ],
    "outbounds": [
        {
            "protocol": "freedom"
        }
    ]
}
EOF

# Run V2Ray
/home/v2ray run -config /home/v2ray.json