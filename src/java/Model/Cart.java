/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/**
 *
 * @author INT303
 */
public class Cart implements Serializable {
    private List<LineItem> items = null ;
    
    public int getSize(){
        int count = 0;
        for(LineItem item : items){
            count = count + 1;
        }
        return count;
    }

    public List<LineItem> getItems() {
        return items;
    }

    public Cart() {
        items = new ArrayList<>();
    }
    
    public void add(Photo p) {
        LineItem item = new LineItem();
        item.setP(p);
        
        int x = items.indexOf(item);
        if (x<0) {
            items.add(item);
        } else {
            LineItem lt = items.get(x);
        }
    }
    
    public void remove(Photo p) {
        LineItem item = new LineItem();
        item.setP(p);
        items.remove(item);
    }
    

        
    public class LineItem implements Serializable, Comparable<LineItem> {
        private Photo p ;
        private double discount ;

        @Override
        public int hashCode() {
            int hash = 5;
            return hash;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            if (getClass() != obj.getClass()) {
                return false;
            }
            final LineItem other = (LineItem) obj;
            if (p.getId()== other.getP().getId()) {
                return true;
            }
            return false;
        }

        @Override
        public int compareTo(LineItem other) {
            return this.getP().getId() - other.getP().getId();
        }
        
        public Photo getP() {
            return p;
        }

        public void setP(Photo p) {
            this.p = p;
        }


        public double getDiscount() {
            return discount;
        }

        public void setDiscount(double discount) {
            this.discount = discount;
        }
    }
}
