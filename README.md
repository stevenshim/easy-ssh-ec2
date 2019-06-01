# Let's ssh ec2 easily.

## Prerequisites
* Locate your ssh `key pair` on `~/.ssh/id_rsa`.
* `awscli` must installed.
* `access key pair` or `Role` has permission to describe instances.
<br><br>

## Update EC2 List
```bash
$ ec2.sh
```

## List EC2 and access to EC2
```bash
$ zz.sh
Num 	 IP 		 Name 		 ID 			 Type
1 	54.111.111.111	my-test-server	i-05477041111111111	m5.large
2 	54.111.222.222	jenkins-build	i-0655cbe1111111111	t3.small
3 	54.111.123.123	nginx-server	i-0efffb71111111111	t3.micro

Enter Server Numer: 1   <---- enter number

...
...
Welcome to Ubuntu 18.04.2 LTS (GNU/Linux 4.15.0-1032-aws x86_64)
ubuntu@ip-172-16-1-205:~$
```
