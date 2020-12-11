inp = input('Please enter ip address with prefix: ')

def decimal_to_binary(dec):
	bin_lst = []
	bin_num = format(dec, 'b')
	bin_str = bin_num.zfill(8)
	bin_sym_lst = list(bin_str)
	for i in bin_sym_lst:
		bin_lst.append(int(i))
	return bin_lst

def binary_list_to_decimal(bin_lst):
	bin_str_lst = []
	for i in bin_lst:
		bin_str_lst.append(str(i)) 
	bin_str = ''.join(bin_str_lst)
	dec_int = int(bin_str, 2)
	return dec_int

def ip_str(bin_oct_lst):
	ip_str_lst = []
	for i in range(len(bin_oct_lst)):
		ip_dec = binary_list_to_decimal(bin_oct_lst[i])
		ip_str_lst.append(str(ip_dec))
	ip_str = ".".join(ip_str_lst)
	return ip_str

def split_by_oct(bin_lst):
	if(len(bin_lst) < 32):
		bin_lst_bal = 32 - len(bin_lst)
		bin_lst = [0]*bin_lst_bal + bin_lst
	bin_lst_splited  = [bin_lst[i:i+8] for i in range(0, len(bin_lst), 8)]
	return bin_lst_splited

def oct_lst_to_oneline(oct_lst):
	bin_lst_oneline = []
	for bin_oct in oct_lst:
		bin_lst_oneline.extend(bin_oct)
	return bin_lst_oneline


split_by_slash = inp.split("/")
split_by_dot = split_by_slash[0].split(".")

# Prefix to binary mask
prefix = int(split_by_slash[1])
mask_bin = [1]*prefix + [0]*(32 - prefix)
mask_bin_lst = split_by_oct(mask_bin)

# IP to binary list
ip_bin_lst = []
for i in split_by_dot:
	ip_bin_lst.append(decimal_to_binary(int(i)))

# Network ID
nid_bin_lst = []
nid_str_lst = []
for oct_ip, oct_mask in zip(ip_bin_lst, mask_bin_lst):
	nid_oct = []
	for ip, mask in zip(oct_ip, oct_mask):
		nid_oct.append(ip & mask)
	nid_bin_lst.append(nid_oct)

# Next Network ID
nid_bin_lst_oneline = oct_lst_to_oneline(nid_bin_lst)
host_bin_q = [1] + [0]*(32 - prefix)
host_dec_q = binary_list_to_decimal(host_bin_q)
nid_dec = binary_list_to_decimal(nid_bin_lst_oneline)
next_nw_dec = nid_dec + host_dec_q
next_nw_lst_oneline = decimal_to_binary(next_nw_dec)
next_nw_bin_lst = split_by_oct(next_nw_lst_oneline)

# Broadcast IP
br_ip_dec = next_nw_dec - 1
br_ip_lst_oneline = decimal_to_binary(br_ip_dec)
br_ip_bin_lst = split_by_oct(br_ip_lst_oneline)

# First Host IP
fst_ip_dec = nid_dec + 1
fst_ip_lst_oneline = decimal_to_binary(fst_ip_dec)
fst_ip_bin_lst = split_by_oct(fst_ip_lst_oneline)

# Last Host IP

last_ip_dec = br_ip_dec - 1
last_ip_lst_oneline = decimal_to_binary(last_ip_dec)
last_ip_bin_lst = split_by_oct(last_ip_lst_oneline)

#-----------------------------------------------
nid_str = ip_str(nid_bin_lst)
mask_str = ip_str(mask_bin_lst)
next_nw_str = ip_str(next_nw_bin_lst)
br_ip_str = ip_str(br_ip_bin_lst)
fst_ip_str = ip_str(fst_ip_bin_lst)
last_ip_srt = ip_str(last_ip_bin_lst)
noh_str = str(2**(32 - prefix) -2)

print()
print("{0:17}{1}/{2}".format("Network ID:", nid_str, str(prefix)))
print("{0:17}{1}".format("CIDR/Mask:", mask_str))
print("{0:17}{1}/{2}".format("Next Network ID:", next_nw_str, str(prefix)))
print("{0:17}{1}".format("Broadcast IP:", br_ip_str))
print("{0:17}{1}".format("First Host IP:", fst_ip_str))
print("{0:17}{1}".format("Last Host IP:", last_ip_srt))
print("{0:17}{1}".format("Number of Hosts:", noh_str))





