// src/Scatterplot.js
import React, { useRef, useEffect } from 'react';
import * as d3 from 'd3';

const Scatterplot = ({ data, width, height }) => {
  const svgRef = useRef();

  useEffect(() => {
    // Remove any existing chart
    d3.select(svgRef.current).selectAll('*').remove();

    // Create the SVG container
    const svg = d3.select(svgRef.current)
      .attr('width', width)
      .attr('height', height);

    // Define scales
    const xScale = d3.scaleLinear()
      .domain([0, d3.max(data, d => d.x)])
      .nice()
      .range([0, width]);

    const yScale = d3.scaleLinear()
      .domain([0, d3.max(data, d => d.y)])
      .nice()
      .range([height, 0]);

    // Create circles
    svg.selectAll('circle')
      .data(data)
      .enter()
      .append('circle')
      .attr('cx', d => xScale(d.x))
      .attr('cy', d => yScale(d.y))
      .attr('r', 5)
      .attr('fill', 'steelblue');
  }, [data, width, height]);

  return <svg ref={svgRef} style={{ margin:"0 auto" }}></svg>;
};

export default Scatterplot;
