/***
 * 用户相关功能模块
 * 向外提供 login()和register()两个请求处理函数
 */
const qs = require('querystring');  //使用qs模块解析POST数据
const pool = require('./dbpool');   //使用连接池模块获取连接

module.exports = {
  /***
 * 提交log到数据库
 */
  logsub: (req, res)=> {
    //读取POST请求数据：req.on('data', (buf)=>{})
    req.on('data', (buf)=> {
      console.log(buf.toString());//uname=tom&upwd=123
      //解析出请求数据
      var obj = qs.parse(buf.toString());
      //获取数据库连接，提交SQL给数据库
      pool.getConnection((err, conn)=> {
        conn.query(
          'INSERT INTO log_total VALUES(NULL,?,?)',
          [obj.url, obj.level],
          (err, result)=> {
            var output = {    //要输出给客户端的数据
              code: 1,
              msg: '记录成功',
              uid: result.insertId
            };
            res.json(output); //把数据转换为JSON字符串并输出
            conn.release();
          })
      });
    })
  },

};