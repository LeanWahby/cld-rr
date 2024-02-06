export const envConfigurations = () => ({
  mongodb: { MONGO_URI: process.env.MONGO_URI },

  // mongoHostInfo: {
  //   DB_USERNAME: process.env.DB_USERNAME,
  //   DB_PASSWORD: process.env.DB_PASSWORD,
  //   DB_PORT: process.env.DB_PORT,
  //   DB_HOST: process.env.DB_HOST,
  // },
  //
  // mongo_cont_uri: {
  //   Uri: `mongodb://${process.env.DB_USERNAME}:${process.env.DB_PASSWORD}@${process.env.DB_HOST}:${process.env.DB_PORT}`,
  // },
});
