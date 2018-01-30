var app=angular.module('myapp',['ng']);
app.controller('myCtrl',['$scope','$http',function ($scope,$http) {
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
        .get('http://127.0.0.1:2017/getccplog?level='+l+"&keyword="+k+"&startTime="+s+"&endTime="+e+"&skip="+skip+"&count="+count)
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