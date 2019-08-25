import React from 'react';


const BannerContainer = ({ children, title, subtitle, icon}) => {
  return (
    <div className="banner">
      <i className={icon}></i>
      <h2>{title}</h2>
      <p>{subtitle}</p>
      {children}
    </div>
  );
};

export default BannerContainer;