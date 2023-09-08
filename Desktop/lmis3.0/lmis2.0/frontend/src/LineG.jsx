// src/LineGraph.js
import React, { useRef, useEffect } from 'react';
import * as d3 from 'd3';

const LineGraph = ({ data, width, height }) => {
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
      .domain([0, data.length - 1])
      .range([0, width]);

    const yScale = d3.scaleLinear()
      .domain([0, d3.max(data, d => d.y)])
      .nice()
      .range([height, 0]);

    // Create the line generator
    const line = d3.line()
      .x((d, i) => xScale(i))
      .y(d => yScale(d.y));

    // Append the line path
    svg.append('path')
      .datum(data)
      .attr('fill', 'none')
      .attr('stroke', 'steelblue')
      .attr('stroke-width', 2)
      .attr('d', line);
  }, [data, width, height]);

  return <svg ref={svgRef} style={{ margin:"0 auto" }}></svg>;
};

export default LineGraph;
