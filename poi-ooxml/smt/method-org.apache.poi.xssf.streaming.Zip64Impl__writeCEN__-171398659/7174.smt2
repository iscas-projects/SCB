(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1334 0)
(declare-sort var1533 0)
(declare-sort var1379 0)
(declare-sort var3044 0)
(declare-sort var2475 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun written/-1911448563 (var1334) Int)
(declare-fun size/982265083 (var1533) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInt/643489908 (var1334 Int) void)
(declare-fun writeShort/197125774 (var1334 Int) void)
(declare-fun crc/982265083 (var1533) Int)
(declare-fun compressedSize/982265083 (var1533) Int)
(declare-fun filename/982265083 (var1533) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun offset/982265083 (var1533) Int)
(declare-fun getBytes/-163691139 (String var1379) (Array Int Int))
(declare-fun out/-1911448563 (var1334) var2475)
(declare-fun write/1886568149 (var2475 (Array Int Int)) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var1334 var1334)
(declare-const null-var1533 var1533)
(declare-const var3044-US_ASCII var1379)
(declare-const var1813 var1334) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl 
(assert (not (= var1813 null-var1334)))
(declare-const var3139 var1533) ; Statement: r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry 
(assert (not (= var3139 null-var1533)))
(declare-const var1813!1 var1334)
(assert (not (= var1813!1 null-var1334)))
(assert (= (written/-1911448563 var1813!1) 0)) ; Statement: r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0 
(define-const var2995 Int (size/982265083 var3139)) ; Statement: $l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(define-const var723 Int (ite (> var2995 4294967295) 1 (ite (< var2995 4294967295) (- 1) 0))) ; Statement: $b1 = $l0 cmp 4294967295L 
(define-const var2842 Int (cast-from-Int-to-Int var723)) ; Statement: $i15 = (int) $b1 
 ; Statement: if $i15 <= 0 goto $z3 = 0 
