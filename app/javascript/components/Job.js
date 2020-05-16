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
    console.log('start', start_date)

    function dateFixer(date) {

      if (date === null) {
        return ""
      }
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

   

    return (
      <React.Fragment>
         <a href={path}><h2 className="header-3">{company}</h2></a>
        <h3 className="header-5">{title}</h3>
    
        {startDate && <p className="grey-light-text spacing-md">{startDate} - {currently_active ? "present" : endDate }</p>}
      
         <p>{body}</p>

         <div>{job_skills.map(function( {title, id} ){
              console.log('title: ', title, 'id: ', id);
            return (<span key={id} className="category-item"><a href={"skills/" + id}>{title}</a></span>)
         })}</div>

        {website ? <a href={website} target="_blank"><i class="fas fa-external-link"></i> {company}</a> : ""}
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
