<?php

return [
  'fetch' => PDO::FETCH_CLASS,
  'default' => 'mongodb',
  'connections' => [
                'mongodb' => [
                    'driver'   => 'mongodb',
                    'host'     => '10.0.2.78',
                    'port'     => 27017,
                    'username' => 'mongo',
                    'password' => 'mongo',
                    'database' => 'll_staging_sprint2' // Default name (removing this makes Travis fail).
                ],
        ],
        'migrations' => 'migrations',
];