import React from "react";

function ProductsList1 (props) {
    const products = ['Laptop', 'Redmi 10', 'Backpack', 'Smart Watch'];
    const productsList = products.map(product => <h2>{product}</h2>)
    return(
        <div>
            {productsList}
        </div>
    );
}

function ProductsList2(props) {
    const products = [
        {
            productId: 11101,
            productPrice: 10000,
            productName: 'HP Pavilion',
            productCompany: 'HP'
        },
        {
            productId: 11102,
            productPrice: 8000,
            productName: 'Redmi 10',
            productCompany: 'Xiaomi'
        },
        {
            productId: 11103,
            productPrice: 5000,
            productName: 'Skybags Backpack',
            productCompany: 'Skybags'
        }
    ];

    const productsList = products.map(product => 
        <h2>Product ID: {product.productId}<br/>
        Product Price: {product.productPrice}<br/>
        Product Name: {product.productName}<br/>
        Product Company: {product.productCompany}</h2>
    );
    return(
        <div>{productsList}</div>
    );
}

export {ProductsList1, ProductsList2};