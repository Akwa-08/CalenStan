import React from 'react';
import {useNavigate} from 'react-router-dom';
import Axios from 'axios';
import './Navbar.css'


function LogoutButton() {
    const navigate = useNavigate();
    Axios.defaults.withCredentials = true;

    const logout = () => {
        Axios
            .get(require("../config/logout"))
            .then((res) => {
                navigate("/");
            })
    }
    
    return (
        <div className='LoginButton'>
            <button onClick={logout} className='Navbar__btn'>LOGOUT</button>
        </div>
    )
}

export default LogoutButton;