import React, { useEffect, useRef } from 'react';

const ResponsiveSVGContainer = ({ children }) => {
  const svgRef = useRef(null);

  useEffect(() => {
    const updateContainerSize = () => {
      const container = svgRef.current.parentElement;
      const containerWidth = container.clientWidth;
      const containerHeight = 0.6 * containerWidth; // Adjust the aspect ratio as needed
      svgRef.current.setAttribute('width', containerWidth);
      svgRef.current.setAttribute('height', containerHeight);
    };

    updateContainerSize();

    window.addEventListener('resize', updateContainerSize);
    return () => {
      window.removeEventListener('resize', updateContainerSize);
    };
  }, []);

  return (
    <div className="responsive-svg-container">
      <svg ref={svgRef}>
        {children}
      </svg>
    </div>
  );
};

export default ResponsiveSVGContainer;
