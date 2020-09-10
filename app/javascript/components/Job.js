import React from "react"
import PropTypes from "prop-types"

const months = [
  {
    number_month: "01",
    month: "January"
  },
  {
    number_month: "02",
    month: "February"
  },
  {
    number_month: "03",
    month: "March"
  },
  {
    number_month: "04",
    month: "April"
  },
  {
    number_month: "05",
    month: "May"
  },
  {
    number_month: "06",
    month: "June"
  },
  {
    number_month: "07",
    month: "July"
  },
  {
    number_month: "08",
    month: "August"
  },
  {
    number_month: "09",
    month: "September"
  },
  {
    number_month: "10",
    month: "October"
  },
  {
    number_month: "11",
    month: "November"
  },
  {
    number_month: "12",
    month: "December"
  }
]

class Job extends React.Component {
  render () {

    const { job_skills, company, title, body, path, website, currently_active, start_date, end_date } = this.props;

    // takes a number for month "01" and returns it as a word "January"
    function dateFixer(date) {
      if (date === null) { return ""}
      let tempDate = date.split("-");
      tempDate.pop()
      let year = tempDate[0]
      let month = tempDate[1]
      let newMonth = months.filter((item) => item.number_month == month)
      let tempMonth = newMonth[0].month;
      return `${tempMonth}, ${year}`
    }

    let startDate = dateFixer(start_date);
    let endDate = dateFixer(end_date);


    const codeSkills = job_skills.filter((item) => item.area === 'development');
    const managementSkills = job_skills.filter((item) => item.area === 'management');
    const designSkills = job_skills.filter((item) => item.area === 'design');
    const marketingSkills = job_skills.filter((item) => item.area === 'marketing');
    const orderSkills = [...codeSkills, ...managementSkills,...designSkills, ...marketingSkills];

    function getClassName(area){   
      if (area === 'development') {
        return "text-primary border border-primary"
      } else if (area === 'management') {
        return "text-secondary border border-secondary "
      } else if (area === 'design') {
        return "text-info border border-info "
      } else {
        return "text-warning border border-warning "
      }
    }

    return (
      <React.Fragment>
        <div className="p-4">
          <div>
            <a href={path}><h2 className="large-30 xxx-bold">{company}</h2></a>
            <h3 className="header-5">{title}</h3>
              {startDate && <p className="grey-light-text spacing-md">{startDate} - {currently_active ? "present" : endDate }</p>}
              <p>{body}</p>
          </div>
           <div className="mt-3 d-flex flex-wrap">
            {orderSkills.map(({ title, id, area, badge }) => { return (
              <div className="p-1">
                <span key={id} className={`${getClassName(area)} p-1 small-12`}>
                  <i className={`${badge}`}></i><a href={"skills/" + id}>{title}</a>
                  </span>
                </div>)})}
           </div>
            <div className="mt-4">
            {website ? <a href={website} target="_blank" rel="noopener noreferrer"><i class="fas fa-external-link pr-1"></i> {company}</a> : ""}
            </div>
        </div>
      </React.Fragment>
    );
  }
}

Job.propTypes = {
  company: PropTypes.string,
  website: PropTypes.string,
  title: PropTypes.string,
  body: PropTypes.string,
  position: PropTypes.string,
  date_text: PropTypes.string,
  job_skills: PropTypes.array
};

export default Job
