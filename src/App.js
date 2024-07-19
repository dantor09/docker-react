import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <h1 style={{ color: 'yellow' }} >Daniel Torres: <br></br> Software & Network Engineer, Bakersfield, CA</h1>
        <div className="banner">
          <p class='main-header'>Luis Moreno was here and this is from the dev branch</p>

          <a class="portfolio-link" href="https://www.dtorresml.tech/">dannyml.tech</a>
        </div>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
