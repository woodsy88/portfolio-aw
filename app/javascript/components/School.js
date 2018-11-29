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
            <h3 className="card-title">{props.school}</h3>
            <h5 className="card-subtitle text-muted">{props.degree}</h5>
          </div>
      </div>
    </div>     
  )
}


class School extends React.Component {

  render () {

  var list = [{
        school: "Trent University", 
        degree: "Bachelor of Business", 
        img: "http://featuredheights.com/wp-content/uploads/2018/10/larger-trent.jpg"
      },
      {
        school: "Brain Station", 
        degree: "Javascript", 
        img: "http://featuredheights.com/wp-content/uploads/2018/10/Brainstation.jpg"
      },
      {
        school: "George Brown", 
        degree: "Post Graduate: Advanced Digital Design",
        img: "http://featuredheights.com/wp-content/uploads/2018/10/GB.jpg"
      }]
  
  
    return (
      <React.Fragment>
        {
          list.map(function(school){
            return <SchoolItem img={school.img} school={school.school} degree={school.degree} />
          })
        }        
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




