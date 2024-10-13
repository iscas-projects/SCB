(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3633 0)
(declare-sort var96 0)
(declare-sort var297 0)
(declare-sort var1574 0)
(declare-sort var2679 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun written/-1911448563 (var3633) Int)
(declare-fun size/982265083 (var96) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInt/643489908 (var3633 Int) void)
(declare-fun writeShort/197125774 (var3633 Int) void)
(declare-fun crc/982265083 (var96) Int)
(declare-fun compressedSize/982265083 (var96) Int)
(declare-fun filename/982265083 (var96) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun offset/982265083 (var96) Int)
(declare-fun getBytes/-163691139 (String var297) (Array Int Int))
(declare-fun out/-1911448563 (var3633) var2679)
(declare-fun write/1886568149 (var2679 (Array Int Int)) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var3633 var3633)
(declare-const null-var96 var96)
(declare-const var1574-US_ASCII var297)
(declare-const var1150 var3633) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl 
(assert (not (= var1150 null-var3633)))
(declare-const var1949 var96) ; Statement: r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry 
(assert (not (= var1949 null-var96)))
(declare-const var1150!1 var3633)
(assert (not (= var1150!1 null-var3633)))
(assert (= (written/-1911448563 var1150!1) 0)) ; Statement: r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0 
(define-const var2731 Int (size/982265083 var1949)) ; Statement: $l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(define-const var3368 Int (ite (> var2731 4294967295) 1 (ite (< var2731 4294967295) (- 1) 0))) ; Statement: $b1 = $l0 cmp 4294967295L 
(define-const var174 Int (cast-from-Int-to-Int var3368)) ; Statement: $i15 = (int) $b1 
 ; Statement: if $i15 <= 0 goto $z3 = 0 
(assert (not (<= var174 0))) ; Negate: Cond: $i15 <= 0  
(define-const var3803 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
(define-const var1314 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= z0 = $z3] 
(assert true) ; Non Conditional
(define-const var1204 Bool var3803) ; Statement: z0 = $z3 
(assert true)
;(assert (writeInt/643489908 var1150!1 33639248)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L) 

(declare-const var1150!2 var3633)
(declare-const var3522 Int)
(assert true)
;(assert (writeShort/197125774 var1150!2 45)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45) 

(declare-const var1150!3 var3633)
(declare-const var2509 Int)
 ; Statement: if $z2 == 0 goto $b12 = 20 
(assert (= (ite var1314 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2333 Int 20) ; Statement: $b12 = 20 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var1150!3 var2333)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12) 

(declare-const var1150!4 var3633)
(declare-const var2333!1 Int)
(assert true)
;(assert (writeShort/197125774 var1150!4 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var1150!5 var3633)
(declare-const var1361 Int)
(assert true)
;(assert (writeShort/197125774 var1150!5 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var1150!6 var3633)
(declare-const var1361!1 Int)
(assert true)
;(assert (writeInt/643489908 var1150!6 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var1150!7 var3633)
(declare-const var3220 Int)
(define-const var1127 Int (crc/982265083 var1949)) ; Statement: $l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc> 
(assert true)
;(assert (writeInt/643489908 var1150!7 var1127)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2) 

(declare-const var1150!8 var3633)
(declare-const var1127!1 Int)
(define-const var3699 Int (compressedSize/982265083 var1949)) ; Statement: $i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize> 
(define-const var2767 Int (cast-from-Int-to-Int var3699)) ; Statement: $l4 = (long) $i3 
(assert true)
;(assert (writeInt/643489908 var1150!8 var2767)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4) 

(declare-const var1150!9 var3633)
(declare-const var2767!1 Int)
 ; Statement: if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert (= (ite var1204 1 0) 0)) ; Cond: z0 == 0 
(define-const var2715 Int (size/982265083 var1949)) ; Statement: $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert true) ; Non Conditional
(assert true)
;(assert (writeInt/643489908 var1150!9 var2715)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13) 

(declare-const var1150!10 var3633)
(declare-const var2715!1 Int)
(define-const var678 String (filename/982265083 var1949)) ; Statement: $r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(assert true)
(define-const var3117 Int (length/-134980193 var678)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (writeShort/197125774 var1150!10 var3117)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5) 

(declare-const var1150!11 var3633)
(declare-const var3117!1 Int)
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (= (ite var1204 1 0) 0)) ; Cond: z0 == 0 
(define-const var3182 Int 0) ; Statement: $b14 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var1150!11 var3182)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14) 

