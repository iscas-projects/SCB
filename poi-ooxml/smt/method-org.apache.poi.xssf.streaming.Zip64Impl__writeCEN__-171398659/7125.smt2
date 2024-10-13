(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1744 0)
(declare-sort var810 0)
(declare-sort var2456 0)
(declare-sort var1189 0)
(declare-sort var387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun written/-1911448563 (var1744) Int)
(declare-fun size/982265083 (var810) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInt/643489908 (var1744 Int) void)
(declare-fun writeShort/197125774 (var1744 Int) void)
(declare-fun crc/982265083 (var810) Int)
(declare-fun compressedSize/982265083 (var810) Int)
(declare-fun filename/982265083 (var810) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun offset/982265083 (var810) Int)
(declare-fun getBytes/-163691139 (String var2456) (Array Int Int))
(declare-fun out/-1911448563 (var1744) var387)
(declare-fun write/1886568149 (var387 (Array Int Int)) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var1744 var1744)
(declare-const null-var810 var810)
(declare-const var1189-US_ASCII var2456)
(declare-const var945 var1744) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl 
(assert (not (= var945 null-var1744)))
(declare-const var1506 var810) ; Statement: r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry 
(assert (not (= var1506 null-var810)))
(declare-const var945!1 var1744)
(assert (not (= var945!1 null-var1744)))
(assert (= (written/-1911448563 var945!1) 0)) ; Statement: r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0 
(define-const var666 Int (size/982265083 var1506)) ; Statement: $l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(define-const var1947 Int (ite (> var666 4294967295) 1 (ite (< var666 4294967295) (- 1) 0))) ; Statement: $b1 = $l0 cmp 4294967295L 
(define-const var1467 Int (cast-from-Int-to-Int var1947)) ; Statement: $i15 = (int) $b1 
 ; Statement: if $i15 <= 0 goto $z3 = 0 
