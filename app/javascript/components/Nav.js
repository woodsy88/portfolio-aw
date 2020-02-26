import React, { Component } from 'react';

class Nav extends Component {

  state = {
    isOpen: false
  }

  handleToggle = () => {
    this.setState({ isOpen: !this.state.isOpen })
  }
  render() {
    return (
     
        <div className={this.state.isOpen ? "nav-grid-container show-nav-border" : "nav-grid-container"}>
            <button onClick={this.handleToggle} className="btn nav-icon">
              {this.state.isOpen ?
                <i className="h-6 w-6 fill-current fas fa-times "></i> :
                <i className="h-6 w-6 fill-current fas fa-bars "></i>
              }
            </button>

          <div className={this.state.isOpen ? "nav-grid-links" : "hide-nav "}>
                    <a href="">Projects</a>
                    <a href="">Portfolio</a>
                    <a href="">Jobs</a>
          </div>
     
        </div>  
     
    );
  }
}

export default Nav;