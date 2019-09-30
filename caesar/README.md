# Caesar
https://en.wikibooks.org/wiki/Cryptography/Caesar_cipher  
  
To encrypt:
```
echo -e "10\nit's a big secret." | stack exec caesar
```
To decrypt:  
```
echo -e "-10\nsd'c k lsq combod." | stack exec caesar
```
To hack:  
```
echo -e "sd'c k lsq combod." | stack exec caesar-hack
```
  
Where:  
10 - shift.  
-10 - shift back
