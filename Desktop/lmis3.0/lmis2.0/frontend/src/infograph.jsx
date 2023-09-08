import React, { useRef, useEffect } from "react";
import * as d3 from "d3";

const BarChart = ({ data }) => {
  const chartRef = useRef();

  useEffect(() => {
    if (data && data.labels && data.values) {
      const margin = { top: 10, right: 20, bottom: 30, left: 40 };
      const width = 200 - margin.left - margin.right;
      const height = 200 - margin.top - margin.bottom;

      const svg = d3
        .select(chartRef.current)
        .append("svg")
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .append("g")
        .attr("transform", `translate(${margin.left},${margin.top})`);

      const x = d3
        .scaleBand()
        .domain(data.labels)
        .range([0, width])
        .padding(0.1);

      const y = d3.scaleLinear().domain([0, d3.max(data.values)]).nice().range([height, 0]);

      svg
        .selectAll(".bar")
        .data(data.values)
        .enter()
        .append("rect")
        .attr("class", "bar")
        .attr("x", (d, i) => x(data.labels[i]))
        .attr("y", d => y(d))
        .attr("width", x.bandwidth())
        .attr("height", d => height - y(d));

      svg.append("g").attr("transform", `translate(0,${height})`).call(d3.axisBottom(x));

      svg.append("g").call(d3.axisLeft(y));

      return () => {
        svg.remove();
      };
    }
  }, [data]);

  return <div ref={chartRef} style={{ border:'1px solid yellow' }}></div>;
};

const Side = () => {
  const options = [
                    {
                       id: 1,
                       state: "Anambra",
                       skillDevelopment : [23,4,55,30,100,12,34,43,56,65,123],
                       skillsActivation : [23,4,55,30,100,12,34,43,56,65,123],
                       skillsMatching : [12,32,23,54,45,5,67,76,33,44]
                       },
                       {},{},{},{}];

  return (
    <div className="card mb-4" style={{ border:'1px solid pink' }}>
      <div className="card-body">
        <h2>Sidebar</h2>
        <ul className="list-unstyled">
          {options.map((option, index) => (
            <li key={index}>{option}</li>
          ))}
        </ul>
      </div>
    </div>
  );
};

const Main = () => {
  const chartData = {
    labels: ["Label 1", "Label 2", "Label 3", "Label 4"],
    values: [10, 20, 30, 40],
  };

  return (
    <div className="card">
      <div className="card-body">
        <h1>Main Component with Chart</h1>
        <BarChart data={chartData} />
        <BarChart data={chartData} />
        <BarChart data={chartData} />
      </div>
    </div>
  );
};

const Info = () => {
  return (
    <div className="container">
      <div className="row">
        <div className="col-md-4">
          <Side />
        </div>
        <div className="col-md-8">
          <Main />
        </div>
      </div>
    </div>
  );
};

const ResponsiveComponent = () => {
  return (
    <div className="container-fluid">
      <Info />
    </div>
  );
};

export default ResponsiveComponent;
