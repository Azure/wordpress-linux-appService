# Configuring Azure CDN with WordPress

**Azure Content Delivery Network (CDN)** offers a global solution for rapidly delivering high-bandwidth content to users by caching their content at strategically placed physical nodes across the world. It can  help in enhancing the performance of the WordPress application by serving static files such as images, js, css through its global endpoint. This also help in significantly reducing the load on the web server.

For Linux WordPress offering, a new Azure CDN profile and an endpoint is created using the **Azure CDN Standard from Microsoft** product ([Compare Azure CDN Products](https://docs.microsoft.com/azure/cdn/cdn-features?toc=/azure/frontdoor/TOC.json)).  The CDN endpoint is then configured in WordPress using **W3 Total Cache** plugin and it's setting can be seen in the CDN tab of plugin's settings. Please note that it usually takes up to **15 minutes** for the CDN to show up and get configured in WordPress, after the deployment of App Service.

The following Application Settings used at deployment time to configure WordPress to use the CDN endpoint. These settings are only used as a 'one-time' reference during the deployment time. For more information see [WordPress Application Settings](./wordpress_application_settings.md).

|Application Settings | Value |
|---------------------|-------|
|CDN_ENABLED | true/false     |
|CDN_ENDPOINT | cdn endpoint url   |

To change the CDN endpoint after deployment, please go to W3TC plugin in Admin dashboard of WordPress and update it manually. Also, remember to purge the local cache in W3TC plugin after the configuration.

![Wordpress Performance](./media/wp_azure_cdn_1.png)
![General Settings](./media/wp_azure_cdn_2.png)
![Wordpress CDN](./media/wp_azure_cdn_3.png)

## Learn More

- [Compare Azure CDN products](https://docs.microsoft.com/azure/cdn/cdn-features?toc=/azure/frontdoor/TOC.json)
- [What is a content delivery network on Azure?](https://docs.microsoft.com/azure/cdn/cdn-overview?toc=/azure/frontdoor/TOC.json)
- [W3 Total Cache – WordPress plugin | WordPress.org](https://wordpress.org/plugins/w3-total-cache/)
