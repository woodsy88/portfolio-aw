import React from 'react';

const BannerContent = ({children}) => {
  return (
    <header className="banner">
      {children} 
    </header>
  );
};

export default BannerContent;