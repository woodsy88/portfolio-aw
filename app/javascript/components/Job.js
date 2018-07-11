import React from "react"
import PropTypes from "prop-types"
class Job extends React.Component {
  render () {
    return (
      <React.Fragment>
      <div className=" card card-block">
          <h2>{this.props.company}</h2>
          <p>{this.props.date_text}</p>
          <p>{this.props.job_title}</p>
          <p>{this.props.position}</p>
         <p>{this.props.body}</p>
         <p>{this.props.job_skills.title}</p>
      </div>
      </React.Fragment>
    );
  }
}

Job.propTypes = {
  company: PropTypes.string,
  jobTitle: PropTypes.string,
  body: PropTypes.string,
  position: PropTypes.string,
  date_text: PropTypes.string
};
export default Job
