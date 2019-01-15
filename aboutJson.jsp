                   var reg = /^\[(.*)\]$/;
		               //正则表达式，用于查找转化后字符串[]中的内容
		    			    	var jsonData = JSON.stringify(result);// 转成JSON格式
		    			    	//将object对象转化为字符串
		    			    	var regResult = reg.exec(jsonData);
		    			    	//提取字符串中[]的字符串
		    			    	var regResult1 = regResult[1];
		    			    	//获取匹配的第二个分组，第一个分组是整个匹配的字符串
		    			    	var expression = /(\{.*?\}),?/g;
		    			    	//用于查找{}以及其中的内容
		    			    	var str ="<option value=''>全部</option>";
		    			    	//初始化一个字符串
		    			    	while ((resultS1 = expression.exec(regResult1)) != null) {
		    			    		//从上一次查找剩余的结果开始查找
		    			    		//务必加上g 匹配全局模式 从全局进行查找，如果不加g，则只查找第一个，而不会查找所有匹配到的
		    						var xmlx = JSON.parse(resultS1[1]);
		    			    		//将字符串转换为json对象
		    						console.log(xmlx["id"]);
		    						str = str+"<option value='"+xmlx["id"]+"'>"+xmlx["name"]+"</option>";
		    						//将得到的结果遍历后加入到下拉框中
		    					}
		    			    	jdxqmcList.html(str);
		    			    	//将得到的结果放到下拉框中
