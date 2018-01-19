const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const pool = require('./dbpool');   //使用连接池模块获取连接
const schedule = require('node-schedule');
const getccplog =require('./routes/getccplog');
const getcsplog =require('./routes/getcsplog');
const gettmslog =require('./routes/gettmslog');
const URL =require('url');
app.use(bodyParser.json());
app.use(bodyParser.text());

/**
 * 日志级别对应的颜色枚举
 */
const levelColorEnum = {
    info: [32, 39],
    warn: [33, 39],
    error: [31, 39],
};

/**
 * 获取日志颜色   
 * 
 * @param {string} level - 日志级别
 */
const colorize = level => {
    const color = levelColorEnum[level];
    return {
        start: `\x1B[${color[0]}m`,
        end: `\x1B[${color[1]}m`,
    };
};
//向客户端提供静态资源的响应
app.use(express.static('./demo'));

/**
 * 允许跨域
 */
app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept');
    res.setHeader('Content-Type','text/javascript;charset=UTF-8'); //解决res乱码
    next();
});

app.use('/log', (req, res) => {
    let logs = req.body;
    console.log('logs',logs);
    if (typeof logs === 'string') {
        try {
            logs = JSON.parse(logs);
            res.send(logs); 
        } catch (err) {
            logs = null;
        }
    }

    // 如果日志是一个数组，说明是正常的数据
    if (Array.isArray(logs)) {
       
        logs.forEach(log => {
            const time = log.time;
            const level = log.level;
           // const msgs = JSON.stringify(log.messages);
           const msgs = JSON.stringify(log.messages);
            const uid=log.messages[0];
            const url = log.url;
            const userAgent = log.agent;
            const color = colorize(level);
            console[level](`${color.start}[${time}] [${level.toUpperCase()}] [${url}] -${color.end}`, ...msgs, `用户代理: ${userAgent}`);
            //发送到数据库  
            //截取域名判断
            var hostname=URL.parse(url,false,true).hostname;
            // console.log(hostname);

            switch(hostname)
            {
                case "tms.sowl.cn":
                      //tms
                    pool.getConnection((err, conn)=>{
                        if(err){
                            return;
                        }
                        conn.query('INSERT INTO tms_log_total VALUES(NULL,?,?,?,?,?,?)',
                            [level,time,uid,url,userAgent,msgs], (err, result)=>{ 
                                if(err){
                                    return;
                                }  
                            conn.release();
                        })
                    })
                    break;
                case "csp.sowl.cn":
                     //csp
                    pool.getConnection((err, conn)=>{
                        if(err){
                            return;
                        }
                        conn.query('INSERT INTO csp_log_total VALUES(NULL,?,?,?,?,?,?)',
                            [level,time,uid,url,userAgent,msgs], (err, result)=>{ 
                                if(err){
                                    return;
                                }  
                            conn.release();
                        })
                    })
                    break;
                case "ccp.sowl.cn":
                    //ccp
                    pool.getConnection((err, conn)=>{
                        if(err){
                            return;
                        }
                        conn.query('INSERT INTO ccp_log_total VALUES(NULL,?,?,?,?,?,?)',
                            [level,time,uid,url,userAgent,msgs], (err, result)=>{ 
                                if(err){
                                    return;
                                }  
                            conn.release();
                        })
                    })
                    console.log("ccp");
                    break;       
                default:
                console.log('域名不匹配');
            }
        });
    }

    // 仅返回一个空字符串，节省带宽
    res.end('');
});

app.use('/getccplog',getccplog);
app.use('/getcsplog',getcsplog);
app.use('/gettmslog',gettmslog);


//定时清除日志
var rule = new schedule.RecurrenceRule();
var curDate=new Date().getDate();//获取当前日期【几号】
rule.dayOfMonth = curDate;//设置每月【几号】执行任务

//rule.dayOfMonth = 1;//设置每月1号执行任务
var dellog = schedule.scheduleJob(rule, function(){
var lastMonth = new Date(new Date().getTime() - 86400000*30).toLocaleString();
//var lastMonth = new Date(new Date().getTime() - 100000).toLocaleString();
console.log(lastMonth);
pool.getConnection((err, conn)=> {
    conn.query(
      "DELETE FROM ccp_log_total WHERE time < ? ",
      [lastMonth],
      (err, result)=> {
          if(err){
              console.log(err);
              return ;
          }
        if(result.length>0){
            console.log('删除日志成功');
        }
        conn.release();
      })
      conn.query(
      "DELETE FROM csp_log_total WHERE time < ? ",
      [lastMonth],
      (err, result)=> {
          if(err){
              console.log(err);
              return ;
          }
        if(result.length>0){
            console.log('删除日志成功');
        }
        conn.release();
      })
      conn.query(
        "DELETE FROM tms_log_total WHERE time < ? ",
        [lastMonth],
        (err, result)=> {
            if(err){
                console.log(err);
                return ;
            }
          if(result.length>0){
              console.log('删除日志成功');
          }
          conn.release();
        })
  })
});

//配置接口服务
// var server = app.listen(2017,'192.168.1.188',function () {

//     var host = server.address().address;
    
//      var port = server.address().port;
    
//         console.log('demo listening at http://%s:%s', host, port);
//     })


app.listen(2017);
console.log('demo start');
