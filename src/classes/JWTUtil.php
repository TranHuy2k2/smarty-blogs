<?php

namespace app\classes;

class JWTUtil
{
    public static function generateToken($payload)
    {
        $header = [
            'alg' => 'HS256',
            'typ' => 'JWT'
        ];
        $SECRET = $_ENV['JWT_SECRET'];
        $header = json_encode($header);
        $header = base64_encode($header);
        $payload = json_encode($payload);
        $payload = base64_encode($payload);
        $signature = hash_hmac('sha256', "$header.$payload", $SECRET, true);
        $signature = base64_encode($signature);
        $token = "$header.$payload.$signature";
        return $token;
    }
    public static function verifyToken($token)
    {
        $tokenParts = explode('.', $token);
        $SECRET = $_ENV['JWT_SECRET'];
        $header = $tokenParts[0];
        $payload = $tokenParts[1];
        $signature = $tokenParts[2];
        $valid = hash_hmac('sha256', "$header.$payload", $SECRET, true);
        $valid = base64_encode($valid);
        if ($signature == $valid) {
            return true;
        }
        return false;
    }
    public static function getPayload($token)
    {
        $tokenParts = explode('.', $token);
        $payload = $tokenParts[1];
        $payload = base64_decode($payload);
        $payload = json_decode($payload, true);
        return $payload;
    }
}
