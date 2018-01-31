var app=angular.module('myapp',['ng']);

app.controller('myCtrl',['$scope','$http',function ($scope,$http) {
//   var $table = $('#user_table').bootstrapTable($scope.table);
//   $scope.table={
//   dataField: "rows",//服务端返回数据键值 就是说记录放的键值是rows，分页时使用总记录数的键值为total
//   clickToSelect:true,
//   singleSelect:false,
//   pagination: false,//是否分页
//   customSort:(name,order) =>{},
//   pageSize: 10,//单页记录数
//   pageList: [10, 20, 50],//分页步进值
//   sidePagination: "client",//服务端分页
//   buttonsAlign: "left",//按钮对齐方式 子询价编号 发货地址 送货地址 货物名称 货物数量 所需车长 询价时间 紧急程度 询价状态
//   columns: [
//       {field: "level",title: "级别",align: "center",valign: "middle",},
      
//   ],
//   cellStyle:( row, index)=>{
//     return {classes:'table_cell'}
//   },
//   data: [{level:"test"},1],
//   actionFormatter:function(value, row, index){
//   },
//   locale: "zh-CN"//中文支持,
// }
  //初始化下拉框、单选框
  $scope.level="0";
  $scope.programe="ccp";
  $scope.submit=function () {
     var s = $scope.startTime || '';
     var e = $scope.endTime || '';
     var l = $scope.level || '';
     var k =$scope.keyword || '';
     var skip =$scope.skip || '';
     var count =$scope.count || '';
     console.log('programe',$scope.programe);
     switch($scope.programe)
      {
        case "ccp":
        $http
        .get('http://127.0.0.1:2017/getccplog?level='+l+"&keyword="+k+"&startTime="+s+"&endTime="+e+"&skip="+skip+"&count=111"+count)
        .success(function (data) {
          //解析服务端返回的结果
          console.log(data.data);
          $scope.total=data.data.total;
          $scope.list=data.data.data;
          $scope.show=data.status;
          $scope.curcount=data.data.curcount;
        })
        break;
        case "tms":
        $http
        .get('http://127.0.0.1:2017/gettmslog?level='+l+"&keyword="+k+"&startTime="+s+"&endTime="+e+"&skip="+skip+"&count="+count)
        .success(function (data) {
          //解析服务端返回的结果
          console.log(data.data);
          $scope.total=data.data.total;
          $scope.list=data.data.data;
          $scope.show=data.status;
          $scope.curcount=data.data.curcount;
        })
        break;
        case "csp":
        $http
        .get('http://127.0.0.1:2017/getcsplog?level='+l+"&keyword="+k+"&startTime="+s+"&endTime="+e+"&skip="+skip+"&count="+count)
        .success(function (data) {
          //解析服务端返回的结果
          console.log(data.data);
          $scope.total=data.data.total;
          $scope.list=data.data.data;
          $scope.show=data.status;
          $scope.curcount=data.data.curcount;
        })
        break;
        
      }
    };
    $scope.export=function () {
      var s = $scope.startTime || '';
      var e = $scope.endTime || '';
     var l = $scope.level || '';
     var k =$scope.keyword || '';
     switch($scope.programe)
     {
      case "ccp":
      window.location.href= 'http://127.0.0.1:2017/getccplog/export?level='+l+"&keyword="+k+"&startTime="+s+"&endTime="+e;
      break;
      case "tms":
      window.location.href= 'http://127.0.0.1:2017/gettmslog/export?level='+l+"&keyword="+k+"&startTime="+s+"&endTime="+e;
      break;
      case "csp":
      window.location.href= 'http://127.0.0.1:2017/getcsplog/export?level='+l+"&keyword="+k+"&startTime="+s+"&endTime="+e;
      break;
    }
    };
  }]);