(declare-const var1150!12 var3633)
(declare-const var3182!1 Int)
(assert true)
;(assert (writeShort/197125774 var1150!12 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var1150!13 var3633)
(declare-const var1323 Int)
(assert true)
;(assert (writeShort/197125774 var1150!13 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var1150!14 var3633)
(declare-const var1323!1 Int)
(assert true)
;(assert (writeShort/197125774 var1150!14 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var1150!15 var3633)
(declare-const var1323!2 Int)
(assert true)
;(assert (writeInt/643489908 var1150!15 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var1150!16 var3633)
(declare-const var3220!1 Int)
(define-const var1965 Int (offset/982265083 var1949)) ; Statement: $i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset> 
(define-const var2996 Int (cast-from-Int-to-Int var1965)) ; Statement: $l7 = (long) $i6 
(assert true)
;(assert (writeInt/643489908 var1150!16 var2996)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7) 

(declare-const var1150!17 var3633)
(declare-const var2996!1 Int)
(define-const var604 String (filename/982265083 var1949)) ; Statement: $r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(define-const var2045 var297 var1574-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var2970 (Array Int Int) (getBytes/-163691139 var604 var2045)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var1069 var2679 (out/-1911448563 var1150!17)) ; Statement: $r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out> 
(assert true)
;(assert (write/1886568149 var1069 var2970)) ; Statement: virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6) 

(declare-const var1069!1 var2679)
(declare-const var2970!1 (Array Int Int))
 ; Statement: if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(assert (= (ite var1204 1 0) 0)) ; Cond: z0 == 0 
(define-const var2373 Int (written/-1911448563 var1150!17)) ; Statement: $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(define-const var3009 Int (getLength-Arr-Int-1 var2970!1)) ; Statement: $i8 = lengthof $r6 
(define-const var914 Int (+ var2373 var3009)) ; Statement: $i10 = $i9 + $i8 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {written/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], int), size/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), cast-from-Int-to-Int=([byte], int), writeInt/643489908=([org.apache.poi.xssf.streaming.Zip64Impl, long], void), writeShort/197125774=([org.apache.poi.xssf.streaming.Zip64Impl, int], void), crc/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), compressedSize/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), filename/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], java.lang.String), length/-134980193=([java.lang.String], int), offset/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), out/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), getLength-Arr-Int-1=([byte[]], int)}
; {var3633=org.apache.poi.xssf.streaming.Zip64Impl, var1150=r0, var96=org.apache.poi.xssf.streaming.Zip64Impl$Entry, var1949=r1, var2731=$l0, var3368=$b1, var174=$i15, var3803=$z3, var1314=$z2, var1204=z0, var3522=33639248L, var2509=45, var2333=$b12, var1361=8, var3220=0L, var1127=$l2, var3699=$i3, var2767=$l4, var2715=$l13, var678=$r2, var3117=$i5, var3182=$b14, var1323=0, var1965=$i6, var2996=$l7, var604=$r4, var297=java.nio.charset.Charset, var1574=java.nio.charset.StandardCharsets, var2045=$r3, var2970=$r6, var2679=java.io.OutputStream, var1069=$r5, var2373=$i9, var3009=$i8, var914=$i10}
; {org.apache.poi.xssf.streaming.Zip64Impl=var3633, r0=var1150, org.apache.poi.xssf.streaming.Zip64Impl$Entry=var96, r1=var1949, $l0=var2731, $b1=var3368, $i15=var174, $z3=var3803, $z2=var1314, z0=var1204, 33639248L=var3522, 45=var2509, $b12=var2333, 8=var1361, 0L=var3220, $l2=var1127, $i3=var3699, $l4=var2767, $l13=var2715, $r2=var678, $i5=var3117, $b14=var3182, 0=var1323, $i6=var1965, $l7=var2996, $r4=var604, java.nio.charset.Charset=var297, java.nio.charset.StandardCharsets=var1574, $r3=var2045, $r6=var2970, java.io.OutputStream=var2679, $r5=var1069, $i9=var2373, $i8=var3009, $i10=var914}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl;	r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry;	r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0;	$l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$b1 = $l0 cmp 4294967295L;	$i15 = (int) $b1;	if $i15 <= 0 goto $z3 = 0;	$z3 = 1;	$z2 = 1;	goto [?= z0 = $z3];	z0 = $z3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45);	if $z2 == 0 goto $b12 = 20;	$b12 = 20;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2);	$i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize>;	$l4 = (long) $i3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4);	if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13);	$r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5);	if z0 == 0 goto $b14 = 0;	$b14 = 0;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset>;	$l7 = (long) $i6;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7);	$r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out>;	virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6);	if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i8 = lengthof $r6;	$i10 = $i9 + $i8;	return $i10
;block_num 10