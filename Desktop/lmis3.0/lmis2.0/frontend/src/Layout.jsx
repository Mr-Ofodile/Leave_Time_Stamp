import React from 'react';
import Nav from './Nav';
import Footer from './footer';

const Layout = ({ children }) => {
  return (
    <>
      <Nav />
      <div className="content">
        {children}
      </div>
      <Footer />
    </>
  );
};

export default Layout;
