import React from 'react';
import ResponsiveSVGContainer from './responsive_savage';
import LineGraph from './line'; // Import your SVG charts here

const CardComponent = () => {
  const chartData = [
    // Define your chart data here
  ];

  return (
    <div className="row row-cols-1 row-cols-md-3 g-4">
      {chartData.map((data, index) => (
        <div className="col" key={index}>
          <div className="card h-100">
            <ResponsiveSVGContainer>
              <LineGraph data={data} /> {/* Replace LineGraph with your chart component */}
            </ResponsiveSVGContainer>
          </div>
        </div>
      ))}
    </div>
  );
};

export default CardComponent;
