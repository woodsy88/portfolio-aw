import React, { Component } from 'react';
import BannerContainer from './Banner/BannerContainer';
import BannerContent from './Banner/BannerContent';
import HomeCards from './Cards/HomeCards';
import BannerInfo from './Banner/BannerInfo';
import WhereFrom from './Banner/WhereFrom';


function PortfolioItems({recent_portfolio_items}) {
  return (
    <div>
      {recent_portfolio_items.map((item, i) => {

        return <div key={i}>{item.title}</div>
      })}
    </div>
  )
}


class Home extends Component {
  constructor(props) {
    super(props)
  }

  render() {
    console.log(this.props.recent_portfolio_items);
    const { portfolios_path, skills_path, jobs_path, recent_portfolio_items } = this.props;
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
            <PortfolioItems recent_portfolio_items={recent_portfolio_items} />
        </div>
    );
  }
}

export default Home;