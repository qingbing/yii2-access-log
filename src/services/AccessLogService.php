<?php
/**
 * @link        http://www.phpcorner.net
 * @author      qingbing<780042175@qq.com>
 * @copyright   Chengdu Qb Technology Co., Ltd.
 */

namespace YiiAccessLog\services;


use Yii;
use yii\base\InvalidConfigException;
use yii\db\Exception;
use YiiAccessLog\interfaces\IAccessLogService;
use YiiAccessLog\models\AccessLogs;
use YiiHelper\abstracts\Service;
use YiiHelper\helpers\Pager;

/**
 * 服务 ： 接口访问日志
 *
 * Class AccessLogService
 * @package YiiAccessLog\services
 */
class AccessLogService extends Service implements IAccessLogService
{
    /**
     * 接口访问日志列表
     *
     * @param array|null $params
     * @return array
     * @throws InvalidConfigException
     */
    public function list(array $params = []): array
    {
        // 构建查询query
        $query = $this->getModelClass()::find()
            ->andFilterWhere(['=', 'code', $params['system_code']])
            ->andFilterWhere(['=', 'trace_id', $params['trace_id']])
            ->andFilterWhere(['=', 'method', $params['method']])
            ->andFilterWhere(['=', 'is_success', $params['is_success']])
            ->andFilterWhere(['=', 'ip', $params['ip']])
            ->andFilterWhere(['=', 'uid', $params['uid']])
            ->andFilterWhere(['like', 'url_path', $params['url_path']])
            ->andFilterWhere(['like', 'message', $params['message']])
            ->andFilterWhere(['>=', 'created_at', $params['start_at']])
            ->andFilterWhere(['<=', 'created_at', $params['end_at']]);
        // 分页查询返回
        return Pager::getInstance()
            ->setAsArray(true)
            ->pagination($query, $params['pageNo'], $params['pageSize']);
    }

    /**
     * 查看接口访问日志详情
     *
     * @param array $params
     * @return array|false|mixed
     * @throws InvalidConfigException
     * @throws Exception
     */
    public function view(array $params)
    {
        // 构建查询query
        $query = $this->getModelClass()::find()
            ->andWhere(['=', 'id', $params['id']]);
        return $query->createCommand()->queryOne();
    }

    /**
     * 获取请求访问日志模型实例
     *
     * @return object|AccessLogs
     * @throws InvalidConfigException
     */
    protected function getModelClass()
    {
        return Yii::createObject(AccessLogs::class);
    }
}