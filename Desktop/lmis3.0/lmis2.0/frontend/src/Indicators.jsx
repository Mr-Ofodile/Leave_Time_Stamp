import React, {useEffect,useState}from "react";
import Nav from "./Nav";
import Footer from "./footer";



const Card = ({ imageSrc, altText, title, content }) => {
    return (
      <div className="card">
        <img src={imageSrc} className="card-img-top" alt={altText} />
        <div className="card-body">
          <h5 className="card-title">{title}</h5>
          <p className="card-text">{content}</p>
        </div>
      </div>
    );
  };



  
const Indica = () => {
    const [cardsData, setCardsData] = useState([]);
   
    useEffect(() => {
        // Fetch data from the API endpoint
        fetch("https://admin.lmis.gov.ng/api/f3e15f173cd34515941fafc4a42fc139/indicators")
          .then(response => response.json())
          .then(data => setCardsData(data))
          .catch(error => console.error("Error fetching data:", error));
      }, []);

      const def = 'https://previews.123rf.com/images/michaeljung/michaeljung1306/michaeljung130600051/20022641-happy-african-industrial-worker-with-arms-folded.jpg'
  
    return (
        
        <>
        <Nav/>
        <div className="container-fluid " style={{ width: '100%', padding:'35px', }}>
       
        <div className="row row-cols-1 row-cols-md-2 g-3 border" style={{ width:'auto' }}>
          {cardsData.map((card, index) => (
            <div key={index} className="col-md-3">
              <Card
                imageSrc={card.imageSrc || def}
                altText={card.altText}
                title={card.name}
                content={card.content}
              />
            </div>
          ))}
        </div>
      </div>
        <Footer/>
        </>
    );
  };

export default Indica;
