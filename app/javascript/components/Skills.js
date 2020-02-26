import React, { Component } from 'react';
import SkillArea from './Skills/SkillArea';

class Skills extends Component {
  constructor(props) {
    super(props);
    console.log(props);
    
  }
  render() {

    const { design_skills: designSkills, 
            management_skills: managementSkills, 
            development_skills: developmentSkills,
            marketing_skills: marketingSkills  } = this.props;
            
      // const createSkillSection = (array) => {
      //    return array.map((item, index) => {
      //       return <Skill title={item.title} badge={item.badge} area={item.area} id={item.id} key={index} />
      //     })
      // }

    return (
      <React.Fragment>
            <SkillArea icon="far fa-laptop-code" skills={developmentSkills} title="Development" />
            <SkillArea icon="fa fa-rocket" skills={designSkills} title="Design" />
            <SkillArea icon="fa fa-rocket" skills={managementSkills} title="Management" />
            <SkillArea icon="fa fa-rocket" skills={marketingSkills} title="Marketing" />          
      </React.Fragment>
    );
  }
}

export default Skills;