(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2566 0)
(declare-sort var748 0)
(declare-sort var2655 0)
(declare-sort var1215 0)
(declare-sort var179 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun written/-1911448563 (var2566) Int)
(declare-fun size/982265083 (var748) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInt/643489908 (var2566 Int) void)
(declare-fun writeShort/197125774 (var2566 Int) void)
(declare-fun crc/982265083 (var748) Int)
(declare-fun compressedSize/982265083 (var748) Int)
(declare-fun filename/982265083 (var748) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun offset/982265083 (var748) Int)
(declare-fun getBytes/-163691139 (String var2655) (Array Int Int))
(declare-fun out/-1911448563 (var2566) var179)
(declare-fun write/1886568149 (var179 (Array Int Int)) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var2566 var2566)
(declare-const null-var748 var748)
(declare-const var1215-US_ASCII var2655)
(declare-const var2051 var2566) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl 
(assert (not (= var2051 null-var2566)))
(declare-const var2928 var748) ; Statement: r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry 
(assert (not (= var2928 null-var748)))
(declare-const var2051!1 var2566)
(assert (not (= var2051!1 null-var2566)))
(assert (= (written/-1911448563 var2051!1) 0)) ; Statement: r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0 
(define-const var187 Int (size/982265083 var2928)) ; Statement: $l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(define-const var3072 Int (ite (> var187 4294967295) 1 (ite (< var187 4294967295) (- 1) 0))) ; Statement: $b1 = $l0 cmp 4294967295L 
(define-const var333 Int (cast-from-Int-to-Int var3072)) ; Statement: $i15 = (int) $b1 
 ; Statement: if $i15 <= 0 goto $z3 = 0 
