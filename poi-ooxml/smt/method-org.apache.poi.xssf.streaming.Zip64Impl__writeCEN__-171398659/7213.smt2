(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var958 0)
(declare-sort var69 0)
(declare-sort var68 0)
(declare-sort var603 0)
(declare-sort var2634 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun written/-1911448563 (var958) Int)
(declare-fun size/982265083 (var69) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInt/643489908 (var958 Int) void)
(declare-fun writeShort/197125774 (var958 Int) void)
(declare-fun crc/982265083 (var69) Int)
(declare-fun compressedSize/982265083 (var69) Int)
(declare-fun filename/982265083 (var69) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun offset/982265083 (var69) Int)
(declare-fun getBytes/-163691139 (String var68) (Array Int Int))
(declare-fun out/-1911448563 (var958) var2634)
(declare-fun write/1886568149 (var2634 (Array Int Int)) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var958 var958)
(declare-const null-var69 var69)
(declare-const var603-US_ASCII var68)
(declare-const var3151 var958) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl 
(assert (not (= var3151 null-var958)))
(declare-const var3914 var69) ; Statement: r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry 
(assert (not (= var3914 null-var69)))
(declare-const var3151!1 var958)
(assert (not (= var3151!1 null-var958)))
(assert (= (written/-1911448563 var3151!1) 0)) ; Statement: r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0 
(define-const var38 Int (size/982265083 var3914)) ; Statement: $l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(define-const var2334 Int (ite (> var38 4294967295) 1 (ite (< var38 4294967295) (- 1) 0))) ; Statement: $b1 = $l0 cmp 4294967295L 
(define-const var450 Int (cast-from-Int-to-Int var2334)) ; Statement: $i15 = (int) $b1 
 ; Statement: if $i15 <= 0 goto $z3 = 0 
