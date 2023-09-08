import React from 'react';
import ScaledBarChart from './scalar';
import Scatterplot from './ScatterP';
import LineGraph from './LineG';

const data = [
  { x: 10, y: 20 },
  { x: 30, y: 45 },
  { x: 50, y: 15 },
  { x: 70, y: 35 },
  { x: 90, y: 60 },
];


const data2 = [
  { x: 0, y: 34 },
  { x: 1, y: 109 },
  { x: 2, y: 310 },
  { x: 3, y: 79 },
  { x: 4, y: 420 },
  { x: 5, y: 233 },
  { x: 6, y: 333 },
  { x: 7, y: 222 },
  { x: 8, y: 78 },
  { x: 9, y: 21 },
];

const dataset =  [
  { x: 10, y: 20 },
  { x: 30, y: 45 },
  { x: 50, y: 15 },
  { x: 70, y: 35 },
  { x: 90, y: 60 },
];;

const CardComp = () => {
  return (
    <div className="row row-cols-1 row-cols-md-3 g-4 container-fluid" style={{ marginTop:"22px" }}>
      <div className="col">
        <div className="card h-100" style={{ paddingTop:"12px" }}>
        <ScaledBarChart width={400} height={300} />
          <div className="card-body">
            <h5 className="card-title">Card title</h5>
            <p className="card-text">
              This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.
            </p>
          </div>
          <div className="card-footer">
            <small className="text-muted">Last updated 3 mins ago</small>
          </div>
        </div>
      </div>
      <div className="col">
        <div className="card h-100" style={{ paddingTop:"12px" }}>
        <Scatterplot data={dataset} width={400} height={300}  />
          <div className="card-body">
            <h5 className="card-title">Card title</h5>
            <p className="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
          </div>
          <div className="card-footer">
            <small className="text-muted">Last updated 3 mins ago</small>
          </div>
        </div>
      </div>
      <div className="col">
        <div className="card h-100" style={{ paddingTop:"12px" }}>
        <LineGraph data={data2} width={400} height={300} />
          <div className="card-body">
            <h5 className="card-title">Card title</h5>
            <p className="card-text">
              This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.
            </p>
          </div>
          <div className="card-footer">
            <small className="text-muted">Last updated 3 mins ago</small>
          </div>
        </div>
      </div>
    </div>
  );
};

export default CardComp;
