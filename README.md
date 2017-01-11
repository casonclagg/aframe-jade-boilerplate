# A-Frame Boilerplate

Boilerplate for creating WebVR scenes using A-Frame and Jade/Pug templates, with Dockerfile & express server for easy deployment.


## Getting Started

### Fork this Git repo

    git clone git@github.com:your_username/aframe-pug-boilerplate.git
    cd aframe-pug-boilerplate && npm install && npm start

## Publishing to Github Pages scene

GitHub offers free publishing of static sites through __[https://pages.github.com/](GitHub Pages)__.

To publish your scene to your personal GitHub Pages:

    npm run ghpages

And, it'll now be live at __http://`your_username`.github.io/__ :)

<hr>

To know which GitHub repo to deploy to, the `deploy` script first looks at the optional [`repository` key](https://docs.npmjs.com/files/package.json#repository) in the [`package.json` file](package.json) (see [npm docs](https://docs.npmjs.com/files/package.json#repository) for sample usage). If the `repository` key is missing, the script falls back to using the local git repo's remote origin URL (you can run the local command `git remote -v` to see all your remotes; also, you may refer to the [GitHub docs](https://help.github.com/articles/about-remote-repositories/) for more information).

<hr>

### Local Development

To serve the site from a simple Node development server:

    npm start

This should launch the site in your default browser:

[__http://localhost:3000/__](http://localhost:3000/)

If you wish to serve the site from a different port:

    PORT=8000 npm start

### Deploying with Dokku

In this repo you will find `Dockerfile` and `server.js`. The Dockerfile builds the project and then runs `server.js` using `pm2`

You can publish this anywhere, but if you have a Dokku server setup and your keys pushed up to it you can simply deploy it like this:

    git remote add dokku dokku@yourserver.com:appname
    git push dokku master

## License

This program is free software and is distributed under an [MIT License](LICENSE).
