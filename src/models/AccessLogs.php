<?php

namespace YiiAccessLog\models;

use YiiHelper\abstracts\Model;

/**
 * 模型 : 访问日志模型
 * This is the model class for table "{{%access_logs}}".
 *
 * @property int $id 自增ID
 * @property string $system_code 系统别名
 * @property string $trace_id 客户端日志ID
 * @property string $url_path 接口的path
 * @property string $method 请求方法[get post put...]
 * @property string|null $request_data 接口发送信息
 * @property int $is_success 是否成功[0:失败; 1:成功]
 * @property string $message 返回消息
 * @property int $response_code http状态返回码
 * @property string|null $response_data 接口返回信息
 * @property string|null $exts 扩展信息
 * @property float $use_time 接口耗时
 * @property string $ip 登录IP
 * @property int $uid 用户ID
 * @property string $created_at 创建时间
 */
class AccessLogs extends Model
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%access_logs}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['system_code'], 'required'],
            [['request_data', 'response_data', 'exts', 'created_at'], 'safe'],
            [['is_success', 'response_code', 'uid'], 'integer'],
            [['use_time'], 'number'],
            [['system_code'], 'string', 'max' => 50],
            [['trace_id'], 'string', 'max' => 32],
            [['url_path'], 'string', 'max' => 200],
            [['method'], 'string', 'max' => 10],
            [['message'], 'string', 'max' => 255],
            [['ip'], 'string', 'max' => 15],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id'            => '自增ID',
            'system_code'   => '系统代码',
            'trace_id'      => '日志ID',
            'url_path'      => 'URL路径',
            'method'        => '请求方法',
            'request_data'  => '接口参数',
            'is_success'    => '是否成功',
            'message'       => '返回消息',
            'response_code' => 'http状态',
            'response_data' => '接口响应',
            'exts'          => '扩展信息',
            'use_time'      => '接口耗时',
            'ip'            => '登录IP',
            'uid'           => '用户ID',
            'created_at'    => '创建时间',
        ];
    }

    const METHOD_GET  = 'GET';
    const METHOD_POST = 'POST';
    const METHOD_PUT  = 'PUT';

    /**
     * 获取所有请求方式
     *
     * @return array
     */
    public static function methods()
    {
        return [
            self::METHOD_GET  => 'GET',
            self::METHOD_POST => 'POST',
            self::METHOD_PUT  => 'PUT',
        ];
    }
}
