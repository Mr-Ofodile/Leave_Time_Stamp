import React, { useEffect, useRef } from 'react';
import * as d3 from 'd3';

const data = [
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

const w = 500;
const h = 500;
const padding = 60;

const LineGraph = () => {
  const svgRef = useRef(null);

  useEffect(() => {
    const xScale = d3
      .scaleLinear()
      .domain([0, d3.max(data, (d) => d.x)])
      .range([padding, w - padding]);

    const yScale = d3
      .scaleLinear()
      .domain([0, d3.max(data, (d) => d.y)])
      .range([h - padding, padding]);

    const line = d3
      .line()
      .x((d) => xScale(d.x))
      .y((d) => yScale(d.y));

    const svg = d3.select(svgRef.current);

    svg.append('path')
      .datum(data)
      .attr('class', 'line')
      .attr('d', line)
      .attr('fill', 'none')
      .attr('stroke', 'steelblue')
      .attr('stroke-width', 2);

    const xAxis = d3.axisBottom(xScale);
    const yAxis = d3.axisLeft(yScale);

    svg.append('g')
      .attr('transform', 'translate(0,' + (h - padding) + ')')
      .call(xAxis);

    svg.append('g')
      .attr('transform', 'translate(' + padding + ',0)')
      .call(yAxis);
  }, []);

  return (
    <div>
      <svg ref={svgRef} width={w} height={h}></svg>
    </div>
  );
};

export default LineGraph;
