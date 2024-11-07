<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

var menus = [

	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员信息"
            }
          ,{
              "child":[
                  {
                      "buttons":[
                          "查看",
                          "新增",
                          "修改",
                          "删除"
                      ],
                      "menu":"用户管理",
                      "menuJump":"列表",
                      "tableName":"yonghu"
                  }
              ],
              "menu":"用户管理"
          }
		  ,{
		      "child":[
		          {
		              "buttons":[
		                  "查看",
		                  "新增",
		                  "修改",
		                  "删除"
		              ],
		              "menu":"联系人管理",
		              "menuJump":"列表",
		              "tableName":"lianxiren"
		          }
		      ],
		      "menu":"联系人管理"
		  }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryNews"
                    }

                ],
                "menu":"公告类型管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"联系人分类管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryLianxiren"
			        }
			    ],
			    "menu":"联系人分类管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"留言管理",
                        "menuJump":"列表",
                        "tableName":"liuyanxinxi"
                    }
                ],
                "menu":"留言管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"news"
                    }
                ],
                "menu":"公告管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    }
	,
	{
	    "backMenu":[
	        {
		      "child":[
		          {
		              "buttons":[
		                  "查看",
		                  "新增",
		                  "修改",
		                  "删除"
		              ],
		              "menu":"联系人管理",
		              "menuJump":"列表",
		              "tableName":"lianxiren"
		          }
		      ],
		      "menu":"联系人管理"
		  }
	       
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"联系人分类管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryLianxiren"
			        }
			    ],
			    "menu":"联系人分类管理"
			}
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                        "新增",
	                        "删除"
	                    ],
	                    "menu":"留言管理",
	                    "menuJump":"列表",
	                    "tableName":"liuyanxinxi"
	                }
	            ],
	            "menu":"留言管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"公告管理",
	                    "menuJump":"列表",
	                    "tableName":"news"
	                }
	            ],
	            "menu":"公告管理"
	        }
	    ],
	    "frontMenu":[
	
	    ],
	    "roleName":"用户",
	    "tableName":"yonghu"
	}
];

var hasMessage = '';
