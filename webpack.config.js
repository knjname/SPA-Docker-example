const HtmlWebpackPlugin = require("html-webpack-plugin");
const path = require("path");

console.log(path.join(__dirname, "dist"));

module.exports = {
    entry: "./app.js",
    output: {
        filename: "bundle.js",
        path: path.join(__dirname, "dist"),
    },
    plugins: [
        new HtmlWebpackPlugin({template: "./index.html", }),
    ],
}
