/*
 * File Name: index.js
 * Author: Carson Wang
 * mail: carson.wang@droi.com
 * Created Time: 2018-03-20 12:13:36
 */
import React from 'react';
import ReactDOM from 'react-dom';

class App extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
        };
    }
    render() {
        return (
            <div>
                <h1>Hello, World!</h1>
            </div>
        );
    }
}

ReactDOM.render(<App />, document.getElementById('app'));
