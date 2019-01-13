import React from "react"
import PropTypes from "prop-types"


function SchoolItem (props) {
  let styles = {
    width: '100%',
  };

  return (
    <div className="col-md-4 d-flex" key={props.school}  > 
      <div className="card" style={styles}>
      <img className="card-img-top" src={props.img} alt="Card image cap" />
          <div className="card-body flex-fill">
            <h3 className="header-4 spacing-sm">{props.school}</h3>
            <h5 className="header-6 text-muted spacing-sm">{props.degree}</h5>
          <h5 className= "grey-light-text small-12" > {
              props.date
            } < /h5>
          </div>
      </div>
    </div>     
  )
}

class School extends React.Component {

  render () {

  var list = [{
        school: "Trent University", 
        degree: "Bachelor of Business Administration (B.B.A)",
        img: "http://featuredheights.com/wp-content/uploads/2018/10/larger-trent.jpg",
        date: "2008 - 2012"
      },
      {
        school: "George Brown", 
        degree: "Post Graduate: Advanced Digital Design",
        img: "http://featuredheights.com/wp-content/uploads/2018/10/GB.jpg",
        date: "2012 - 2013"
      },
      {
        school: "Brain Station",
        degree: "Web Development Focusing on JavaScript",
        img: "http://featuredheights.com/wp-content/uploads/2018/10/Brainstation.jpg",
        date: "2015"
      }
    ]
  
  
    return (
      <React.Fragment>
       <div className="row">
        {list.map(function(school){
          return (
            <SchoolItem img={school.img} 
                        school={school.school} 
                        degree={school.degree}
                        date={school.date} />)
          })
        }  
        </div>
      </React.Fragment>
    );
  }
}

School.propTypes = {
  school: PropTypes.string,
  img: PropTypes.string,
  degree: PropTypes.string,
};

export default School




