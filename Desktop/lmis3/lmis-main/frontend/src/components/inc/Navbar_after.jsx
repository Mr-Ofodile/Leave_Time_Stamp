import React, { Stylesheet } from "react";
import { Link, useLocation } from "react-router-dom";
import Logo from "../images/logo.png";
import { Navbar, Nav, Container, NavDropdown } from 'react-bootstrap';


function Navbarbefore() {
  const location = useLocation();
  return (
    <Navbar id="header" className="header d-flex align-items-center" collapseOnSelect fixed='top' expand='sm' variant='dark'>
      <Container className="container-fluid container-xl d-flex float-end align-items-center justify-content-between">
        <Link href="/" className="logo d-flex align-items-center">
          <img src={Logo} alt="Logo" ></img>
        </Link>
          <Navbar.Toggle aria-controls='navbarScroll' data-bs-target='#navbarScroll' />
          <Navbar.Collapse id='navbarScroll' className="justify-content-end">
            <Nav id="navbar" className="navbar" style={{ textAlign:'center' }}>
              <Nav.Link href='/' className="lines">
                <div>Home</div></Nav.Link>
              <Nav.Link href='/Indicators' className="lines"><div>Indicators</div></Nav.Link>
              <Nav.Link href='/sector' className="lines"><div>Sectors</div></Nav.Link>
              <Nav.Link href='/Occupation' className="lines"><div>Occupation</div></Nav.Link>
              <Nav.Link href='/key-facts' className="lines"><div>Key Facts</div></Nav.Link>
              <Nav.Link href='/Data' className="lines"><div>Data Insights</div></Nav.Link>
              <NavDropdown title="More" id="basic-nav-dropdown">
                <NavDropdown.Item href="/job-statistics">NELEX Jobs Statistics</NavDropdown.Item>
                <NavDropdown.Item href="https://nelexnigeria.com"> Find Jobs</NavDropdown.Item>
              </NavDropdown>
              <Nav.Link href='/trending-jobs'>Trending Jobs </Nav.Link>
            </Nav>
          </Navbar.Collapse>
      </Container>
      <style>
        {`
          @media (max-width: 576px) {
            .lines {
              
              
              color: black;
              width: 100%;
              text-align: center;
              padding: 0;
              height: auto;
              div {
                margin: auto; /* Apply margin:auto to div inside .lines */
              }
            }
          }
        `}
      </style>
    </Navbar>
  );
}
export default Navbarbefore;
