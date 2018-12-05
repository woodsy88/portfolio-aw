import React from "react"
import PropTypes from "prop-types"

class Job extends React.Component {
  render () {

    const { job_skills } = this.props;

    return (
      <React.Fragment>
         <h2 className="sub-hero-text">{this.props.company}</h2>
         <h3>{this.props.title}</h3>
         <p>{this.props.date_text}</p>
         <p>{this.props.body}</p>

        {/* check what data is coming in from job_skills */}
         {console.log(job_skills)}   
         <div>{job_skills.map(function({title, id}){
              console.log('title: ', title, 'id: ', id);
            return (<span className="skill-item"><a href={"skills/" + id}>{title}</a></span>)
         })}</div>
      </React.Fragment>
    );
  }
}

Job.propTypes = {
  company: PropTypes.string,
  title: PropTypes.string,
  body: PropTypes.string,
  position: PropTypes.string,
  date_text: PropTypes.string,
  job_skills: PropTypes.array
};

export default Job
