## Redirect to location

Minimal Docker container to redirect all incoming requests to a given location. Intented to be used in proxy servers.

Inspired by [instedd/redirect-to-https](https://github.com/instedd/redirect-to-https) & [manastech/redirect-to-prefix](https://github.com/manastech/redirect-to-prefix).

## How to use

Run the `instedd/redirect-to-location:0.1` image, setting the `TARGET_LOCATION` environment variable to the location you want to redirect visitors to (ie, `TARGET_LOCATION=https://example.com/some-path/a-page.html`). The container listens in TCP port 80.

You can use any valid expression for the location as per [HAProxy's redirect config](https://www.haproxy.com/documentation/hapee/latest/traffic-routing/redirects/#redirect-traffic-to-a-location) (the container doesn't check or sanitize the value).
