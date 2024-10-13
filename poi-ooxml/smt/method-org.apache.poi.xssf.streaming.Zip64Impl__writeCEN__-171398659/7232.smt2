(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2065 0)
(declare-sort var2633 0)
(declare-sort var153 0)
(declare-sort var3705 0)
(declare-sort var1709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun written/-1911448563 (var2065) Int)
(declare-fun size/982265083 (var2633) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInt/643489908 (var2065 Int) void)
(declare-fun writeShort/197125774 (var2065 Int) void)
(declare-fun crc/982265083 (var2633) Int)
(declare-fun compressedSize/982265083 (var2633) Int)
(declare-fun filename/982265083 (var2633) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun offset/982265083 (var2633) Int)
(declare-fun getBytes/-163691139 (String var153) (Array Int Int))
(declare-fun out/-1911448563 (var2065) var1709)
(declare-fun write/1886568149 (var1709 (Array Int Int)) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var2065 var2065)
(declare-const null-var2633 var2633)
(declare-const var3705-US_ASCII var153)
(declare-const var1429 var2065) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl 
(assert (not (= var1429 null-var2065)))
(declare-const var3987 var2633) ; Statement: r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry 
(assert (not (= var3987 null-var2633)))
(declare-const var1429!1 var2065)
(assert (not (= var1429!1 null-var2065)))
(assert (= (written/-1911448563 var1429!1) 0)) ; Statement: r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0 
(define-const var3316 Int (size/982265083 var3987)) ; Statement: $l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(define-const var2651 Int (ite (> var3316 4294967295) 1 (ite (< var3316 4294967295) (- 1) 0))) ; Statement: $b1 = $l0 cmp 4294967295L 
(define-const var1070 Int (cast-from-Int-to-Int var2651)) ; Statement: $i15 = (int) $b1 
 ; Statement: if $i15 <= 0 goto $z3 = 0 
(assert (<= var1070 0)) ; Cond: $i15 <= 0 
(define-const var1627 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(define-const var3017 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var3516 Bool var1627) ; Statement: z0 = $z3 
(assert true)
;(assert (writeInt/643489908 var1429!1 33639248)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L) 

(declare-const var1429!2 var2065)
(declare-const var3058 Int)
(assert true)
;(assert (writeShort/197125774 var1429!2 45)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45) 

(declare-const var1429!3 var2065)
(declare-const var1556 Int)
 ; Statement: if $z2 == 0 goto $b12 = 20 
(assert (= (ite var3017 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2100 Int 20) ; Statement: $b12 = 20 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var1429!3 var2100)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12) 

(declare-const var1429!4 var2065)
(declare-const var2100!1 Int)
(assert true)
;(assert (writeShort/197125774 var1429!4 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var1429!5 var2065)
(declare-const var3370 Int)
(assert true)
;(assert (writeShort/197125774 var1429!5 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var1429!6 var2065)
(declare-const var3370!1 Int)
(assert true)
;(assert (writeInt/643489908 var1429!6 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var1429!7 var2065)
(declare-const var1236 Int)
(define-const var393 Int (crc/982265083 var3987)) ; Statement: $l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc> 
(assert true)
;(assert (writeInt/643489908 var1429!7 var393)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2) 

(declare-const var1429!8 var2065)
(declare-const var393!1 Int)
(define-const var3550 Int (compressedSize/982265083 var3987)) ; Statement: $i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize> 
(define-const var3199 Int (cast-from-Int-to-Int var3550)) ; Statement: $l4 = (long) $i3 
(assert true)
;(assert (writeInt/643489908 var1429!8 var3199)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4) 

(declare-const var1429!9 var2065)
(declare-const var3199!1 Int)
 ; Statement: if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert (= (ite var3516 1 0) 0)) ; Cond: z0 == 0 
(define-const var3648 Int (size/982265083 var3987)) ; Statement: $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert true) ; Non Conditional
(assert true)
;(assert (writeInt/643489908 var1429!9 var3648)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13) 

(declare-const var1429!10 var2065)
(declare-const var3648!1 Int)
(define-const var2718 String (filename/982265083 var3987)) ; Statement: $r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(assert true)
(define-const var3737 Int (length/-134980193 var2718)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (writeShort/197125774 var1429!10 var3737)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5) 

(declare-const var1429!11 var2065)
(declare-const var3737!1 Int)
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (= (ite var3516 1 0) 0)) ; Cond: z0 == 0 
(define-const var3420 Int 0) ; Statement: $b14 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var1429!11 var3420)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14) 

