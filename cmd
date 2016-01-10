//////netconvert -n circular.nod.xml -t circular.typ.xml -e circular.edg.xml -o circular.net.xml

//车辆运动环境模型生成
netconvert -c circular.netccfg

//车辆流文件生成
duarouter --flow-files circular.flow.xml --net-file circular.net.xml --output-file MY.rou.xml

//可视化运行
sumo-gui -c circular.sumocfg
sumo -c circular.sumocfg

//生成ns3文件
python traceExporter.py --fcd-input new_200.xml --ns2mobility-output My_mobility100.tcl

//轨迹文件查看
sumo-gui -n circular.net.xml

//环境变量设置
SUMO_H=/usr/local/src/sumo-0.21.0
export SUMO_HOME=$SUMO_H
