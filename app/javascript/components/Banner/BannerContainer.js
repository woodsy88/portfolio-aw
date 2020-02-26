import React from 'react';
import styled from 'styled-components';


const BannerContainer = ({children}) => {
  return (
    <StyledBannerContainer height={"550px"}>
      {children}
    </StyledBannerContainer>
  );
};

export default BannerContainer;

const StyledBannerContainer = styled.header`
  display:flex;
  height: ${(props) =>{ props.height || '400px'}}
  /* grid-template-columns: 1fr 1fr; */
  flex-direction: column;
  justify-content: center;
  background-color: #12283A;
  color: #E1E7EC;
`;
