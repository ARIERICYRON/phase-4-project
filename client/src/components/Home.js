import React, { useEffect, useState } from "react";
import Items from "./Items";

function Home() {
  const [items, setItems] = useState([]);
  const [searchItems, setSearchItems] = useState([]);
  const url = "http://localhost:4000/products";

  useEffect(() => {
    fetch(url)
      .then((response) => response.json())
      .then((response) => {
        // console.log(response);
        setItems(response);
      });
  }, []);

  useEffect(() => {
    setSearchItems(items);
  }, [items]);
  return (
    <div className="app-container">
      <div className="main-container">
        <h2>Welcome to Jenga Shop</h2>
        <a href="#search-input">
          <button>View Products</button>
        </a>
      </div>

      <div className="input">
        <input
          id="search-input"
          type="text"
          placeholder="search..."
          onChange={(e) => {
            let query = items.filter((item) =>
              item.title.toLowerCase().includes(e.target.value.toLowerCase())
            );
            console.log("search", query);
            setSearchItems(query);
          }}
        />
      </div>
      <h1>Products</h1>
      <div className="card-container" id="card-container">
      
        {searchItems.map((item) => {
          return <Items item={item} key={item.id} />;
        })}
      </div>
    </div>
  );
}
export default Home;