import React, { useState, useEffect } from 'react';
import Nav from "../Nav";
import Footer from "../footer";

const Dropdown = () => {
  const [isOpen, setIsOpen] = useState(false);
  const [selectedOption, setSelectedOption] = useState('');
  const [options, setOptions] = useState([]);

  const toggleDropdown = () => {
    setIsOpen(!isOpen);
  };

  const handleOptionChange = (event) => {
    setSelectedOption(event.target.value);
  };

  useEffect(() => {
    // Fetch data from the specified endpoint
    fetch('https://admin.lmis.gov.ng/api/f3e15f173cd34515941fafc4a42fc139/sectors')
      .then((response) => response.json())
      .then((data) => {
        // Assuming the API response is an array of objects with value and label properties
        setOptions(data.map((item) => ({ value: item.id, label: item.name })));
      })
      .catch((error) => {
        console.error('Error fetching data:', error);
      });
  }, []);

  return (
    <div className={`dropdown ${isOpen ? 'open' : ''}`}>
      <select
        name="sectors"
        id="sectors"
        className="dropdown-select"
        onChange={handleOptionChange}
        value={selectedOption}
      >
        <option value="" disabled>
          Select a sector
        </option>
        {options.map((option) => (
          <option key={option.value} value={option.value}>
            {option.label}
          </option>
        ))}
      </select>
      

      {/* <button className="dropdown-toggle" onClick={toggleDropdown}>
        &#9660; {/* Unicode down arrow */}
      {/* </button> */} 
    </div>
  );
};

const Sectors = () => {
  return (
    <>
      <Nav />
      <div className="container mt-4"> {/* Center the content */}
        <div className="row">
          <div className="col-md-6 mx-auto">
            <Dropdown /> {/* Render the Dropdown component here */}
          </div>
        </div>
      </div>
      <Footer />
    </>
  );
};

export default Sectors;
