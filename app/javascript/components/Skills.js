import React, { Component } from 'react';
import SkillArea from './Skills/SkillArea';

class Skills extends Component {
  constructor(props) {
    super(props);
    console.log(props);


    this.state = {
      design: true,
      code: true,
      marketing: true,
      management: true
    }
    
  }

  handleToggleCode = () => {
    this.setState({ code: !this.state.code })  
  }

  handleToggleDesign = () => {
    this.setState({ design: !this.state.design })
  }  

  handleToggleManagement = () => {
    this.setState({ management: !this.state.management })
  }  

  handleToggleMarketing = () => {
    this.setState({  marketing: !this.state. marketing })
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

      let btnStyle = this

    return (
      <React.Fragment>
        <h4>toggle skill areas</h4>
<div className="btn-group">
          <button className={this.state.code ? "btn-primary" : "btn-secondary"} onClick={this.handleToggleCode} >Code</button>
          <button className={this.state.design ? "btn-primary" : "btn-secondary"} onClick={this.handleToggleDesign}>Design</button>
          <button className={this.state.management ? "btn-primary" : "btn-secondary"} onClick={this.handleToggleManagement}>Management</button>
          <button className={this.state.marketing ? "btn-primary" : "btn-secondary"} onClick={this.handleToggleMarketing}>Marketing</button>
</div>
           { this.state.code && <SkillArea icon="far fa-laptop-code" skills={developmentSkills} title="Development" />}
            { this.state.design && <SkillArea icon="fa fa-rocket" skills={designSkills} title="Design" />}
           { this.state.management &&  <SkillArea icon="fa fa-rocket" skills={managementSkills} title="Management" />}
            { this.state.marketing && <SkillArea icon="fa fa-rocket" skills={marketingSkills} title="Marketing" />  }        
      </React.Fragment>
    );
  }
}

export default Skills;