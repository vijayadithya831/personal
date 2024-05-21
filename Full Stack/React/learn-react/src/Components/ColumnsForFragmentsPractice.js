import React from 'react';

function Row1() {
    return(
        <React.Fragment>
            <td>Column 1</td>
            <td>Column 2</td>
            <td>Column 3</td>
        </React.Fragment>
    );
}

function Row2() {
    return(
        <React.Fragment>
            <td>Column 1</td>
            <td>Column 2</td>
            <td>Column 3</td>
        </React.Fragment>
    );
}

function Row3() {
    const products = [1,2,3];
    return(
        <React.Fragment>
            {products.map(product => (
                <React.Fragment key={product.id}>
                    <h1>Heading</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores non doloribus voluptatem hic dolorem aliquid ipsum similique, quo eos nobis dolorum eveniet. Repudiandae aut nulla voluptatibus unde omnis modi quae.</p>
                </React.Fragment>
            ))}
        </React.Fragment>
    );
}

export {Row1,Row2,Row3};


