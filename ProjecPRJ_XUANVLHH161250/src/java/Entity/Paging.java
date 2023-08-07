/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author Le Vu
 */
public class Paging {
    private int n;
    private int nrpp;
    private int index;

    public Paging() {
    }

    public Paging(int n, int nrpp, int index) {
        this.n = n;
        this.nrpp = nrpp;
        this.index = index;
    }
    
    private int totalPage;
    private int begin;
    private int end;
    
    public void calculate(){
//        if(n%nrpp==0)
//            totalPage = n/nrpp;
//        else
//            totalPage = n/nrpp+1;
//        totalPage = n/nrpp+n%nrpp==0?0:1; //c2
        totalPage = (n+nrpp-1)/nrpp; //c3
        index = index>=totalPage?totalPage-1:index;
        begin = index*nrpp;
        end = begin+nrpp-1;
        end = end>=n?n-1:end; //ket thuc tai end
    }

    public int getN() {
        return n;
    }

    public void setN(int n) {
        this.n = n;
    }

    public int getNrpp() {
        return nrpp;
    }

    public void setNrpp(int nrpp) {
        this.nrpp = nrpp;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getBegin() {
        return begin;
    }

    public void setBegin(int begin) {
        this.begin = begin;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }
    
    
}