(assert (not (<= var1467 0))) ; Negate: Cond: $i15 <= 0  
(define-const var2632 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
(define-const var2091 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= z0 = $z3] 
(assert true) ; Non Conditional
(define-const var156 Bool var2632) ; Statement: z0 = $z3 
(assert true)
;(assert (writeInt/643489908 var945!1 33639248)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L) 

(declare-const var945!2 var1744)
(declare-const var3412 Int)
(assert true)
;(assert (writeShort/197125774 var945!2 45)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45) 

(declare-const var945!3 var1744)
(declare-const var2430 Int)
 ; Statement: if $z2 == 0 goto $b12 = 20 
(assert (= (ite var2091 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3220 Int 20) ; Statement: $b12 = 20 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var945!3 var3220)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12) 

(declare-const var945!4 var1744)
(declare-const var3220!1 Int)
(assert true)
;(assert (writeShort/197125774 var945!4 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var945!5 var1744)
(declare-const var2743 Int)
(assert true)
;(assert (writeShort/197125774 var945!5 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var945!6 var1744)
(declare-const var2743!1 Int)
(assert true)
;(assert (writeInt/643489908 var945!6 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var945!7 var1744)
(declare-const var2640 Int)
(define-const var3879 Int (crc/982265083 var1506)) ; Statement: $l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc> 
(assert true)
;(assert (writeInt/643489908 var945!7 var3879)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2) 

(declare-const var945!8 var1744)
(declare-const var3879!1 Int)
(define-const var1923 Int (compressedSize/982265083 var1506)) ; Statement: $i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize> 
(define-const var488 Int (cast-from-Int-to-Int var1923)) ; Statement: $l4 = (long) $i3 
(assert true)
;(assert (writeInt/643489908 var945!8 var488)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4) 

(declare-const var945!9 var1744)
(declare-const var488!1 Int)
 ; Statement: if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert (not (= (ite var156 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3650 Int 4294967295) ; Statement: $l13 = 4294967295L 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeInt/643489908 var945!9 var3650)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13) 

(declare-const var945!10 var1744)
(declare-const var3650!1 Int)
(define-const var2471 String (filename/982265083 var1506)) ; Statement: $r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(assert true)
(define-const var2188 Int (length/-134980193 var2471)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (writeShort/197125774 var945!10 var2188)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5) 

(declare-const var945!11 var1744)
(declare-const var2188!1 Int)
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (= (ite var156 1 0) 0)) ; Cond: z0 == 0 
(define-const var1125 Int 0) ; Statement: $b14 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var945!11 var1125)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14) 

(declare-const var945!12 var1744)
(declare-const var1125!1 Int)
(assert true)
;(assert (writeShort/197125774 var945!12 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var945!13 var1744)
(declare-const var3978 Int)
(assert true)
;(assert (writeShort/197125774 var945!13 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var945!14 var1744)
(declare-const var3978!1 Int)
(assert true)
;(assert (writeShort/197125774 var945!14 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var945!15 var1744)
(declare-const var3978!2 Int)
(assert true)
;(assert (writeInt/643489908 var945!15 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var945!16 var1744)
(declare-const var2640!1 Int)
(define-const var1882 Int (offset/982265083 var1506)) ; Statement: $i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset> 
(define-const var3957 Int (cast-from-Int-to-Int var1882)) ; Statement: $l7 = (long) $i6 
(assert true)
;(assert (writeInt/643489908 var945!16 var3957)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7) 

(declare-const var945!17 var1744)
(declare-const var3957!1 Int)
(define-const var2563 String (filename/982265083 var1506)) ; Statement: $r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(define-const var2644 var2456 var1189-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var227 (Array Int Int) (getBytes/-163691139 var2563 var2644)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var1438 var387 (out/-1911448563 var945!17)) ; Statement: $r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out> 
(assert true)
;(assert (write/1886568149 var1438 var227)) ; Statement: virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6) 

(declare-const var1438!1 var387)
(declare-const var227!1 (Array Int Int))
 ; Statement: if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(assert (= (ite var156 1 0) 0)) ; Cond: z0 == 0 
(define-const var1666 Int (written/-1911448563 var945!17)) ; Statement: $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(define-const var1216 Int (getLength-Arr-Int-1 var227!1)) ; Statement: $i8 = lengthof $r6 
(define-const var2518 Int (+ var1666 var1216)) ; Statement: $i10 = $i9 + $i8 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {written/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], int), size/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), cast-from-Int-to-Int=([byte], int), writeInt/643489908=([org.apache.poi.xssf.streaming.Zip64Impl, long], void), writeShort/197125774=([org.apache.poi.xssf.streaming.Zip64Impl, int], void), crc/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), compressedSize/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), filename/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], java.lang.String), length/-134980193=([java.lang.String], int), offset/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), out/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), getLength-Arr-Int-1=([byte[]], int)}
; {var1744=org.apache.poi.xssf.streaming.Zip64Impl, var945=r0, var810=org.apache.poi.xssf.streaming.Zip64Impl$Entry, var1506=r1, var666=$l0, var1947=$b1, var1467=$i15, var2632=$z3, var2091=$z2, var156=z0, var3412=33639248L, var2430=45, var3220=$b12, var2743=8, var2640=0L, var3879=$l2, var1923=$i3, var488=$l4, var3650=$l13, var2471=$r2, var2188=$i5, var1125=$b14, var3978=0, var1882=$i6, var3957=$l7, var2563=$r4, var2456=java.nio.charset.Charset, var1189=java.nio.charset.StandardCharsets, var2644=$r3, var227=$r6, var387=java.io.OutputStream, var1438=$r5, var1666=$i9, var1216=$i8, var2518=$i10}
; {org.apache.poi.xssf.streaming.Zip64Impl=var1744, r0=var945, org.apache.poi.xssf.streaming.Zip64Impl$Entry=var810, r1=var1506, $l0=var666, $b1=var1947, $i15=var1467, $z3=var2632, $z2=var2091, z0=var156, 33639248L=var3412, 45=var2430, $b12=var3220, 8=var2743, 0L=var2640, $l2=var3879, $i3=var1923, $l4=var488, $l13=var3650, $r2=var2471, $i5=var2188, $b14=var1125, 0=var3978, $i6=var1882, $l7=var3957, $r4=var2563, java.nio.charset.Charset=var2456, java.nio.charset.StandardCharsets=var1189, $r3=var2644, $r6=var227, java.io.OutputStream=var387, $r5=var1438, $i9=var1666, $i8=var1216, $i10=var2518}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl;	r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry;	r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0;	$l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$b1 = $l0 cmp 4294967295L;	$i15 = (int) $b1;	if $i15 <= 0 goto $z3 = 0;	$z3 = 1;	$z2 = 1;	goto [?= z0 = $z3];	z0 = $z3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45);	if $z2 == 0 goto $b12 = 20;	$b12 = 20;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2);	$i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize>;	$l4 = (long) $i3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4);	if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$l13 = 4294967295L;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13);	$r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5);	if z0 == 0 goto $b14 = 0;	$b14 = 0;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset>;	$l7 = (long) $i6;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7);	$r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out>;	virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6);	if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i8 = lengthof $r6;	$i10 = $i9 + $i8;	return $i10
;block_num 10