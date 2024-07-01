db.createUser({
  user: 'root',//process.env.MONGO_USERNAME,
  pwd: 'example',//process.env.MONGO_PASSWORD,
  roles: [
    {
      role: "readWrite",
      db: 'edu'//process.env.MONGO_DB
    }
  ]
});