(declare-const var1429!12 var2065)
(declare-const var3420!1 Int)
(assert true)
;(assert (writeShort/197125774 var1429!12 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var1429!13 var2065)
(declare-const var1480 Int)
(assert true)
;(assert (writeShort/197125774 var1429!13 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var1429!14 var2065)
(declare-const var1480!1 Int)
(assert true)
;(assert (writeShort/197125774 var1429!14 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var1429!15 var2065)
(declare-const var1480!2 Int)
(assert true)
;(assert (writeInt/643489908 var1429!15 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var1429!16 var2065)
(declare-const var1236!1 Int)
(define-const var1778 Int (offset/982265083 var3987)) ; Statement: $i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset> 
(define-const var3338 Int (cast-from-Int-to-Int var1778)) ; Statement: $l7 = (long) $i6 
(assert true)
;(assert (writeInt/643489908 var1429!16 var3338)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7) 

(declare-const var1429!17 var2065)
(declare-const var3338!1 Int)
(define-const var1462 String (filename/982265083 var3987)) ; Statement: $r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(define-const var2812 var153 var3705-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var1992 (Array Int Int) (getBytes/-163691139 var1462 var2812)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var3799 var1709 (out/-1911448563 var1429!17)) ; Statement: $r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out> 
(assert true)
;(assert (write/1886568149 var3799 var1992)) ; Statement: virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6) 

(declare-const var3799!1 var1709)
(declare-const var1992!1 (Array Int Int))
 ; Statement: if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(assert (= (ite var3516 1 0) 0)) ; Cond: z0 == 0 
(define-const var1689 Int (written/-1911448563 var1429!17)) ; Statement: $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(define-const var334 Int (getLength-Arr-Int-1 var1992!1)) ; Statement: $i8 = lengthof $r6 
(define-const var3870 Int (+ var1689 var334)) ; Statement: $i10 = $i9 + $i8 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {written/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], int), size/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), cast-from-Int-to-Int=([byte], int), writeInt/643489908=([org.apache.poi.xssf.streaming.Zip64Impl, long], void), writeShort/197125774=([org.apache.poi.xssf.streaming.Zip64Impl, int], void), crc/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), compressedSize/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), filename/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], java.lang.String), length/-134980193=([java.lang.String], int), offset/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), out/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), getLength-Arr-Int-1=([byte[]], int)}
; {var2065=org.apache.poi.xssf.streaming.Zip64Impl, var1429=r0, var2633=org.apache.poi.xssf.streaming.Zip64Impl$Entry, var3987=r1, var3316=$l0, var2651=$b1, var1070=$i15, var1627=$z3, var3017=$z2, var3516=z0, var3058=33639248L, var1556=45, var2100=$b12, var3370=8, var1236=0L, var393=$l2, var3550=$i3, var3199=$l4, var3648=$l13, var2718=$r2, var3737=$i5, var3420=$b14, var1480=0, var1778=$i6, var3338=$l7, var1462=$r4, var153=java.nio.charset.Charset, var3705=java.nio.charset.StandardCharsets, var2812=$r3, var1992=$r6, var1709=java.io.OutputStream, var3799=$r5, var1689=$i9, var334=$i8, var3870=$i10}
; {org.apache.poi.xssf.streaming.Zip64Impl=var2065, r0=var1429, org.apache.poi.xssf.streaming.Zip64Impl$Entry=var2633, r1=var3987, $l0=var3316, $b1=var2651, $i15=var1070, $z3=var1627, $z2=var3017, z0=var3516, 33639248L=var3058, 45=var1556, $b12=var2100, 8=var3370, 0L=var1236, $l2=var393, $i3=var3550, $l4=var3199, $l13=var3648, $r2=var2718, $i5=var3737, $b14=var3420, 0=var1480, $i6=var1778, $l7=var3338, $r4=var1462, java.nio.charset.Charset=var153, java.nio.charset.StandardCharsets=var3705, $r3=var2812, $r6=var1992, java.io.OutputStream=var1709, $r5=var3799, $i9=var1689, $i8=var334, $i10=var3870}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl;	r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry;	r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0;	$l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$b1 = $l0 cmp 4294967295L;	$i15 = (int) $b1;	if $i15 <= 0 goto $z3 = 0;	$z3 = 0;	$z2 = 0;	z0 = $z3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45);	if $z2 == 0 goto $b12 = 20;	$b12 = 20;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2);	$i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize>;	$l4 = (long) $i3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4);	if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13);	$r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5);	if z0 == 0 goto $b14 = 0;	$b14 = 0;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset>;	$l7 = (long) $i6;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7);	$r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out>;	virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6);	if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i8 = lengthof $r6;	$i10 = $i9 + $i8;	return $i10
;block_num 10