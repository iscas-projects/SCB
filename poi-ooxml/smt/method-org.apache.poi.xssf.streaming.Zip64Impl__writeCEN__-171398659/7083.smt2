(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3929 0)
(declare-sort var2991 0)
(declare-sort var2244 0)
(declare-sort var386 0)
(declare-sort var2370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun written/-1911448563 (var3929) Int)
(declare-fun size/982265083 (var2991) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInt/643489908 (var3929 Int) void)
(declare-fun writeShort/197125774 (var3929 Int) void)
(declare-fun crc/982265083 (var2991) Int)
(declare-fun compressedSize/982265083 (var2991) Int)
(declare-fun filename/982265083 (var2991) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun offset/982265083 (var2991) Int)
(declare-fun getBytes/-163691139 (String var2244) (Array Int Int))
(declare-fun out/-1911448563 (var3929) var2370)
(declare-fun write/1886568149 (var2370 (Array Int Int)) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var3929 var3929)
(declare-const null-var2991 var2991)
(declare-const var386-US_ASCII var2244)
(declare-const var3515 var3929) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl 
(assert (not (= var3515 null-var3929)))
(declare-const var229 var2991) ; Statement: r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry 
(assert (not (= var229 null-var2991)))
(declare-const var3515!1 var3929)
(assert (not (= var3515!1 null-var3929)))
(assert (= (written/-1911448563 var3515!1) 0)) ; Statement: r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0 
(define-const var1929 Int (size/982265083 var229)) ; Statement: $l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(define-const var2105 Int (ite (> var1929 4294967295) 1 (ite (< var1929 4294967295) (- 1) 0))) ; Statement: $b1 = $l0 cmp 4294967295L 
(define-const var383 Int (cast-from-Int-to-Int var2105)) ; Statement: $i15 = (int) $b1 
 ; Statement: if $i15 <= 0 goto $z3 = 0 
