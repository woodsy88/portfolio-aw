import React from 'react';

const BannerContent = ({children, hero}) => {
  return (
    <header className={hero}>
      {children} 
    </header>
  );
};

export default BannerContent;