import MySQLdb as mysql
from flask import Flask,request,render_template
import json
app = Flask(__name__)
con = mysql.connect(user='root',passwd='111111',db='sun',host='localhost')
con.autocommit(True)
cur = con.cursor()
@app.route('/')
def index():
	return render_template('index1.html')
	# return json.dumps(str_dict)
@app.route('/pull')
def pull():
	str_dict={
		"data_m" : ['1M','2M','3M','4M','5M','6M','7M','8M','9M','10M','11M','12M'],
		"data_pull":[2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3],
		"data_falt":[2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3],
	}
	return json.dumps(str_dict)
@app.route('/select')
def select():
	select_dict={}
	data_tuple=[]
	return_list=[]
	sql_count= 'select memory from cmdb'
	cur.execute(sql_count)
	search_list=cur.fetchall()
	for x in search_list:
		b="Memory Num is %s" % (x[0])
		select_dict[b]=select_dict.get(b,0)+1
	for (k,v) in select_dict.items():
		data_tuple.append({"value":v,"name":k})
	select_list=select_dict.keys()
	return json.dumps({"legend_data":select_list,"series_data":data_tuple})
@app.route('/tupian')
def tupian():
	tupian_list=''
	sql_tupian='select name,path,node_id from tupian order by node_id limit 0,4'
	cur.execute(sql_tupian)
	sql_tupian_list=cur.fetchall()
	for x in sql_tupian_list:
		tupian_list=tupian_list + '''<div class="col-md-3 tupian"><p>No.%s %s</p><img width="100%%" src="%s"></div>'''  % (x[2],x[0],x[1])
	print tupian_list
	return json.dumps(tupian_list)
if __name__ == '__main__':
	app.run(debug=True)