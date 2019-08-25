import React, { Component } from 'react';
import BannerContainer from './Banner/BannerContainer';
import BannerContent from './Banner/BannerContainer';

class Home extends Component {
  render() {
    return (
      <div>
        <BannerContainer title="poop" subtitle="pee" icon="fa fa-rocket">
          <BannerContent>
            <p>poopy children</p>
          </BannerContent>

        </BannerContainer>
       
      </div>
    );
  }
}

export default Home;