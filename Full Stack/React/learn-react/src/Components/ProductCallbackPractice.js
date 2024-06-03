import React from "react";
const ProductCallbackPractice = React.memo( ({product, addToCart}) => {
    console.log(`${product} product component is re-rendered`)
    return(
        <div className='product'>
            <h1>{product}</h1>
            <button onClick={addToCart}>Add to cart</button>
        </div>
    );
})

export default ProductCallbackPractice;