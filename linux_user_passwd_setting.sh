#!/bin/bash


#设置最少8位
authconfig --passminlen=8 --update
grep "^minlen" /etc/security/pwquality.conf

#最少一个小写字母
authconfig --enablereqlower --update
grep "^lcredit" /etc/security/pwquality.conf

#最少一个大写字母
authconfig --enablerequpper --update
grep "^ucredit" /etc/security/pwquality.conf

#最少有一个数字
authconfig --enablereqdigit --update
grep "^dcredit" /etc/security/pwquality.conf

#最少有一个特殊符号
authconfig --enablereqother --update
grep "^ocredit" /etc/security/pwquality.conf





