import React from "react";
import image from './images/images.jpg'



const Publications = ()=>{
    return(
            <>
                    <div id="publications" class="container col-xxl-8 px-4 py-5 "  style={{ marginTop:"15px", width:"100%" }}>
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
            {/* <section style={{ border:"2px solid purple",width:"100%" }}>
                    here again
            </section> */}
            </>
        )
}



export default Publications;