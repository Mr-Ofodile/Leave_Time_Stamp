import React from 'react';
import Layout from './Layout';
import './App.css';
import Home from './Home';
import About from './About';
import Indicators from './Indicators';
import Datum from './pages/DataInsights';
import Keys from './Keyfacts';
import Sectors from './pages/Sectors';
import { BrowserRouter,Routes,Route } from 'react-router-dom';
function App() {
  return (
      <>
      
      <div>
      <BrowserRouter>
      
      <Routes>
        <Route  path='/' element={<Home/>}/>
        <Route  path='/indicators' element={<Indicators/>}/>
        <Route  path='/about' element={<About/>}/>
        <Route  path='/keyfacts' element={<Keys/>}/>
        <Route  path='/datainsights' element={<Datum/>}/>
        <Route  path='/sectors' element={<Sectors/>}/>
    
      </Routes>
      </BrowserRouter>
    
      
     
      </div>
      </>
  );
}

export default App;
