import './App.css';
import logo from './assets/images/logo.png';
import { FontAwesomeIcon }from '@fortawesome/react-fontawesome';
import {faTwitter, faGithubAlt, faInstagram, faLinkedinIn} from '@fortawesome/free-brands-svg-icons'
import { faDownload, faM } from '@fortawesome/free-solid-svg-icons';
import { useTypewriter, Cursor } from 'react-simple-typewriter';
import resume from './assets/resume/michael_Wanjiru.pdf'





const  App = () => {
    const {text} = useTypewriter({
        words: ['Andoid', 'Front-end', 'Back-end', 'Fullstack'],
        loop: Infinity, // Infinit
      })

    return ( 
        <div class="grid-container center">
            <img class="logo" src={logo} alt="miko" />
            <div className="dotted">
                <h1>Michael A. Wanjiru</h1>
                <h3>I am a <span>{text}</span><Cursor /> Developer</h3>
                <ul>
                    <li>
                        <p>Html/Css</p>
                    </li>
                    <li>
                        <p>Js</p>
                    </li>
                    <li>
                        <p>Node js</p>
                    </li>
                    <li>
                        <p> Flutter</p>
                    </li>
                    <li>
                        <p>React js/native</p> 
                    </li>
                </ul>
            </div>
            <div className="social_logo">
                <a href="https://github.com/michaelmuriith" target="_blank" rel="noreferrer">
                    <div className="social_item center gitHub">
                        <FontAwesomeIcon icon={faGithubAlt} />
                    </div>
                </a>
                <a href="https://www.linkedin.com/in/michaelwanjiru/" target="_blank" rel="noreferrer">
                    <div className="social_item center linkedIn">
                        <FontAwesomeIcon icon={faLinkedinIn} />
                    </div>
                </a>
                <a href="https://mikemuriith.medium.com/" target="_blank" rel="noreferrer">
                    <div className="social_item center medium">
                        <FontAwesomeIcon icon={faM} />
                    </div>
                </a>
                <a href="https://www.instagram.com/michealwanjiru/" target="_blank" rel="noreferrer">
                    <div className="social_item center instagram">
                        <FontAwesomeIcon icon={faInstagram} />
                    </div>
                </a>
                <a href="https://twitter.com/mikemuriithi4/" target="_blank" rel="noreferrer">
                    <div className="social_item center twitter">
                        <FontAwesomeIcon icon={faTwitter} />
                    </div>
                </a>
            </div>
            <a href={resume} download='Michael_Wanjiru.pdf'>
                <div className="btn">
                    <h5>Resume</h5>
                    <FontAwesomeIcon icon={faDownload} />
                </div>
            </a>
        </div>
    );
}

export default App;