# Grille
https://en.wikibooks.org/wiki/Cryptography/Transposition_ciphers  

To build a key:
```
echo -e "10\n5" | stack exec grille > key-10x10.svg
```
  
Where:  
10 - width and height for one cell in mm.  
5 - half of cells number.  
You need to print at least two keys. One for a person who will encrypt and one for a person who will decrypt. You also need to remove black fields from the square. Be careful, please.  
So the command above will create a random key to encrypt up to 100 characters in one square.  
Don't forget to fill the square with random letters if you need less than 100 characters.
