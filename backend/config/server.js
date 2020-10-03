module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  admin: {
    auth: {
      secret: env('ADMIN_JWT_SECRET', '62e7c6c1d0a4a8e6f0fa5c54a4764610'),
    },
  },
});
