/*
 * File Name: webpack.config.js
 * Author: Carson Wang
 * mail: carson.wang@droi.com
 * Created Time: 2018-03-20 12:05:50
 */

const HtmlWebpackPlugin = require('html-webpack-plugin');

const HTMLWebpackPluginConfig = new HtmlWebpackPlugin({
    template: `${__dirname}/app/index.html`,
    filename: 'index.html',
    inject: 'body',
});

module.exports = {
    entry: [
        './app/index.js',
    ],
    output: {
        path: `${__dirname}/dist`,
        filename: 'index_bundle.js',
    },
    module: {
        rules: [
            {
                test: /\.js$/,
                exclude: /node_modules/,
                loader: 'babel-loader',
                query: {
                    presets: ['es2015', 'react'],
                },
            },
        ],
    },
    devServer: {
        inline: true,
        port: 8000,
    },
    plugins: [HTMLWebpackPluginConfig],
};
