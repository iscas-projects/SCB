(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var433 0)
(declare-sort var743 0)
(declare-sort var169 0)
(declare-sort var3848 0)
(declare-sort var887 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun written/-1911448563 (var433) Int)
(declare-fun size/982265083 (var743) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInt/643489908 (var433 Int) void)
(declare-fun writeShort/197125774 (var433 Int) void)
(declare-fun crc/982265083 (var743) Int)
(declare-fun compressedSize/982265083 (var743) Int)
(declare-fun filename/982265083 (var743) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun offset/982265083 (var743) Int)
(declare-fun getBytes/-163691139 (String var169) (Array Int Int))
(declare-fun out/-1911448563 (var433) var887)
(declare-fun write/1886568149 (var887 (Array Int Int)) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var433 var433)
(declare-const null-var743 var743)
(declare-const var3848-US_ASCII var169)
(declare-const var2175 var433) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl 
(assert (not (= var2175 null-var433)))
(declare-const var970 var743) ; Statement: r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry 
(assert (not (= var970 null-var743)))
(declare-const var2175!1 var433)
(assert (not (= var2175!1 null-var433)))
(assert (= (written/-1911448563 var2175!1) 0)) ; Statement: r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0 
(define-const var2929 Int (size/982265083 var970)) ; Statement: $l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(define-const var3099 Int (ite (> var2929 4294967295) 1 (ite (< var2929 4294967295) (- 1) 0))) ; Statement: $b1 = $l0 cmp 4294967295L 
(define-const var3692 Int (cast-from-Int-to-Int var3099)) ; Statement: $i15 = (int) $b1 
 ; Statement: if $i15 <= 0 goto $z3 = 0 
