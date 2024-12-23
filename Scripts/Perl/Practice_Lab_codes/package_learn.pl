#! /usr/bin/perl -w
package pack1;
$var = 26;
package pack2;
$var1 = 34;
print ("$pack1::var\t\t$pack2::var1\n");
print ("$pack1'var\t\t$pack2'var1\n");

