import React from 'react';
import styled from 'styled-components';



const HomeCards = ({ portfolios_path, skills_path, jobs_path}) => {

  const cards = [
      {
        title: "Projects",
        path: portfolios_path,
        class: "home-card-item-1",
        icon: "fa fa-code"
      }, 
      {
      title: "Experience",
      path: skills_path,
      class: "home-card-item-2",
      icon: "fa fa-briefcase"
      }, 
      {
      title: "Skills",
      path: portfolios_path,
      class: "home-card-item-2",
      icon: "fa fa-ballot-check"
    }
  ];

//   hoverVisit = (e) => {
// console.log('hover visit ran');

//   }
    
  return (
    <div className="home-cards">
      {cards.map((item, index) => {
        return (
          <div onMouseEnter={(e) => console.log(e)} className={` home-card ${item.class}`} key={index}>
            <div className="card-content">
                <a href={item.path}>
                  <div className="card-items">
                      <i className={`mr-2 fa-2x home-icon ${item.icon}`}></i>
                       <span className="home-card-header story__meta-bold">{item.title}</span>
                  </div>
                </a>
            </div>
        </div>
        )
  })
  }
    </div>
  );
};

export default HomeCards;



