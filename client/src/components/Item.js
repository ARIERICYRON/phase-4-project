import axios from "axios";
import React, { useState, useEffect } from "react";
import { useNavigate, useParams } from "react-router-dom";

function Item() {
  const { id } = useParams();
  const [item, setItem] = useState([]);
  const [supplier, setSupplier] = useState([]);
  const [review, setReview] = useState([]);
  const [userReview, setUserReview] = useState([]);
  const navigate = useNavigate()

  // post item
  const handleClick = (item) => {
    console.log(item);
    const title = item.title;
    const price = item.price;
    const description = item.description;
    const image_url = item.image_url;

    axios
      .post("http://localhost:3000/carts", {
        title,
        description,
        price,
        image_url,
      })
      .then(() => {
        alert("product added to cart");
      })
      .catch((error) => {
        console.log(error);
      });
      navigate("/carts")
  };

  useEffect(() => {
    fetch(`http://localhost:3000/products/${id}`)
      .then((response) => response.json())
      .then((response) => {
        console.log(response);
        // returns the product and its properties
        setItem(response);
        // returns the reviews for the product
        // console.log(response.reviews);
        setReview(response.reviews);
        
      });
  }, [id]);

  // supplier information by id
  useEffect(() => {
    fetch(`http://localhost:3000/suppliers/${id}`)
      .then((response) => response.json())
      .then((response) => {
        setSupplier(response);
      });
  }, [id]);

  // reviews by users
  useEffect(() => {
    fetch(`http://localhost:3000/users/${id}`)
      .then((response) => response.json())
      .then((response) => {
        // console.log(response);
        setUserReview(response);
      });
  }, [id]);

 

  return (
    <div className="item">
      <div className="card-info">
        <img src={item.image_url} alt={item.title}></img>
        <div>
          <h2>{item.title}</h2>
          <hr></hr>
          <p>{item.description}</p>
          <p>
            supplied by: <strong>{supplier.name}</strong>
          </p>
          <p className="quantity">
            <strong>{supplier.quantity_left}</strong> product(s) in stock
          </p>
          <p>
            <strong>{item.price} KES</strong>
          </p>

          <button onClick={() => handleClick(item)}>Add to Cart</button>
        </div>
      </div>
      <div className="reviews">
        <h2>Reviews</h2>
        {review.map((reviewItem) => {
          return(
            <div className="review-item" key={reviewItem.id}>
              <p><em>{userReview.username}</em>: <strong>{reviewItem.review_content}</strong></p>
            </div>
            
          )
        })}
      </div>
    </div>
  );
}
export default Item;
