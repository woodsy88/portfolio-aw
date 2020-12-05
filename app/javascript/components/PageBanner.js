import React from 'react';
import styled from 'styled-components';

const PageBanner = ({title, text, icon }) => {

  return (
    <PageBannerContainer>
     <div className="page-banner-item"> 
        <i className={`${icon} large-36 mr-3 grey-500`}></i>
        <div className="test-container"><h2 className="xxx-bold large-42 uppercase"> {title}</h2></div>
     </div>
     { text && <p class="m-top-md"> {text}</p>}
    </PageBannerContainer>
  );
};

export default PageBanner;


const PageBannerContainer = styled.header`
  height: 250px;
  display: flex;
  flex-direction: column;
  justify-content: center;

  .page-banner-item {
    display: flex;
    align-items: center;
    animation-name: moveInLeft;
    animation-duration: 1s;
    animation-timing-function: ease-out;
  }

 @keyframes moveInLeft {
  0% {
    opacity: 0;
    /* move is all the way to the right */
    transform: translateX(-100px);
  }

  80% {
    transform: translateX(10px);
  }

  100% {
    opacity: 1;
    /* return it to its default position */
    transform: translateX(0);
  }
} 

`;