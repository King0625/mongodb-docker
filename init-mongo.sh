#!/bin/bash
set -e

mongo <<EOF
db.createUser({
  user:  '$MONGO_REGULAR_USER',
  pwd: '$MONGO_REGULAR_PASSWORD',
  roles: [{
    role: 'readWrite',
    db: '$MONGO_REGULAR_DATABASE'
  }]
})
EOF