(assert (<= var333 0)) ; Cond: $i15 <= 0 
(define-const var984 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(define-const var150 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var1452 Bool var984) ; Statement: z0 = $z3 
(assert true)
;(assert (writeInt/643489908 var2051!1 33639248)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L) 

(declare-const var2051!2 var2566)
(declare-const var1713 Int)
(assert true)
;(assert (writeShort/197125774 var2051!2 45)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45) 

(declare-const var2051!3 var2566)
(declare-const var3871 Int)
 ; Statement: if $z2 == 0 goto $b12 = 20 
(assert (= (ite var150 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1196 Int 20) ; Statement: $b12 = 20 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var2051!3 var1196)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12) 

(declare-const var2051!4 var2566)
(declare-const var1196!1 Int)
(assert true)
;(assert (writeShort/197125774 var2051!4 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var2051!5 var2566)
(declare-const var3336 Int)
(assert true)
;(assert (writeShort/197125774 var2051!5 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var2051!6 var2566)
(declare-const var3336!1 Int)
(assert true)
;(assert (writeInt/643489908 var2051!6 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var2051!7 var2566)
(declare-const var3943 Int)
(define-const var2656 Int (crc/982265083 var2928)) ; Statement: $l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc> 
(assert true)
;(assert (writeInt/643489908 var2051!7 var2656)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2) 

(declare-const var2051!8 var2566)
(declare-const var2656!1 Int)
(define-const var297 Int (compressedSize/982265083 var2928)) ; Statement: $i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize> 
(define-const var1357 Int (cast-from-Int-to-Int var297)) ; Statement: $l4 = (long) $i3 
(assert true)
;(assert (writeInt/643489908 var2051!8 var1357)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4) 

(declare-const var2051!9 var2566)
(declare-const var1357!1 Int)
 ; Statement: if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert (= (ite var1452 1 0) 0)) ; Cond: z0 == 0 
(define-const var691 Int (size/982265083 var2928)) ; Statement: $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert true) ; Non Conditional
(assert true)
;(assert (writeInt/643489908 var2051!9 var691)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13) 

(declare-const var2051!10 var2566)
(declare-const var691!1 Int)
(define-const var1179 String (filename/982265083 var2928)) ; Statement: $r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(assert true)
(define-const var2894 Int (length/-134980193 var1179)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (writeShort/197125774 var2051!10 var2894)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5) 

(declare-const var2051!11 var2566)
(declare-const var2894!1 Int)
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (not (= (ite var1452 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2217 Int 12) ; Statement: $b14 = 12 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var2051!11 var2217)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14) 

(declare-const var2051!12 var2566)
(declare-const var2217!1 Int)
(assert true)
;(assert (writeShort/197125774 var2051!12 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var2051!13 var2566)
(declare-const var1711 Int)
(assert true)
;(assert (writeShort/197125774 var2051!13 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var2051!14 var2566)
(declare-const var1711!1 Int)
(assert true)
;(assert (writeShort/197125774 var2051!14 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var2051!15 var2566)
(declare-const var1711!2 Int)
(assert true)
;(assert (writeInt/643489908 var2051!15 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var2051!16 var2566)
(declare-const var3943!1 Int)
(define-const var1542 Int (offset/982265083 var2928)) ; Statement: $i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset> 
(define-const var3755 Int (cast-from-Int-to-Int var1542)) ; Statement: $l7 = (long) $i6 
(assert true)
;(assert (writeInt/643489908 var2051!16 var3755)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7) 

(declare-const var2051!17 var2566)
(declare-const var3755!1 Int)
(define-const var622 String (filename/982265083 var2928)) ; Statement: $r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(define-const var309 var2655 var1215-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var1354 (Array Int Int) (getBytes/-163691139 var622 var309)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var3946 var179 (out/-1911448563 var2051!17)) ; Statement: $r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out> 
(assert true)
;(assert (write/1886568149 var3946 var1354)) ; Statement: virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6) 

(declare-const var3946!1 var179)
(declare-const var1354!1 (Array Int Int))
 ; Statement: if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(assert (= (ite var1452 1 0) 0)) ; Cond: z0 == 0 
(define-const var3272 Int (written/-1911448563 var2051!17)) ; Statement: $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(define-const var2098 Int (getLength-Arr-Int-1 var1354!1)) ; Statement: $i8 = lengthof $r6 
(define-const var2285 Int (+ var3272 var2098)) ; Statement: $i10 = $i9 + $i8 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {written/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], int), size/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), cast-from-Int-to-Int=([byte], int), writeInt/643489908=([org.apache.poi.xssf.streaming.Zip64Impl, long], void), writeShort/197125774=([org.apache.poi.xssf.streaming.Zip64Impl, int], void), crc/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), compressedSize/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), filename/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], java.lang.String), length/-134980193=([java.lang.String], int), offset/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), out/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), getLength-Arr-Int-1=([byte[]], int)}
; {var2566=org.apache.poi.xssf.streaming.Zip64Impl, var2051=r0, var748=org.apache.poi.xssf.streaming.Zip64Impl$Entry, var2928=r1, var187=$l0, var3072=$b1, var333=$i15, var984=$z3, var150=$z2, var1452=z0, var1713=33639248L, var3871=45, var1196=$b12, var3336=8, var3943=0L, var2656=$l2, var297=$i3, var1357=$l4, var691=$l13, var1179=$r2, var2894=$i5, var2217=$b14, var1711=0, var1542=$i6, var3755=$l7, var622=$r4, var2655=java.nio.charset.Charset, var1215=java.nio.charset.StandardCharsets, var309=$r3, var1354=$r6, var179=java.io.OutputStream, var3946=$r5, var3272=$i9, var2098=$i8, var2285=$i10}
; {org.apache.poi.xssf.streaming.Zip64Impl=var2566, r0=var2051, org.apache.poi.xssf.streaming.Zip64Impl$Entry=var748, r1=var2928, $l0=var187, $b1=var3072, $i15=var333, $z3=var984, $z2=var150, z0=var1452, 33639248L=var1713, 45=var3871, $b12=var1196, 8=var3336, 0L=var3943, $l2=var2656, $i3=var297, $l4=var1357, $l13=var691, $r2=var1179, $i5=var2894, $b14=var2217, 0=var1711, $i6=var1542, $l7=var3755, $r4=var622, java.nio.charset.Charset=var2655, java.nio.charset.StandardCharsets=var1215, $r3=var309, $r6=var1354, java.io.OutputStream=var179, $r5=var3946, $i9=var3272, $i8=var2098, $i10=var2285}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl;	r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry;	r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0;	$l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$b1 = $l0 cmp 4294967295L;	$i15 = (int) $b1;	if $i15 <= 0 goto $z3 = 0;	$z3 = 0;	$z2 = 0;	z0 = $z3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45);	if $z2 == 0 goto $b12 = 20;	$b12 = 20;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2);	$i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize>;	$l4 = (long) $i3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4);	if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13);	$r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5);	if z0 == 0 goto $b14 = 0;	$b14 = 12;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset>;	$l7 = (long) $i6;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7);	$r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out>;	virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6);	if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i8 = lengthof $r6;	$i10 = $i9 + $i8;	return $i10
;block_num 10