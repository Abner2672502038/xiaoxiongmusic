package com.hrbust.service;

import com.hrbust.bean.BuyCar;
import com.hrbust.bean.MallProduct;

import java.util.List;

public interface MallService {

    void insertProduct(MallProduct mallProduct);

    List<MallProduct> selectAll();

    void updatepass(int parseInt);

    void updatestop(int parseInt);

    void deleteproduct(int parseInt);

    List<MallProduct> selectAllByStatus();

    MallProduct selectProductById(int parseInt);

    void insertCar(int i, int parseInt,int id);

     List<BuyCar> selectBuyCar(int id);

    BuyCar selectproduct(int id, int userId);

    void updateBuycar(int i, int addcount);
}