(assert (<= var450 0)) ; Cond: $i15 <= 0 
(define-const var666 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(define-const var962 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var1270 Bool var666) ; Statement: z0 = $z3 
(assert true)
;(assert (writeInt/643489908 var3151!1 33639248)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L) 

(declare-const var3151!2 var958)
(declare-const var3780 Int)
(assert true)
;(assert (writeShort/197125774 var3151!2 45)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45) 

(declare-const var3151!3 var958)
(declare-const var3168 Int)
 ; Statement: if $z2 == 0 goto $b12 = 20 
(assert (= (ite var962 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2140 Int 20) ; Statement: $b12 = 20 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var3151!3 var2140)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12) 

(declare-const var3151!4 var958)
(declare-const var2140!1 Int)
(assert true)
;(assert (writeShort/197125774 var3151!4 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var3151!5 var958)
(declare-const var2626 Int)
(assert true)
;(assert (writeShort/197125774 var3151!5 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var3151!6 var958)
(declare-const var2626!1 Int)
(assert true)
;(assert (writeInt/643489908 var3151!6 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var3151!7 var958)
(declare-const var997 Int)
(define-const var2427 Int (crc/982265083 var3914)) ; Statement: $l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc> 
(assert true)
;(assert (writeInt/643489908 var3151!7 var2427)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2) 

(declare-const var3151!8 var958)
(declare-const var2427!1 Int)
(define-const var3705 Int (compressedSize/982265083 var3914)) ; Statement: $i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize> 
(define-const var3922 Int (cast-from-Int-to-Int var3705)) ; Statement: $l4 = (long) $i3 
(assert true)
;(assert (writeInt/643489908 var3151!8 var3922)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4) 

(declare-const var3151!9 var958)
(declare-const var3922!1 Int)
 ; Statement: if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert (not (= (ite var1270 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1447 Int 4294967295) ; Statement: $l13 = 4294967295L 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeInt/643489908 var3151!9 var1447)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13) 

(declare-const var3151!10 var958)
(declare-const var1447!1 Int)
(define-const var2227 String (filename/982265083 var3914)) ; Statement: $r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(assert true)
(define-const var3436 Int (length/-134980193 var2227)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (writeShort/197125774 var3151!10 var3436)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5) 

(declare-const var3151!11 var958)
(declare-const var3436!1 Int)
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (= (ite var1270 1 0) 0)) ; Cond: z0 == 0 
(define-const var1563 Int 0) ; Statement: $b14 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var3151!11 var1563)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14) 

(declare-const var3151!12 var958)
(declare-const var1563!1 Int)
(assert true)
;(assert (writeShort/197125774 var3151!12 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var3151!13 var958)
(declare-const var235 Int)
(assert true)
;(assert (writeShort/197125774 var3151!13 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var3151!14 var958)
(declare-const var235!1 Int)
(assert true)
;(assert (writeShort/197125774 var3151!14 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var3151!15 var958)
(declare-const var235!2 Int)
(assert true)
;(assert (writeInt/643489908 var3151!15 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var3151!16 var958)
(declare-const var997!1 Int)
(define-const var3304 Int (offset/982265083 var3914)) ; Statement: $i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset> 
(define-const var18 Int (cast-from-Int-to-Int var3304)) ; Statement: $l7 = (long) $i6 
(assert true)
;(assert (writeInt/643489908 var3151!16 var18)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7) 

(declare-const var3151!17 var958)
(declare-const var18!1 Int)
(define-const var1349 String (filename/982265083 var3914)) ; Statement: $r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(define-const var2437 var68 var603-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var500 (Array Int Int) (getBytes/-163691139 var1349 var2437)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var1188 var2634 (out/-1911448563 var3151!17)) ; Statement: $r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out> 
(assert true)
;(assert (write/1886568149 var1188 var500)) ; Statement: virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6) 

(declare-const var1188!1 var2634)
(declare-const var500!1 (Array Int Int))
 ; Statement: if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(assert (= (ite var1270 1 0) 0)) ; Cond: z0 == 0 
(define-const var3530 Int (written/-1911448563 var3151!17)) ; Statement: $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(define-const var3318 Int (getLength-Arr-Int-1 var500!1)) ; Statement: $i8 = lengthof $r6 
(define-const var1758 Int (+ var3530 var3318)) ; Statement: $i10 = $i9 + $i8 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {written/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], int), size/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), cast-from-Int-to-Int=([byte], int), writeInt/643489908=([org.apache.poi.xssf.streaming.Zip64Impl, long], void), writeShort/197125774=([org.apache.poi.xssf.streaming.Zip64Impl, int], void), crc/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), compressedSize/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), filename/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], java.lang.String), length/-134980193=([java.lang.String], int), offset/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), out/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), getLength-Arr-Int-1=([byte[]], int)}
; {var958=org.apache.poi.xssf.streaming.Zip64Impl, var3151=r0, var69=org.apache.poi.xssf.streaming.Zip64Impl$Entry, var3914=r1, var38=$l0, var2334=$b1, var450=$i15, var666=$z3, var962=$z2, var1270=z0, var3780=33639248L, var3168=45, var2140=$b12, var2626=8, var997=0L, var2427=$l2, var3705=$i3, var3922=$l4, var1447=$l13, var2227=$r2, var3436=$i5, var1563=$b14, var235=0, var3304=$i6, var18=$l7, var1349=$r4, var68=java.nio.charset.Charset, var603=java.nio.charset.StandardCharsets, var2437=$r3, var500=$r6, var2634=java.io.OutputStream, var1188=$r5, var3530=$i9, var3318=$i8, var1758=$i10}
; {org.apache.poi.xssf.streaming.Zip64Impl=var958, r0=var3151, org.apache.poi.xssf.streaming.Zip64Impl$Entry=var69, r1=var3914, $l0=var38, $b1=var2334, $i15=var450, $z3=var666, $z2=var962, z0=var1270, 33639248L=var3780, 45=var3168, $b12=var2140, 8=var2626, 0L=var997, $l2=var2427, $i3=var3705, $l4=var3922, $l13=var1447, $r2=var2227, $i5=var3436, $b14=var1563, 0=var235, $i6=var3304, $l7=var18, $r4=var1349, java.nio.charset.Charset=var68, java.nio.charset.StandardCharsets=var603, $r3=var2437, $r6=var500, java.io.OutputStream=var2634, $r5=var1188, $i9=var3530, $i8=var3318, $i10=var1758}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl;	r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry;	r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0;	$l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$b1 = $l0 cmp 4294967295L;	$i15 = (int) $b1;	if $i15 <= 0 goto $z3 = 0;	$z3 = 0;	$z2 = 0;	z0 = $z3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45);	if $z2 == 0 goto $b12 = 20;	$b12 = 20;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2);	$i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize>;	$l4 = (long) $i3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4);	if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$l13 = 4294967295L;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13);	$r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5);	if z0 == 0 goto $b14 = 0;	$b14 = 0;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset>;	$l7 = (long) $i6;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7);	$r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out>;	virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6);	if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i8 = lengthof $r6;	$i10 = $i9 + $i8;	return $i10
;block_num 10