import React from 'react';
import {Row1,Row2} from './ColumnsForFragmentsPractice';

function TableForFragmentsPractice() {
    return(
        <table>
            <tbody>
                <tr>
                    <Row1/>
                </tr>
                <tr>
                    <Row2/>
                </tr>
            </tbody>
        </table>
    );
}

export default TableForFragmentsPractice;