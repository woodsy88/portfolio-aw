import React from "react"
import PropTypes from "prop-types"

function JobSkill (props) {
  return (
    <span className="skill-item">{props.title}</span>
  )
}

class Job extends React.Component {
  render () {
    return (
      <React.Fragment>
         <h2 className="sub-hero-text">{this.props.company}</h2>
         <p>{this.props.body}</p>
         <div>{this.props.job_skills.map(function(skill){
            return <JobSkill title={skill.title} />;
         })}</div>
      </React.Fragment>
    );
  }
}

Job.propTypes = {
  company: PropTypes.string,
  // jobTitle: PropTypes.string,
  body: PropTypes.string,
  // position: PropTypes.string,
  // date_text: PropTypes.string,
  job_skills: PropTypes.array
};
export default Job
