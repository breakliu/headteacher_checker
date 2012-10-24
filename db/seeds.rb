# coding: utf-8
Month.delete_all
Month.create([
	{ id: 1, name: '一月' }, 
	{ id: 2, name: '二月' }, 
	{ id: 3, name: '三月' }, 
	{ id: 4, name: '四月' }, 
	{ id: 5, name: '五月' }, 
	{ id: 6, name: '六月' }, 
	{ id: 7, name: '七月' }, 
	{ id: 8, name: '八月' }, 
	{ id: 9, name: '九月' }, 
	{ id: 10, name: '十月' }, 
	{ id: 11, name: '十一月' }, 
	{ id: 12, name: '十二月' }
])

Grade.delete_all
Grade.create([
	{ name: '一年级(1)班', teacher_name: '刘玲' },
	{ name: '一年级(2)班', teacher_name: '刘佩仪' },
	{ name: '一年级(3)班', teacher_name: '尹银玉' },
	{ name: '二年级(1)班', teacher_name: '钟婉秋' },
	{ name: '二年级(2)班', teacher_name: '尹秀玲' },
	{ name: '二年级(3)班', teacher_name: '俞显耀' },
	{ name: '三年级(1)班', teacher_name: '潘小玲' },
	{ name: '三年级(2)班', teacher_name: '袁小燕' },
	{ name: '三年级(3)班', teacher_name: '尹玉村' },
	{ name: '四年级(1)班', teacher_name: '韩桂连' },
	{ name: '四年级(2)班', teacher_name: '卢家昌' },
	{ name: '四年级(3)班', teacher_name: '刘玉兰' },
	{ name: '五年级(1)班', teacher_name: '钟健贞' },
	{ name: '五年级(2)班', teacher_name: '陈焯亨' },
	{ name: '六年级(1)班', teacher_name: '尹荏休' },
	{ name: '六年级(2)班', teacher_name: '钟柳枝' },
])