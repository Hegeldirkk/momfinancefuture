/**
 * Contains redis client class and some helper functions
 */
const {
  createClient,
} = require('redis');
const {
  promisify,
} = require('util');

class RedisClient {
  constructor() {

 this.client = createClient({
   
    socket: {
      password: '123r7GMnL6tN0ITtItRAFrtEibBPTB1T',
        host:  process.env.REDIS_HOST || 'redis-10318.c274.us-east-1-3.ec2.cloud.redislabs.com',
        port: process.env.REDIS_PORT || 10318
    }
});

this.client.on('connect', () => {
  console.log('Connected to Redis');
});

console.log('Redis host:', process.env.REDIS_HOST);
console.log('Redis port:', process.env.REDIS_PORT);
    /*this.client = createClient({
      
      socket: {
        password: 'jBSs2NsSLFnKxDvvUtZ2ONyJvW8j8CAe',
          host: 'redis-12921.c258.us-east-1-4.ec2.cloud.redislabs.com',
          port: 12921
      }
    });*/
    this.client.on('error', (err) => {
      console.log(err.message);
    });

    
  }

  isAlive() {
    return this.client.connected;
  }

  async get(key) {
    const getAsync = promisify(this.client.get).bind(this.client);
    return getAsync(key);
  }

  async set(key, value, duration) {
    const setAsync = promisify(this.client.set).bind(this.client);
    return setAsync(key, value, 'EX', duration);
  }

  async del(key) {
    const delAsync = promisify(this.client.del).bind(this.client);
    return delAsync(key);
  }
}

const redisClient = new RedisClient();
module.exports = redisClient;
