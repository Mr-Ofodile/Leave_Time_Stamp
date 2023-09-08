import React from "react";
import { Link,Outlet } from 'react-router-dom';
import Logo from "./images/Logo.png";


const Nav = () => {
  return (
    <nav className="navbar navbar-expand-lg navbar-light bg-success">

      <div className="container">
        <a className="navbar-brand" href="#">
          <img
            style={{ width: 200, height: 60 }}
            src={Logo}
            alt="Logo"
          />
        </a>

        <button
          className="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span className="navbar-toggler-icon"></span>
        </button>

        <div className="collapse navbar-collapse  justify-content-end" id="navbarNav">
          <ul className="navbar-nav ml-auto">
          
           <li className="nav-item nav-item-spaced">
              <Link className="nav-link" to="/"  role="button">Home</Link>
          </li>
          
            <li className="nav-item nav-item-spaced">
            <Link   className="nav-link" to="/about"  role="button">
              About
            </Link>
            </li>
            <li className="nav-item nav-item-spaced">
            <Link className="nav-link"  role="button" to="/keyfacts">keyfacts</Link>
             </li>

            <li className="nav-item nav-item-spaced">
            <Link className="nav-link"  role="button" to="/indicators">indicators</Link>

            </li>
            {/* <li className="nav-item nav-item-spaced"> */}
              {/* <a
                className="nav-link"
                href="#publications"
                // id="publicationsDropdown"
                role="button"
               
               
              >
                Sectors
              </a> */}
             
            {/* </li> */}
            <li className="nav-item nav-item-spaced">
            <Link   className="nav-link" to="/sectors"  role="button">
              Sectors
            </Link>
            </li>
            <li className="nav-item nav-item-spaced">
            <Link className="nav-link"  role="button" to="/sectors">Data Insights</Link>

            </li>
          {/* </ul> */}
            <li nav-item-spaced>
          <form className="form-inline my-2 my-lg-0">
            <div className="input-group">
              <input
                className="form-control"
                type="search"
                placeholder="Search"
                aria-label="Search"
              />
              <div className="input-group-append">
                <button
                  className="btn btn-danger"
                  type="submit"
                >
                  {/* <i class="fa-solid fa-magnifying-glass"></i> */}
                  <i class="fa fa-heart"></i>
                {/* <i class="fa fa-cloud"></i> */}
                   {/* <i className="bi bi-search"></i>  */}
                </button>

                
              </div>
            </div>
          </form>
          </li>
          </ul>
        </div>
      </div>
      
    </nav>
  );
};

export default Nav;
