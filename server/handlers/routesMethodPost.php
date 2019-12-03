<?php

if ($method === 'POST') {
    if ($route === '/login') {
        $request = json_decode(file_get_contents('php://input'), true);

        $isValid = valid($request);

        if ($isValid) {
            $responce = [
                'result' => true,
                'message' => 'registration successful, go to login',
            ];

            echo json_encode($responce);
        } else {
            $responce = [
                'result' => false,
                'message' => $isValid,
            ];

            echo json_encode($responce);
        }
    }
}