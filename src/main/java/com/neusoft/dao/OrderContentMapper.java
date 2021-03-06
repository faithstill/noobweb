package com.neusoft.dao;

import com.neusoft.domain.OrderContent;
import com.neusoft.domain.OrderContentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrderContentMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_content
     *
     * @mbg.generated Sun Jul 29 17:17:17 CST 2018
     */
    long countByExample(OrderContentExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_content
     *
     * @mbg.generated Sun Jul 29 17:17:17 CST 2018
     */
    int deleteByExample(OrderContentExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_content
     *
     * @mbg.generated Sun Jul 29 17:17:17 CST 2018
     */
    int insert(OrderContent record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_content
     *
     * @mbg.generated Sun Jul 29 17:17:17 CST 2018
     */
    int insertSelective(OrderContent record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_content
     *
     * @mbg.generated Sun Jul 29 17:17:17 CST 2018
     */
    List<OrderContent> selectByExample(OrderContentExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_content
     *
     * @mbg.generated Sun Jul 29 17:17:17 CST 2018
     */
    int updateByExampleSelective(@Param("record") OrderContent record, @Param("example") OrderContentExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_content
     *
     * @mbg.generated Sun Jul 29 17:17:17 CST 2018
     */
    int updateByExample(@Param("record") OrderContent record, @Param("example") OrderContentExample example);
}