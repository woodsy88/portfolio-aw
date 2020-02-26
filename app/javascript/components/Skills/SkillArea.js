import React, { Component } from 'react';

class SkillArea extends Component {
  constructor(props) {
    super(props);
  }

  render() {

    const { skills, title, icon } = this.props;
  
  return (
    <div className="m-top-xxxl">
      <div className="skill-icon-grid-container"> 
        <i className={`large-24 ${icon}`}></i>
        <h2 className="xxx-bold">{title}</h2>
      </div>
      <div className="m-top-lg skills-grid-container">
        {
          skills.map((item, index) => {
            return (
              <div key={index} className="skill-grid-item">
                <a href={`skills/${item.id}`}><span class="medium-18">{item.title}</span></a>
              </div>)
          })
        }
      </div>
    </div>
  );

  }
}

export default SkillArea;