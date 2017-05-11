
# SPA+Docker example

This is an SPA+Docker example.

If you want to launch this example, type the following command and open http://localhost.

```sh
$ docker-compose up
```

It executes the following steps.

1. Build a docker image whose definition is written in `Dockerfile`.
    * Since `Dockerfile` has multi stage build, this example requires Docker >= `17.05`.
    * Multi stage build in this case is comprised of:
        1. Build SPA with webpack.
        2. Bundle it in a `nginx-alpine`. This image is quite smaller than single stage build.
2. Run the image built above. The bootstrap script is `serve.sh`.
    1. Generate `env.js` having environment variables defined in `docker-compose.yml`. This will be loaded in SPA.
    2. Generate `nginx.conf` nginx uses.
    3. Start nginx with no daemon options.

## External links

* [docker-nginx-spa](https://github.com/SocialEngine/docker-nginx-spa) is a good example of dockerizing an SPA.
