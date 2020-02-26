import React from 'react';

const WhereFrom = () => {
  const cnTower = 'https://dl.dropboxusercontent.com/s/g85kdoqjoyc34jw/cn-tower%20%281%29.png?dl=0'
  const leaf = 'https://dl.dropboxusercontent.com/s/gdh1tu9hmofpp7m/maple-leaf.png?dl=0'

  return (
    <div className="home-icon-container">
      <span>From</span> <img className="icon-home" src={cnTower} alt="Toronto" /><img className="icon-home" src={leaf} alt="Canada" />
    </div>
  );
};

export default WhereFrom;