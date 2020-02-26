import React, { Component } from 'react';
import BannerContainer from './Banner/BannerContainer';
import BannerContent from './Banner/BannerContent';
import HomeCards from './Cards/HomeCards';
import BannerInfo from './Banner/BannerInfo';
import WhereFrom from './Banner/WhereFrom';

class Home extends Component {
  constructor(props) {
    super(props)
  }

  render() {
    const { portfolios_path, skills_path, jobs_path } = this.props;
    return (
        <div className="grid-container-home mt-4">
            <BannerContent subtitle="Andrew Woods" title="Product Manager">
              <WhereFrom />
              <BannerInfo />
            </BannerContent>
            <HomeCards 
              portfolios_path={portfolios_path} 
              skills_path={skills_path}
              jobs_path={jobs_path} />
        </div>
    );
  }
}

export default Home;