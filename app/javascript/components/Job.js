import React from "react"
import PropTypes from "prop-types"
class Job extends React.Component {
  render () {
    return (
      <React.Fragment>
      <div class=" card card-block">
          <h2>{this.props.company}</h2>
          <p>{this.props.job_title}</p>
         <p>{this.props.body}</p>
      </div>
      </React.Fragment>
    );
  }
}

Job.propTypes = {
  company: PropTypes.string,
  jobTitle: PropTypes.string,
  body: PropTypes.string
};
export default Job
