BCrypt has two parts.  The EKSBlowfish encryption method and the bcrypt hashing method.  






EKSBlowfish (expensive key schedule blowfish)  is an adaptation of the Blowfish algorithm designed to be used to hash passwords in a manner that can take an increasing amount of time as computers get faster.  

It is used in the bcrypt password hashing scheme described here: 

http://www.usenix.org/event/usenix99/provos/provos_html/node1.html