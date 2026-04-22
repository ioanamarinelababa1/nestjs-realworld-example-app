import { Controller, Get } from '@nestjs/common';
import { ApiTags, ApiOperation } from '@nestjs/swagger';

@ApiTags('System Info')
@Controller('info')
export class InfoController {
  
  @Get()
  @ApiOperation({ summary: 'Get application metadata' })
  getAppStatus() {
    return {
      status: 'Operational',
      deployedBy: 'Marinela',
      environment: 'Docker/PostgreSQL',
      version: '1.0.0-Showcase',
      uptime: process.uptime() + ' seconds'
    };
  }
}