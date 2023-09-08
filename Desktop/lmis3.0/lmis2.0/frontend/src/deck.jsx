import React from 'react';
import CardComponent from './cardCo'; // Your CardComponent from previous responses
import LineGraph from './line';
// import BarKArt from './charter';
import ScatterPlot from './scatter';
import BarKa from './bar2';

const CardDeck = () => {
  return (
    <div className="card-deck">
      <CardComponent>
            <LineGraph/>
        
      </CardComponent>
      <CardComponent>
        {/* <BarKArt/> */}
        <BarKa/>
      </CardComponent>
      <CardComponent>
        <ScatterPlot/>
      </CardComponent>
    </div>
  );
};

export default CardDeck;
