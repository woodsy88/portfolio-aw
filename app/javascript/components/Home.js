import React, { Component } from 'react';
import BannerContainer from './Banner/BannerContainer';
import BannerContent from './Banner/BannerContainer';

class Home extends Component {

  
  render() {
    return (
      <div>
        <BannerContainer title="Andrew Woods" subtitle="Product Manager" icon="fa fa-rocket">
          <BannerContent>
            <p>I am a Technical Product Manager who started coding six years ago shortly after I started working in the tech industry. I now build products for fun and as a profession.</p>
          </BannerContent>

        </BannerContainer>
       
      </div>
    );
  }
}

export default Home;