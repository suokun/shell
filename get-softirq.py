import os
import time
import commands

os.system('sudo echo 0-3 > /proc/irq/11/smp_affinity_list')

os.system("cat /proc/interrupts | grep 'CPU'")
out1,str1=commands.getstatusoutput("cat /proc/softirqs | grep NET_RX | awk '{print $2, $3, $4, $5}'")
print str1



time.sleep(5)



out2,str2=commands.getstatusoutput("cat /proc/softirqs | grep NET_RX | awk '{print $2, $3, $4, $5}'")
print str2

array1 = str1.split(" ")
array2 = str2.split(" ")


print " "
for i in range(len(array1)):
    print "CPU %d delta:%d"%(i, int(array2[i]) - int(array1[i]))
