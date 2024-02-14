import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { envConfigurations } from '../env/env-configurations';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  await app.listen(envConfigurations().PORT.port);
}

bootstrap();