(assert (<= var2842 0)) ; Cond: $i15 <= 0 
(define-const var1335 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(define-const var640 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var2215 Bool var1335) ; Statement: z0 = $z3 
(assert true)
;(assert (writeInt/643489908 var1813!1 33639248)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L) 

(declare-const var1813!2 var1334)
(declare-const var149 Int)
(assert true)
;(assert (writeShort/197125774 var1813!2 45)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45) 

(declare-const var1813!3 var1334)
(declare-const var3028 Int)
 ; Statement: if $z2 == 0 goto $b12 = 20 
(assert (not (= (ite var640 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2567 Int 45) ; Statement: $b12 = 45 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var1813!3 var2567)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12) 

(declare-const var1813!4 var1334)
(declare-const var2567!1 Int)
(assert true)
;(assert (writeShort/197125774 var1813!4 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var1813!5 var1334)
(declare-const var1433 Int)
(assert true)
;(assert (writeShort/197125774 var1813!5 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var1813!6 var1334)
(declare-const var1433!1 Int)
(assert true)
;(assert (writeInt/643489908 var1813!6 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var1813!7 var1334)
(declare-const var3903 Int)
(define-const var1951 Int (crc/982265083 var3139)) ; Statement: $l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc> 
(assert true)
;(assert (writeInt/643489908 var1813!7 var1951)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2) 

(declare-const var1813!8 var1334)
(declare-const var1951!1 Int)
(define-const var1850 Int (compressedSize/982265083 var3139)) ; Statement: $i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize> 
(define-const var2814 Int (cast-from-Int-to-Int var1850)) ; Statement: $l4 = (long) $i3 
(assert true)
;(assert (writeInt/643489908 var1813!8 var2814)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4) 

(declare-const var1813!9 var1334)
(declare-const var2814!1 Int)
 ; Statement: if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert (= (ite var2215 1 0) 0)) ; Cond: z0 == 0 
(define-const var3875 Int (size/982265083 var3139)) ; Statement: $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert true) ; Non Conditional
(assert true)
;(assert (writeInt/643489908 var1813!9 var3875)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13) 

(declare-const var1813!10 var1334)
(declare-const var3875!1 Int)
(define-const var472 String (filename/982265083 var3139)) ; Statement: $r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(assert true)
(define-const var3596 Int (length/-134980193 var472)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (writeShort/197125774 var1813!10 var3596)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5) 

(declare-const var1813!11 var1334)
(declare-const var3596!1 Int)
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (not (= (ite var2215 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1776 Int 12) ; Statement: $b14 = 12 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var1813!11 var1776)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14) 

(declare-const var1813!12 var1334)
(declare-const var1776!1 Int)
(assert true)
;(assert (writeShort/197125774 var1813!12 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var1813!13 var1334)
(declare-const var2421 Int)
(assert true)
;(assert (writeShort/197125774 var1813!13 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var1813!14 var1334)
(declare-const var2421!1 Int)
(assert true)
;(assert (writeShort/197125774 var1813!14 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var1813!15 var1334)
(declare-const var2421!2 Int)
(assert true)
;(assert (writeInt/643489908 var1813!15 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var1813!16 var1334)
(declare-const var3903!1 Int)
(define-const var3470 Int (offset/982265083 var3139)) ; Statement: $i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset> 
(define-const var2454 Int (cast-from-Int-to-Int var3470)) ; Statement: $l7 = (long) $i6 
(assert true)
;(assert (writeInt/643489908 var1813!16 var2454)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7) 

(declare-const var1813!17 var1334)
(declare-const var2454!1 Int)
(define-const var911 String (filename/982265083 var3139)) ; Statement: $r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(define-const var2257 var1379 var3044-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var2076 (Array Int Int) (getBytes/-163691139 var911 var2257)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var2269 var2475 (out/-1911448563 var1813!17)) ; Statement: $r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out> 
(assert true)
;(assert (write/1886568149 var2269 var2076)) ; Statement: virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6) 

(declare-const var2269!1 var2475)
(declare-const var2076!1 (Array Int Int))
 ; Statement: if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(assert (= (ite var2215 1 0) 0)) ; Cond: z0 == 0 
(define-const var1459 Int (written/-1911448563 var1813!17)) ; Statement: $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(define-const var2439 Int (getLength-Arr-Int-1 var2076!1)) ; Statement: $i8 = lengthof $r6 
(define-const var995 Int (+ var1459 var2439)) ; Statement: $i10 = $i9 + $i8 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {written/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], int), size/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), cast-from-Int-to-Int=([byte], int), writeInt/643489908=([org.apache.poi.xssf.streaming.Zip64Impl, long], void), writeShort/197125774=([org.apache.poi.xssf.streaming.Zip64Impl, int], void), crc/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), compressedSize/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), filename/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], java.lang.String), length/-134980193=([java.lang.String], int), offset/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), out/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), getLength-Arr-Int-1=([byte[]], int)}
; {var1334=org.apache.poi.xssf.streaming.Zip64Impl, var1813=r0, var1533=org.apache.poi.xssf.streaming.Zip64Impl$Entry, var3139=r1, var2995=$l0, var723=$b1, var2842=$i15, var1335=$z3, var640=$z2, var2215=z0, var149=33639248L, var3028=45, var2567=$b12, var1433=8, var3903=0L, var1951=$l2, var1850=$i3, var2814=$l4, var3875=$l13, var472=$r2, var3596=$i5, var1776=$b14, var2421=0, var3470=$i6, var2454=$l7, var911=$r4, var1379=java.nio.charset.Charset, var3044=java.nio.charset.StandardCharsets, var2257=$r3, var2076=$r6, var2475=java.io.OutputStream, var2269=$r5, var1459=$i9, var2439=$i8, var995=$i10}
; {org.apache.poi.xssf.streaming.Zip64Impl=var1334, r0=var1813, org.apache.poi.xssf.streaming.Zip64Impl$Entry=var1533, r1=var3139, $l0=var2995, $b1=var723, $i15=var2842, $z3=var1335, $z2=var640, z0=var2215, 33639248L=var149, 45=var3028, $b12=var2567, 8=var1433, 0L=var3903, $l2=var1951, $i3=var1850, $l4=var2814, $l13=var3875, $r2=var472, $i5=var3596, $b14=var1776, 0=var2421, $i6=var3470, $l7=var2454, $r4=var911, java.nio.charset.Charset=var1379, java.nio.charset.StandardCharsets=var3044, $r3=var2257, $r6=var2076, java.io.OutputStream=var2475, $r5=var2269, $i9=var1459, $i8=var2439, $i10=var995}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl;	r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry;	r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0;	$l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$b1 = $l0 cmp 4294967295L;	$i15 = (int) $b1;	if $i15 <= 0 goto $z3 = 0;	$z3 = 0;	$z2 = 0;	z0 = $z3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45);	if $z2 == 0 goto $b12 = 20;	$b12 = 45;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2);	$i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize>;	$l4 = (long) $i3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4);	if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13);	$r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5);	if z0 == 0 goto $b14 = 0;	$b14 = 12;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset>;	$l7 = (long) $i6;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7);	$r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out>;	virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6);	if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i8 = lengthof $r6;	$i10 = $i9 + $i8;	return $i10
;block_num 10