import React from "react"
import PropTypes from "prop-types"
class CodeSnippet extends React.Component {
  render () {
    return (
      <React.Fragment>

        <div className="col-md-4 card">
        <h1 className="nun-black-h3">{this.props.title}</h1>
        <p>{this.props.body}</p>
      < /div>
      </React.Fragment>
    );
  }
}

CodeSnippet.propTypes = {
  title: PropTypes.string,
  body: PropTypes.node
};
export default CodeSnippet
