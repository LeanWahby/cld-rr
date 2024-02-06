import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UserModule } from './user/user.module';
import { ConfigModule } from '@nestjs/config';
import { envConfigurations } from '../env/env-configurations';
import { MongooseModule } from '@nestjs/mongoose';

@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true,
      load: [envConfigurations],
      envFilePath: `${process.cwd()}/env/${process.env.NODE_ENV}.env`,
    }),
    MongooseModule.forRootAsync({
      useFactory: () => ({
        uri: envConfigurations().mongodb.MONGO_URI,
      }),
    }),
    UserModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
