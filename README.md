# Let's ssh ec2 easily.

## Prerequisites
* Locate your ssh `key pair` on `~/.ssh/id_rsa`.
* `awscli` must installed.
* `access key pair` or `Role` has permission to describe instances.
<br><br>

## Update EC2 List
```bash
$ ec2.sh
15.1123.1.123    ec2-sample        i-0980ba9326def521f     m5.large
54.123.123.11    ec2-another       i-0547704161b1aa823     t3.micro
```
This ec2-list will be saved in `~/.ec2_list` file.

## List EC2 and access to EC2
```text
$ zz.sh
Num 	 IP 		 Name 		 ID 			 Type
1 	54.111.111.111	my-test-server	i-05477041111111111	m5.large
2 	54.111.222.222	jenkins-build	i-0655cbe1111111111	t3.small
3 	54.111.123.123	nginx-server	i-0efffb71111111111	t3.micro

Enter Server Numer: 1
Enter ssh user (default: ubuntu) or 'enter' to use default. : ec2-user

...
...
ec2-user@ip-172-16-1-205:~$
```

If you want to use ec2-user or another, please modify end of the line in `zz.sh`.