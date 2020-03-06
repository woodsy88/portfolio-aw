import React from 'react';

const PageBanner = ({title, text, icon }) => {

  return (
    <div className="page-banner-container">
     <div className="page-banner-item"> 
        <i className={`${icon} large-36 mr-3 grey-500`}></i>
        <div className="test-container"><h2 className="xxx-bold large-42 uppercase"> {title}</h2></div>
     </div>
     <p class="m-top-md"> {text}</p>
     
      
    </div>
  );
};

export default PageBanner;