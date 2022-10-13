import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";

const Signup = () => {
  // state for controlled input fields
  const [username, setUserName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const navigate = useNavigate();

  // to make routes private
  useEffect(() => {
    if(localStorage.getItem('user-info')){
        navigate("/")
    }
  }, [])

  // handle signup button
  async function signup(e){
    e.preventDefault()
    let item = { username, email, password };
    console.warn(item);
    let result = await fetch("http://localhost:4000/users", {
      method: "POST",
      body: JSON.stringify(item),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json"
      },
    });
    result = await result.json()
    localStorage.setItem("user-info", JSON.stringify(result))
    navigate("/")
  };

  return (
    <div className="login-form">
      <form className="form">
        <h2 className="title">Create Account</h2>
        <div className="user-details">
          <div className="input-box">
            <span className="details"></span>
            <input
              type="text"
              placeholder="username"
              onChange={(e) => setUserName(e.target.value)}
              value={username}
              required
            />
          </div>
          <div className="input-box">
            <span className="details"></span>
            <input
              type="text"
              placeholder="email"
              onChange={(e) => setEmail(e.target.value)}
              value={email}
              required
            />
          </div>

          <div className="input-box">
            <span className="details"></span>
            <input
              type="password"
              placeholder="password"
              onChange={(e) => setPassword(e.target.value)}
              value={password}
              required
            />
          </div>
          <button className="button" onClick={signup}>
            SignUp
          </button>
          <small>already have an account? <span>Login</span></small>
        </div>
      </form>
      {/* <div className="input-box">
        <a href="/">
          <button className="home-btn">back</button>
        </a>
      </div> */}
    </div>
  );
};

export default Signup;
