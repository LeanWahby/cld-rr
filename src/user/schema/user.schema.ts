import { Schema, SchemaFactory } from '@nestjs/mongoose';

export const USER_COLLECTION_NAME = 'User';

@Schema({ collection: USER_COLLECTION_NAME, timestamps: true })
export class User {}

export const UserSchema = SchemaFactory.createForClass(User);
