import React, { Component } from 'react';
import PropTypes from 'prop-types';

class Popup extends Component {
 static propTypes = {
    isOpen: PropTypes.bool.isRequired,
    closePopup: PropTypes.func.isRequired,
    message: PropTypes.string.isRequired,
 };

 handleClose = () => {
    this.props.closePopup();
 };

 render() {
    if (!this.props.isOpen) {
      return null;
    }

    return (
      <div className="popup">
        <div className="popup-inner">
          <p>{this.props.message}</p>
          <button onClick={this.handleClose}>Close</button>
        </div>
      </div>
    );
 }
}

export default Popup;