(assert (not (<= var383 0))) ; Negate: Cond: $i15 <= 0  
(define-const var648 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
(define-const var3843 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= z0 = $z3] 
(assert true) ; Non Conditional
(define-const var3443 Bool var648) ; Statement: z0 = $z3 
(assert true)
;(assert (writeInt/643489908 var3515!1 33639248)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L) 

(declare-const var3515!2 var3929)
(declare-const var3245 Int)
(assert true)
;(assert (writeShort/197125774 var3515!2 45)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45) 

(declare-const var3515!3 var3929)
(declare-const var3574 Int)
 ; Statement: if $z2 == 0 goto $b12 = 20 
(assert (not (= (ite var3843 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var72 Int 45) ; Statement: $b12 = 45 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var3515!3 var72)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12) 

(declare-const var3515!4 var3929)
(declare-const var72!1 Int)
(assert true)
;(assert (writeShort/197125774 var3515!4 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var3515!5 var3929)
(declare-const var3785 Int)
(assert true)
;(assert (writeShort/197125774 var3515!5 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var3515!6 var3929)
(declare-const var3785!1 Int)
(assert true)
;(assert (writeInt/643489908 var3515!6 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var3515!7 var3929)
(declare-const var2533 Int)
(define-const var3751 Int (crc/982265083 var229)) ; Statement: $l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc> 
(assert true)
;(assert (writeInt/643489908 var3515!7 var3751)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2) 

(declare-const var3515!8 var3929)
(declare-const var3751!1 Int)
(define-const var2941 Int (compressedSize/982265083 var229)) ; Statement: $i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize> 
(define-const var1623 Int (cast-from-Int-to-Int var2941)) ; Statement: $l4 = (long) $i3 
(assert true)
;(assert (writeInt/643489908 var3515!8 var1623)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4) 

(declare-const var3515!9 var3929)
(declare-const var1623!1 Int)
 ; Statement: if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert (= (ite var3443 1 0) 0)) ; Cond: z0 == 0 
(define-const var2403 Int (size/982265083 var229)) ; Statement: $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert true) ; Non Conditional
(assert true)
;(assert (writeInt/643489908 var3515!9 var2403)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13) 

(declare-const var3515!10 var3929)
(declare-const var2403!1 Int)
(define-const var2679 String (filename/982265083 var229)) ; Statement: $r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(assert true)
(define-const var794 Int (length/-134980193 var2679)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (writeShort/197125774 var3515!10 var794)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5) 

(declare-const var3515!11 var3929)
(declare-const var794!1 Int)
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (not (= (ite var3443 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3894 Int 12) ; Statement: $b14 = 12 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var3515!11 var3894)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14) 

(declare-const var3515!12 var3929)
(declare-const var3894!1 Int)
(assert true)
;(assert (writeShort/197125774 var3515!12 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var3515!13 var3929)
(declare-const var885 Int)
(assert true)
;(assert (writeShort/197125774 var3515!13 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var3515!14 var3929)
(declare-const var885!1 Int)
(assert true)
;(assert (writeShort/197125774 var3515!14 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var3515!15 var3929)
(declare-const var885!2 Int)
(assert true)
;(assert (writeInt/643489908 var3515!15 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var3515!16 var3929)
(declare-const var2533!1 Int)
(define-const var2437 Int (offset/982265083 var229)) ; Statement: $i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset> 
(define-const var3815 Int (cast-from-Int-to-Int var2437)) ; Statement: $l7 = (long) $i6 
(assert true)
;(assert (writeInt/643489908 var3515!16 var3815)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7) 

(declare-const var3515!17 var3929)
(declare-const var3815!1 Int)
(define-const var1102 String (filename/982265083 var229)) ; Statement: $r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(define-const var12 var2244 var386-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var1201 (Array Int Int) (getBytes/-163691139 var1102 var12)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var966 var2370 (out/-1911448563 var3515!17)) ; Statement: $r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out> 
(assert true)
;(assert (write/1886568149 var966 var1201)) ; Statement: virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6) 

(declare-const var966!1 var2370)
(declare-const var1201!1 (Array Int Int))
 ; Statement: if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(assert (= (ite var3443 1 0) 0)) ; Cond: z0 == 0 
(define-const var3645 Int (written/-1911448563 var3515!17)) ; Statement: $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(define-const var2106 Int (getLength-Arr-Int-1 var1201!1)) ; Statement: $i8 = lengthof $r6 
(define-const var961 Int (+ var3645 var2106)) ; Statement: $i10 = $i9 + $i8 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {written/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], int), size/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), cast-from-Int-to-Int=([byte], int), writeInt/643489908=([org.apache.poi.xssf.streaming.Zip64Impl, long], void), writeShort/197125774=([org.apache.poi.xssf.streaming.Zip64Impl, int], void), crc/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), compressedSize/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), filename/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], java.lang.String), length/-134980193=([java.lang.String], int), offset/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), out/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), getLength-Arr-Int-1=([byte[]], int)}
; {var3929=org.apache.poi.xssf.streaming.Zip64Impl, var3515=r0, var2991=org.apache.poi.xssf.streaming.Zip64Impl$Entry, var229=r1, var1929=$l0, var2105=$b1, var383=$i15, var648=$z3, var3843=$z2, var3443=z0, var3245=33639248L, var3574=45, var72=$b12, var3785=8, var2533=0L, var3751=$l2, var2941=$i3, var1623=$l4, var2403=$l13, var2679=$r2, var794=$i5, var3894=$b14, var885=0, var2437=$i6, var3815=$l7, var1102=$r4, var2244=java.nio.charset.Charset, var386=java.nio.charset.StandardCharsets, var12=$r3, var1201=$r6, var2370=java.io.OutputStream, var966=$r5, var3645=$i9, var2106=$i8, var961=$i10}
; {org.apache.poi.xssf.streaming.Zip64Impl=var3929, r0=var3515, org.apache.poi.xssf.streaming.Zip64Impl$Entry=var2991, r1=var229, $l0=var1929, $b1=var2105, $i15=var383, $z3=var648, $z2=var3843, z0=var3443, 33639248L=var3245, 45=var3574, $b12=var72, 8=var3785, 0L=var2533, $l2=var3751, $i3=var2941, $l4=var1623, $l13=var2403, $r2=var2679, $i5=var794, $b14=var3894, 0=var885, $i6=var2437, $l7=var3815, $r4=var1102, java.nio.charset.Charset=var2244, java.nio.charset.StandardCharsets=var386, $r3=var12, $r6=var1201, java.io.OutputStream=var2370, $r5=var966, $i9=var3645, $i8=var2106, $i10=var961}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl;	r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry;	r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0;	$l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$b1 = $l0 cmp 4294967295L;	$i15 = (int) $b1;	if $i15 <= 0 goto $z3 = 0;	$z3 = 1;	$z2 = 1;	goto [?= z0 = $z3];	z0 = $z3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45);	if $z2 == 0 goto $b12 = 20;	$b12 = 45;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2);	$i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize>;	$l4 = (long) $i3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4);	if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13);	$r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5);	if z0 == 0 goto $b14 = 0;	$b14 = 12;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset>;	$l7 = (long) $i6;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7);	$r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out>;	virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6);	if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i8 = lengthof $r6;	$i10 = $i9 + $i8;	return $i10
;block_num 10