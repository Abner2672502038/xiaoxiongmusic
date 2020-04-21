package com.hrbust.mapper;

import com.hrbust.bean.BuyCar;
import com.hrbust.bean.MallProduct;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MallMapper {
    void insertProduct(MallProduct mallProduct);

    List<MallProduct> selectAll();

    void updatepass(int parseInt);

    void updatestop(int parseInt);

    void deleteproduct(int parseInt);

    List<MallProduct> seletctAllByStatus();

    MallProduct selectProductById(int parseInt);

    void insertCar(@Param("i") int i,@Param("parseInt") int parseInt,@Param("id") int id);

    List<BuyCar> selectBuyCar(int id);

    BuyCar selectProduct(@Param("id") int id,@Param("userId") int userId);

    void updateBuycar(@Param("i") int i, @Param("addcount") int addcount);
}
