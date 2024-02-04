import { Controller, Get } from '@nestjs/common';
import { UserService } from '../service/user.service';

@Controller('user')
export class UserController {
  constructor(private readonly userService: UserService) {}

  @Get('getAll')
  async findAll() {
    const users = await this.userService.findAll();
    return {
      message: 'Getting all Demo Users Successfully',
      data: users,
    };
  }
}
