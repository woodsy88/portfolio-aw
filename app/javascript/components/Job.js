import React from "react"
import PropTypes from "prop-types"

class Job extends React.Component {
  render () {

    const { job_skills, position, company, title, date_text, body, path } = this.props;

    return (
      <React.Fragment>
         <a href={path}><h2 className="header-3">{company}</h2></a>
        <h3 className="header-5">{title}</h3>
         <p className="grey-light-text spacing-md">{date_text}</p>
        
        <h3 className="header-2">{position}</h3>
         <p>{body}</p>

        {/* check what data is coming in from job_skills */}
         {console.log(job_skills)}   
         <div>{job_skills.map(function( {title, id} ){
              console.log('title: ', title, 'id: ', id);
            return (<span key={id} className="category-item"><a href={"skills/" + id}>{title}</a></span>)
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
