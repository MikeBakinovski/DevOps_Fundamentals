print()
import math
nets_lst = []
routs= int(input("How many routers in your network? "))
# routers = 3
nets_lst.append(routs)
nets = int(input("How many subnetworks? ")) 
# nets = 8
count = 1
for i in range(1, nets + 1):
	vol = int(input("How many hosts in subnetwork " + str(count) + "? "))
	nets_lst.append(vol)
	count = count + 1

while True:
	choise = input("One more network? y/n: ")
	if choise == 'n':
		break
	else:
		vol = int(input("How many hosts in subnetwork " + str(count) + "? "))
		nets_lst.append(vol)
		count = count + 1

res = int(input("Min host reserve %? "))
res_coof = 1 + (res/100) 

nets_lst_wres = []
for h in nets_lst:
	nets_lst_wres.append(math.ceil(h * res_coof))

def prefix_and_hosts(nets_lst_wres):
	prefix_lst = []
	overal_hosts = 0
	for h_in_net in nets_lst_wres:
		for i in range(32):
			h_in_mask = 2**(i) - 2
			prefix = 32 - i
			if h_in_mask >= h_in_net:
				prefix_lst.append(prefix)
				overal_hosts = overal_hosts + h_in_mask + 2
				break
	return prefix_lst, overal_hosts

def percent_l(nets_l, prefix_l):
	percent_l = []
	for h_in_net, prefix in zip(nets_l, prefix_l):
		h_in_mask = 2**(32 - prefix) - 2
		h_bal = h_in_mask - h_in_net
		percent = ((h_in_mask)/100)
		bal_percent = math.floor((h_bal)/percent)
		percent_l.append(bal_percent)
	return percent_l

prefix_lst, overal_hosts = prefix_and_hosts(nets_lst_wres)
reserv_lst = percent_l(nets_lst, prefix_lst)
prefix_ov, overal_ov = prefix_and_hosts([overal_hosts])
reserv_ov = percent_l([overal_hosts],prefix_ov)

print()
print("+{0:-^14}+{1:-^10}+{2:-^6}+{3:-^9}+{4:-^7}+".format("","","","",""))
print("|{0:^14}|{1:^10}|{2:^6}|{3:^9}|{4:^7}|".format("Network name", "Occupied", "Mask", "Overall", "Spare"))
print("+{0:-^14}+{1:-^10}+{2:-^6}+{3:-^9}+{4:-^7}+".format("","","","",""))
print("|{0:^14}|{1:>6}    |{2:^6}|{3:>6}   |{4:>5}  |".format("Routers",nets_lst[0],"/" + str(prefix_lst[0]), str(2**(32 - prefix_lst[0]) - 2),str(reserv_lst[0]) + "%"))
for i in range(1, len(nets_lst)):
	print("|{0:.^14}|{1:.^10}|{2:.^6}|{3:.^9}|{4:.^7}|".format("","","","",""))
	print("|{0:^14}|{1:>6}    |{2:^6}|{3:>6}   |{4:>5}  |".format("Subnetwork " + str(i),nets_lst[i],"/" + str(prefix_lst[i]), str(2**(32 - prefix_lst[i]) - 2),str(reserv_lst[i]) + "%"))
print("+{0:-^14}+{1:-^10}+{2:-^6}+{3:-^9}+{4:-^7}+".format("","","","",""))
print("|{0:^14}|{1:>6}    |{2:^6}|{3:>6}   |{4:>5}  |".format("OVERALL", overal_hosts,"/" + str(prefix_ov[0]), overal_ov - 2,str(reserv_ov[0]) + "%"))
print("+{0:-^14}+{1:-^10}+{2:-^6}+{3:-^9}+{4:-^7}+".format("","","","",""))
print()
