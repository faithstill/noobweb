package com.neusoft.dao;

import com.neusoft.domain.Mycollection;
import com.neusoft.domain.MycollectionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MycollectionMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mycollection
     *
     * @mbg.generated Wed Aug 01 12:03:47 CST 2018
     */
    long countByExample(MycollectionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mycollection
     *
     * @mbg.generated Wed Aug 01 12:03:47 CST 2018
     */
    int deleteByExample(MycollectionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mycollection
     *
     * @mbg.generated Wed Aug 01 12:03:47 CST 2018
     */
    int insert(Mycollection record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mycollection
     *
     * @mbg.generated Wed Aug 01 12:03:47 CST 2018
     */
    int insertSelective(Mycollection record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mycollection
     *
     * @mbg.generated Wed Aug 01 12:03:47 CST 2018
     */
    List<Mycollection> selectByExample(MycollectionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mycollection
     *
     * @mbg.generated Wed Aug 01 12:03:47 CST 2018
     */
    int updateByExampleSelective(@Param("record") Mycollection record, @Param("example") MycollectionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mycollection
     *
     * @mbg.generated Wed Aug 01 12:03:47 CST 2018
     */
    int updateByExample(@Param("record") Mycollection record, @Param("example") MycollectionExample example);
}