import React from "react";



const ResponsiveCard = ({ title, info }) => {
  return (
    
    <div className="card mb-4 mt-4" style={{ height:'34vh',width:'90vw', padding:'12px'}}>
      <div className="card-body" style={{ border:'' }}>
        <h2 className="card-title">{title}</h2>
        <p className="card-text">{info}</p>
      </div>
    </div>
  );
};

const CardList = () => {
  const cardData = [
    { title: "Welcome", info: "This is the information for Card 1." },
    { title: "Objective", info: "This is the information for Card 2." },
    { title: "Scope ", info: "This is the information for Card 3." },
    
  ];

  return (
    <div className="container">
      <div className="">
        {cardData.map((card, index) => (
          <div className="col-md-4" key={index}>
            <ResponsiveCard title={card.title} info={card.info} />
          </div>
        ))}
      </div>
    </div>
  );
};

const SubComponent = () => {
  return (
    <>
      <nav className="navbar navbar-expand-lg navbar-light bg-light">
        <div className="container">
          <div className="col-md-1 text-center" style={{ marginRight: '12px' }}>
            <i className="fa fa-book" aria-hidden="true"></i>
            <h5 className="fw-bold">Overview</h5>
          </div>

          <button
            className="navbar-toggler"
            type="button"
            data-mdb-toggle="collapse"
            data-mdb-target="#navbarButtonsExample"
            aria-controls="navbarButtonsExample"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <i className="fa fa-bars" aria-hidden="true"></i>
          </button>

          <div className="collapse navbar-collapse text-center" id="navbarButtonsExample">
            <ul className="navbar-nav me-auto mb-2 mb-lg-0">
              <li className="nav-item">
                <i className="fa fa-table" aria-hidden="true"></i>
                <h5 className="fw-bold">Tables</h5>
              </li>
              <li className="nav-item" style={{ marginLeft: '12px' }}>
                <i className="fa fa-bar-chart" aria-hidden="true"></i>
                <h5 className="fw-bold">Charts</h5>
              </li>
            </ul>

            <div className="d-flex align-items-center">
              <div className="btn-group me-3">
                <div className="dropdown">
                  <button
                    type="button"
                    className="btn btn-primary px-3 dropdown-toggle"
                    data-bs-toggle="dropdown"
                    aria-expanded="false"
                  >
                    Add Filters
                  </button>
                  <div className="dropdown-menu">
                    <button className="dropdown-item" type="button">
                      Option 1
                    </button>
                    <button className="dropdown-item" type="button">
                      Option 2
                    </button>
                    <div className="dropdown-divider"></div>
                    <div className="dropdown">
                      <button
                        className="dropdown-item dropdown-toggle"
                        type="button"
                        id="nestedDropdown"
                        data-bs-toggle="dropdown"
                        aria-expanded="false"
                      >
                        Nested Options
                      </button>
                      <div className="dropdown-menu" aria-labelledby="nestedDropdown">
                        <button className="dropdown-item" type="button">
                          Suboption 1
                        </button>
                        <button className="dropdown-item" type="button">
                          Suboption 2
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <button type="button" className="btn btn-primary px-3 me-2">
                Clear Filters
              </button>
            </div>
          </div>
        </div>
      </nav>
    </>
  );
};

const Indicator = () => {
  return (
    <>
      <div className="container-fluid">
        <SubComponent />
       
        <CardList/>
      </div>
    </>
  );
};

export default Indicator;
 