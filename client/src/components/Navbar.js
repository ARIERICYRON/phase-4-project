import React from "react";
import { FaCartArrowDown } from "react-icons/fa";
import { Link, useNavigate } from "react-router-dom";
import Signup from "./Signup";
import Item from "./Item";
function Navbar() {
  const navigate = useNavigate();
  // logout redirect
  const logout = () => {
    localStorage.clear();
    navigate("/");
  };
  // redirect to cart
  const redirectCart = (Item) => {
    this.handleClick();
    navigate("/carts");
  };
  // redirect to login
  const login = () => {
    navigate("/signup");
  };
  return (
    <div className="main">
      <nav className="navbar">
        <Link to="/">
          <h1>Jenga Shop</h1>
        </Link>
        <nav className="nav-items">
          {localStorage.getItem("user-info") ? (
            <>
              <Link to="/carts">
                <FaCartArrowDown /> Cart
              </Link>
              <button onClick={logout}>Logout</button>
            </>
          ) : (
            <>
              <button onClick={login}>Login</button>
            </>
          )}
        </nav>
      </nav>
    </div>
  );
}
export default Navbar;
