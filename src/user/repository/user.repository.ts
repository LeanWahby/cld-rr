import { Injectable } from '@nestjs/common';
import { InjectModel } from '@nestjs/mongoose';
import { User, USER_COLLECTION_NAME } from '../schema/user.schema';
import { Model } from 'mongoose';

@Injectable()
export class UserRepository {
  constructor(
    @InjectModel(USER_COLLECTION_NAME) private userModel: Model<User>,
  ) {}

  async findAll() {
    return this.userModel.find();
  }
}
