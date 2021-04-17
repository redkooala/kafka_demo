<?php

declare(strict_types=1);

return [
    'config' => [
        'kafka' => [
            'broker_list' => getenv('KAFKA_BROKER_LIST'),
        ],
    ],
];