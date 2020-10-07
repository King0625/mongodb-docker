#!/bin/bash
set -e

mongo <<EOF
use admin
db.createUser({
  user:  '$MONGO_REGULAR_USER',
  pwd: '$MONGO_REGULAR_PASSWORD',
  roles: [{
    role: 'readWrite',
    db: '$MONGO_REGULAR_DATABASE'
  }]
})
EOF
