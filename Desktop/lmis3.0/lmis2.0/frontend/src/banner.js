import React from "react";

const Banner = () => {
  return (
    <>
      <div className="text-center bg-image civ ">
  
        <div
          className="mask"
          style={{
            backgroundColor: "rgba(0, 128, 0, 0.6)",
            padding: "5% 10%", // Adjusted padding for responsiveness
            minHeight: "100vh", // Set minimum height to full viewport height
          }}
        >
          <div className="d-flex justify-content-center flex-column align-items-center">
            <div
              className="text-white p-3 text-wrap"
              style={{ maxWidth: "100%", width: "700px" }} // Adjusted width for responsiveness
            >
              <h1 className=" ">Welcome to Nigeria's Labour Market Information System</h1>
              <h4 className="" style={{ marginTop: "2rem", marginBottom: "2rem" }}>
                We provide Facts, Studies, and Studies.
              </h4>
              <div className="input-group mb-3">
                <input
                  type="search"
                  className="form-control rounded"
                  placeholder="Search"
                  aria-label="Search"
                  aria-describedby="search-addon"
                />
                {/* <button type="button" className="btn btn-success"> */}
                  {/* Search */}
                {/* </button> */}
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default Banner;
