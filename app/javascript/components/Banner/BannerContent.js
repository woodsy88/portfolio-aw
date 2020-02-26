import React from 'react';

const BannerContent = ({ title, subtitle, children }) => {
  return (
    <div className="banner-header">
      <h4 className="home-subtitle">{subtitle}</h4>
      <h2 className="home-title">{title}</h2>
      {children}
    </div>
  );
};

export default BannerContent;

