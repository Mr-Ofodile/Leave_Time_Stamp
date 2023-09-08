import React from "react";
// import image from './images/Logo.png';
import photog from './images/photog.jpg';
import image from './images/images.jpg'
const CarouselComponent = () => {
  return (
    
    <div id="carouselExampleIndicators" className="carousel slide" data-bs-ride="carousel">
      <div className="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" className="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div className="carousel-inner">
        <div className="carousel-item active">
          {/* <img src={photog} className="d-block w-100" alt="Slide 1" /> */}
          <div class="card" style={{width: "18rem;"}}>
  {/* <img src="..." class="card-img-top" alt="..."> */}
  <div class="container col-xxl-8 px-4 py-5 "  style={{ marginTop:"15px", width:"100%" }}>
    <div class="row flex-lg-row-reverse align-items-center g-5 py-5">
    <div class="col-lg-6 ">
        <h1 class="display-5 fw-bold lh-1 mb-3">Recent Publications</h1>
        <p class="lead">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
        <div class="d-grid gap-2 d-md-flex justify-content-md-start">
          <button type="button" class="btn btn-primary btn-lg px-4 me-md-2">Read More</button>
          {/* <button type="button" class="btn btn-outline-secondary btn-lg px-4">Default</button> */}
        </div>
      </div>
      
      <div class="col-10 col-sm-8 col-lg-6 ">
        <img src={image} class="d-block mx-lg-auto img-fluid" alt="Bootstrap Themes" width="700" height="500" loading="lazy"/>
      </div>
   
    </div>
  </div>
</div>
        </div>
        <div className="carousel-item">
          {/* <img src={photog} className="d-block w-100" alt="Slide 2" /> */}
          <div class="card" style={{width: "18rem;"}}>
  {/* <img src="..." class="card-img-top" alt="..."> */}
  <div class="container col-xxl-8 px-4 py-5 "  style={{ marginTop:"15px", width:"100%" }}>
    <div class="row flex-lg-row-reverse align-items-center g-5 py-5">
    <div class="col-lg-6 ">
        <h1 class="display-5 fw-bold lh-1 mb-3">Recent Publications</h1>
        <p class="lead">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
        <div class="d-grid gap-2 d-md-flex justify-content-md-start">
          <button type="button" class="btn btn-primary btn-lg px-4 me-md-2">Read More</button>
          {/* <button type="button" class="btn btn-outline-secondary btn-lg px-4">Default</button> */}
        </div>
      </div>
      
      <div class="col-10 col-sm-8 col-lg-6 ">
        <img src={image} class="d-block mx-lg-auto img-fluid" alt="Bootstrap Themes" width="700" height="500" loading="lazy"/>
      </div>
   
    </div>
  </div>
</div>
        </div>
        <div className="carousel-item">
          {/* <img src={photog} className="d-block w-100" alt="Slide 3" /> */}
          <div class="container col-xxl-8 px-4 py-5 "  style={{ marginTop:"15px", width:"100%" }}>
    <div class="row flex-lg-row-reverse align-items-center g-5 py-5">
    <div class="col-lg-6 ">
        <h1 class="display-5 fw-bold lh-1 mb-3">Recent Publications</h1>
        <p class="lead">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
        <div class="d-grid gap-2 d-md-flex justify-content-md-start">
          <button type="button" class="btn btn-primary btn-lg px-4 me-md-2">Read More</button>
          {/* <button type="button" class="btn btn-outline-secondary btn-lg px-4">Default</button> */}
        </div>
      </div>
      
      <div class="col-10 col-sm-8 col-lg-6 ">
        <img src={image} class="d-block mx-lg-auto img-fluid" alt="Bootstrap Themes" width="700" height="500" loading="lazy"/>
      </div>
   
    </div>
  </div>
        </div>
      </div>
      <button className="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span className="carousel-control-prev-icon" aria-hidden="true"></span>
        <span className="visually-hidden">Previous</span>
      </button>
      <button className="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span className="carousel-control-next-icon" aria-hidden="true"></span>
        <span className="visually-hidden">Next</span>
      </button>
    </div>
  );
};

export default CarouselComponent;
