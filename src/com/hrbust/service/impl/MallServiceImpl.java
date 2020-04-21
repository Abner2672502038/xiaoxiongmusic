package com.hrbust.service.impl;

import com.hrbust.bean.BuyCar;
import com.hrbust.bean.MallProduct;
import com.hrbust.mapper.MallMapper;
import com.hrbust.service.MallService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MallServiceImpl implements MallService {
    @Autowired
    MallMapper mallMapper;

    @Override
    public void insertProduct(MallProduct mallProduct) {
        mallMapper.insertProduct(mallProduct);

    }

    @Override
    public List<MallProduct> selectAll() {
        return mallMapper.selectAll();
    }

    @Override
    public void updatepass(int parseInt) {
        mallMapper.updatepass(parseInt);
    }

    @Override
    public void updatestop(int parseInt) {
        mallMapper.updatestop(parseInt);
    }

    @Override
    public void deleteproduct(int parseInt) {
        mallMapper.deleteproduct(parseInt);
    }

    @Override
    public List<MallProduct> selectAllByStatus() {
        return mallMapper.seletctAllByStatus();
    }

    @Override
    public MallProduct selectProductById(int parseInt) {
        return mallMapper.selectProductById(parseInt);
    }

    @Override
    public void insertCar(int i, int parseInt,int id) {
        mallMapper.insertCar(i, parseInt,id);
    }

    @Override
    public List<BuyCar> selectBuyCar(int id) {
       return mallMapper.selectBuyCar(id);
    }

    @Override
    public BuyCar selectproduct(int id,int userId) {
        return mallMapper.selectProduct(id,userId);
    }

    @Override
    public void updateBuycar(int i, int addcount) {
        mallMapper.updateBuycar(i, addcount);
    }

}