(assert (not (<= var3692 0))) ; Negate: Cond: $i15 <= 0  
(define-const var3690 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
(define-const var2389 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= z0 = $z3] 
(assert true) ; Non Conditional
(define-const var1474 Bool var3690) ; Statement: z0 = $z3 
(assert true)
;(assert (writeInt/643489908 var2175!1 33639248)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L) 

(declare-const var2175!2 var433)
(declare-const var410 Int)
(assert true)
;(assert (writeShort/197125774 var2175!2 45)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45) 

(declare-const var2175!3 var433)
(declare-const var1701 Int)
 ; Statement: if $z2 == 0 goto $b12 = 20 
(assert (not (= (ite var2389 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var810 Int 45) ; Statement: $b12 = 45 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var2175!3 var810)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12) 

(declare-const var2175!4 var433)
(declare-const var810!1 Int)
(assert true)
;(assert (writeShort/197125774 var2175!4 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var2175!5 var433)
(declare-const var2853 Int)
(assert true)
;(assert (writeShort/197125774 var2175!5 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var2175!6 var433)
(declare-const var2853!1 Int)
(assert true)
;(assert (writeInt/643489908 var2175!6 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var2175!7 var433)
(declare-const var719 Int)
(define-const var2759 Int (crc/982265083 var970)) ; Statement: $l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc> 
(assert true)
;(assert (writeInt/643489908 var2175!7 var2759)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2) 

(declare-const var2175!8 var433)
(declare-const var2759!1 Int)
(define-const var3240 Int (compressedSize/982265083 var970)) ; Statement: $i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize> 
(define-const var3586 Int (cast-from-Int-to-Int var3240)) ; Statement: $l4 = (long) $i3 
(assert true)
;(assert (writeInt/643489908 var2175!8 var3586)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4) 

(declare-const var2175!9 var433)
(declare-const var3586!1 Int)
 ; Statement: if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert (not (= (ite var1474 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3125 Int 4294967295) ; Statement: $l13 = 4294967295L 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeInt/643489908 var2175!9 var3125)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13) 

(declare-const var2175!10 var433)
(declare-const var3125!1 Int)
(define-const var2446 String (filename/982265083 var970)) ; Statement: $r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(assert true)
(define-const var460 Int (length/-134980193 var2446)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (writeShort/197125774 var2175!10 var460)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5) 

(declare-const var2175!11 var433)
(declare-const var460!1 Int)
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (= (ite var1474 1 0) 0)) ; Cond: z0 == 0 
(define-const var2504 Int 0) ; Statement: $b14 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var2175!11 var2504)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14) 

(declare-const var2175!12 var433)
(declare-const var2504!1 Int)
(assert true)
;(assert (writeShort/197125774 var2175!12 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var2175!13 var433)
(declare-const var3027 Int)
(assert true)
;(assert (writeShort/197125774 var2175!13 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var2175!14 var433)
(declare-const var3027!1 Int)
(assert true)
;(assert (writeShort/197125774 var2175!14 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var2175!15 var433)
(declare-const var3027!2 Int)
(assert true)
;(assert (writeInt/643489908 var2175!15 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var2175!16 var433)
(declare-const var719!1 Int)
(define-const var3426 Int (offset/982265083 var970)) ; Statement: $i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset> 
(define-const var971 Int (cast-from-Int-to-Int var3426)) ; Statement: $l7 = (long) $i6 
(assert true)
;(assert (writeInt/643489908 var2175!16 var971)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7) 

(declare-const var2175!17 var433)
(declare-const var971!1 Int)
(define-const var3289 String (filename/982265083 var970)) ; Statement: $r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(define-const var469 var169 var3848-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var2097 (Array Int Int) (getBytes/-163691139 var3289 var469)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var2358 var887 (out/-1911448563 var2175!17)) ; Statement: $r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out> 
(assert true)
;(assert (write/1886568149 var2358 var2097)) ; Statement: virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6) 

(declare-const var2358!1 var887)
(declare-const var2097!1 (Array Int Int))
 ; Statement: if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(assert (= (ite var1474 1 0) 0)) ; Cond: z0 == 0 
(define-const var424 Int (written/-1911448563 var2175!17)) ; Statement: $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(define-const var2761 Int (getLength-Arr-Int-1 var2097!1)) ; Statement: $i8 = lengthof $r6 
(define-const var1819 Int (+ var424 var2761)) ; Statement: $i10 = $i9 + $i8 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {written/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], int), size/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), cast-from-Int-to-Int=([byte], int), writeInt/643489908=([org.apache.poi.xssf.streaming.Zip64Impl, long], void), writeShort/197125774=([org.apache.poi.xssf.streaming.Zip64Impl, int], void), crc/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), compressedSize/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), filename/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], java.lang.String), length/-134980193=([java.lang.String], int), offset/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), out/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), getLength-Arr-Int-1=([byte[]], int)}
; {var433=org.apache.poi.xssf.streaming.Zip64Impl, var2175=r0, var743=org.apache.poi.xssf.streaming.Zip64Impl$Entry, var970=r1, var2929=$l0, var3099=$b1, var3692=$i15, var3690=$z3, var2389=$z2, var1474=z0, var410=33639248L, var1701=45, var810=$b12, var2853=8, var719=0L, var2759=$l2, var3240=$i3, var3586=$l4, var3125=$l13, var2446=$r2, var460=$i5, var2504=$b14, var3027=0, var3426=$i6, var971=$l7, var3289=$r4, var169=java.nio.charset.Charset, var3848=java.nio.charset.StandardCharsets, var469=$r3, var2097=$r6, var887=java.io.OutputStream, var2358=$r5, var424=$i9, var2761=$i8, var1819=$i10}
; {org.apache.poi.xssf.streaming.Zip64Impl=var433, r0=var2175, org.apache.poi.xssf.streaming.Zip64Impl$Entry=var743, r1=var970, $l0=var2929, $b1=var3099, $i15=var3692, $z3=var3690, $z2=var2389, z0=var1474, 33639248L=var410, 45=var1701, $b12=var810, 8=var2853, 0L=var719, $l2=var2759, $i3=var3240, $l4=var3586, $l13=var3125, $r2=var2446, $i5=var460, $b14=var2504, 0=var3027, $i6=var3426, $l7=var971, $r4=var3289, java.nio.charset.Charset=var169, java.nio.charset.StandardCharsets=var3848, $r3=var469, $r6=var2097, java.io.OutputStream=var887, $r5=var2358, $i9=var424, $i8=var2761, $i10=var1819}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl;	r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry;	r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0;	$l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$b1 = $l0 cmp 4294967295L;	$i15 = (int) $b1;	if $i15 <= 0 goto $z3 = 0;	$z3 = 1;	$z2 = 1;	goto [?= z0 = $z3];	z0 = $z3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45);	if $z2 == 0 goto $b12 = 20;	$b12 = 45;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2);	$i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize>;	$l4 = (long) $i3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4);	if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$l13 = 4294967295L;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13);	$r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5);	if z0 == 0 goto $b14 = 0;	$b14 = 0;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset>;	$l7 = (long) $i6;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7);	$r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out>;	virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6);	if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i8 = lengthof $r6;	$i10 = $i9 + $i8;	return $i10
;block_num 10