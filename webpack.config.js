module.exports = {
    entry: "./app/index.js",
    output: {
        path: __dirname + "/build",
        filename: "index.js"
    },
    devServer: {
        contentBase: "./build",
        hot: true
    },
    module: {
        loaders: [

        ]
    }
};
