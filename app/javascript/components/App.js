import React from 'react'
import { BrowserRouter as Router, Route, Link, Switch} from "react-router-dom";
import Films from './Films'
class App extends React.Component {
    render() {
        return ( <div>
            <p className="text-center film_main_p">
                A video portal is a service that has all the information about films, the date of the premier, the directors, the actors, you can create accounts and watch movies that you like.
                <Router>
                    <Link to="/films" component={Films} className="film_main_url btn btn-success">Let's go</Link>
                </Router>
            </p>
            </div>
        )
    }
}
export default App