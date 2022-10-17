# Configuring Local Redis Cache in WordPress

The WordPress on Linux App Service has a local Redis Server installed and running on `127.0.0.1:6379`. Redis server is configured to use at most 20% of the total available memory. It is recommended to utilize this caching to reduce the load on the App Service and database.

By default, WordPress is configured to use Redis server cache using the [W3 Total Cache](https://wordpress.org/plugins/w3-total-cache/) plugin. There are four types of caches that can be configured using this plugin.

1. Page Cache
1. Object Cache
1. Database Cache
1. Fragment Cache (only for premium users of W3TC plugin)

Please see the images below for manual configuration and usage of Redis Cache.  Note that you have to click on either **Save Settings** or **Save Setting & Purge Cache** button of each section after entering the configurations.

![Redis Cache Configuration](./media/local_redis_cache_1.png)
![Redis Cache Configuration](./media/local_redis_cache_2.png)
![Redis Cache Configuration](./media/local_redis_cache_3.png)
![Redis Cache Configuration](./media/local_redis_cache_4.png)
![Redis Cache Configuration](./media/local_redis_cache_5.png)
![Redis Cache Configuration](./media/local_redis_cache_6.png)
