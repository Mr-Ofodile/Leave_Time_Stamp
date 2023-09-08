import React from 'react';

const CardComponent = ({ children }) => {
  return (
    <div className="col">
      <div className="card h-100">
        <div className="card-body">
          {children}
        </div>
      </div>
    </div>
  );
};

export default CardComponent;
