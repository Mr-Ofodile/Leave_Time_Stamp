import React from 'react';
import './App.css';
import Nav from './Nav';
import Banner from './banner';
import Stat from './stats';
// import Chart from './charter';
import Publications from './publications';
import BarKArt from './charter';
import ScatterPlot from './scatter';
import LineGraph from './line';
// import CardComponent from './deck';
import CardComp from './CardDesk';
// import CardDeck from './sep';
import HeroSection from './windows';
// import MySVGComponent from './svcont';
import CarouselComponent from './car';
import CardComponent2 from './Upcoming';
import Footer from './footer';
function Home() {
  return (
      <>
      <div>
        
        <Nav/>
        <Banner/>
        <Stat/>
        <CardComp/>
        {/* <CardComponent/> */}
       {/* <CardDeck/> */}
      {/* <MySVGComponent/> */}
        <Publications id='publications'/>
        
        <CarouselComponent/> 
        {/* <HeroSection/> */}
        <CardComponent2/>
        <Footer/>
    
      
         
      </div>
      </>
  );
}

export default Home;
