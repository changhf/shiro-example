package com.github.zhangkaitao.shiro.chapter21.service;

import java.util.List;

/**
 * <p>User: Zhang Kaitao
 * <p>Date: 14-1-28
 * <p>Version: 1.0
 */
public interface UserRunAsService {
    /**
     * 授予身份
     *
     * @param fromUserId
     * @param toUserId
     */
    void grantRunAs(Long fromUserId, Long toUserId);

    /**
     * 回收身份
     *
     * @param fromUserId
     * @param toUserId
     */
    void revokeRunAs(Long fromUserId, Long toUserId);

    /**
     * 关系存在判断
     * @param fromUserId
     * @param toUserId
     * @return
     */
    boolean exists(Long fromUserId, Long toUserId);

    /**
     * 根据toUserId查找fromUserId列表
     * @param toUserId
     * @return
     */
    List<Long> findFromUserIds(Long toUserId);

    /**
     * 根据fromUserId查找toUserId列表
     * @param fromUserId
     * @return
     */
    List<Long> findToUserIds(Long fromUserId);

}
