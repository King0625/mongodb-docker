db.createUser(
  {
    user: process.env.MONGO_REGULAR_USER,
    pwd: process.env.MONGO_REGULAR_PASSWORD,
    roles: [
      {
        role: "readWrite",
        db: process.env.MONGO_REGULAR_DATABASE
      }
    ]
  }
);