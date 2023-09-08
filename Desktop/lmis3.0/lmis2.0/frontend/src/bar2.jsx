import React, { useEffect, useRef } from 'react';
import * as d3 from 'd3';

const data = [34, 109, 310, 79, 420, 233, 333, 222, 78, 21];
const padding = 30;

const BarKa = () => {
  const svgRef = useRef(null);

  useEffect(() => {
    const containerWidth = svgRef.current.parentElement.clientWidth;
    const w = containerWidth - padding * 2;
    const h = 300;

    const xScale = d3
      .scaleBand()
      .domain(data.map((d, i) => i))
      .range([padding, w - padding])
      .padding(0.1);

    const yScale = d3
      .scaleLinear()
      .domain([0, d3.max(data)])
      .range([h - padding, padding]);

    const svg = d3.select(svgRef.current);
    svg.attr('width', w).attr('height', h);

    svg.selectAll('rect')
      .data(data)
      .enter()
      .append('rect')
      .attr('x', (d, i) => xScale(i))
      .attr('y', (d) => yScale(d))
      .attr('width', xScale.bandwidth())
      .attr('height', (d) => h - padding - yScale(d))
      .attr('fill', 'steelblue');

    // Rest of the code...
  }, []);

  return (
    <div className="card h-100">
      <div className="card-body">
        <svg ref={svgRef}></svg>
      </div>
    </div>
  );
};

export default BarKa;
