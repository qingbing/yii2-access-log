<?php
/**
 * @link        http://www.phpcorner.net
 * @author      qingbing<780042175@qq.com>
 * @copyright   Chengdu Qb Technology Co., Ltd.
 */

namespace YiiAccessLog\interfaces;


use YiiHelper\services\interfaces\IService;

/**
 * 接口 ： 接口访问日志
 *
 * Interface IAccessLogService
 * @package YiiAccessLog\interfaces
 */
interface IAccessLogService extends IService
{
    /**
     * 接口访问日志列表
     *
     * @param array|null $params
     * @return array
     */
    public function list(array $params = []): array;

    /**
     * 查看接口访问日志详情
     *
     * @param array $params
     * @return mixed
     */
    public function view(array $params);
}