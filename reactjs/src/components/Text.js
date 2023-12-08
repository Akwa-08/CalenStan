import React from 'react';

function Text() {
  return (
    <section className="text">
      <h1>Your Reminders, Organized and Stress-Free!</h1>
      <ul>
        <li>
          <i className="fa fa-lg fa-check-square" aria-hidden="true"></i>
          Your personal reminders are securely stored.
        </li>
        <li>
          <i className="fa fa-lg fa-check-square" aria-hidden="true"></i>
          Enjoy an ad-free experience at no cost.
        </li>
        <li>
          <i className="fa fa-lg fa-check-square" aria-hidden="true"></i>
          Simple and intuitive design for easy navigation.
        </li>
        <li>
          <i className="fa fa-lg fa-check-square" aria-hidden="true"></i>
          Reliable service to keep you on track.
        </li>
      </ul>
    </section>
  );
}

export default Text;
