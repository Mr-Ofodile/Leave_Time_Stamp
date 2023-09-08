import React from "react";

const Stat = () => {
  return (
    <>
      <div className="container-fluid">
        <div className="row justify-content-center mt-5">
          <div className="col-lg-2 col-md-4 col-sm-6 mb-4">
            <div className="card">
              <div className="card-body">
                <h5 className="card-title">200M</h5>
                <p className="card-text">Approximately</p>
              </div>
            </div>
            <p className="pa">power of thought</p>
          </div>

          <div className="col-lg-2 col-md-4 col-sm-6 mb-4">
            <div className="card">
              <div className="card-body">
                <h5 className="card-title">120M</h5>
                <p className="card-text">Approximately</p>
              </div>
            </div>
            <p className="pa">power of thought</p>
          </div>

          <div className="col-lg-2 col-md-4 col-sm-6 mb-4">
            <div className="card">
              <div className="card-body">
                <h5 className="card-title">9.79%</h5>
                <p className="card-text">Approximately</p>
              </div>
            </div>
            <p className="pa">power of thought</p>
          </div>
          
          {/* The following divs will stack up on smaller screens */}
          <div className="col-lg-2 col-md-4 col-sm-6 mb-4">
            <div className="card">
              <div className="card-body">
                <h5 className="card-title">35,987</h5>
                <p className="card-text">Approximately</p>
              </div>
            </div>
            <p className="pa">power of thought</p>
          </div>

          <div className="col-lg-2 col-md-4 col-sm-6 mb-4">
            <div className="card">
              <div className="card-body">
                <h5 className="card-title">43.6%</h5>
                <p className="card-text">Approximately</p>
              </div>
            </div>
            <p className="pa">power of thought</p>
          </div>
        </div>
      </div>
    </>
  );
};

export default Stat;
