(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var658 0)
(declare-sort var3907 0)
(declare-sort var1908 0)
(declare-sort var1670 0)
(declare-sort var688 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun written/-1911448563 (var658) Int)
(declare-fun size/982265083 (var3907) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInt/643489908 (var658 Int) void)
(declare-fun writeShort/197125774 (var658 Int) void)
(declare-fun crc/982265083 (var3907) Int)
(declare-fun compressedSize/982265083 (var3907) Int)
(declare-fun filename/982265083 (var3907) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun offset/982265083 (var3907) Int)
(declare-fun getBytes/-163691139 (String var1908) (Array Int Int))
(declare-fun out/-1911448563 (var658) var688)
(declare-fun write/1886568149 (var688 (Array Int Int)) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var658 var658)
(declare-const null-var3907 var3907)
(declare-const var1670-US_ASCII var1908)
(declare-const var3306 var658) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl 
(assert (not (= var3306 null-var658)))
(declare-const var2012 var3907) ; Statement: r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry 
(assert (not (= var2012 null-var3907)))
(declare-const var3306!1 var658)
(assert (not (= var3306!1 null-var658)))
(assert (= (written/-1911448563 var3306!1) 0)) ; Statement: r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0 
(define-const var956 Int (size/982265083 var2012)) ; Statement: $l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(define-const var482 Int (ite (> var956 4294967295) 1 (ite (< var956 4294967295) (- 1) 0))) ; Statement: $b1 = $l0 cmp 4294967295L 
(define-const var1963 Int (cast-from-Int-to-Int var482)) ; Statement: $i15 = (int) $b1 
 ; Statement: if $i15 <= 0 goto $z3 = 0 
(assert (<= var1963 0)) ; Cond: $i15 <= 0 
(define-const var3724 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(define-const var569 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var1469 Bool var3724) ; Statement: z0 = $z3 
(assert true)
;(assert (writeInt/643489908 var3306!1 33639248)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L) 

(declare-const var3306!2 var658)
(declare-const var1613 Int)
(assert true)
;(assert (writeShort/197125774 var3306!2 45)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45) 

(declare-const var3306!3 var658)
(declare-const var909 Int)
 ; Statement: if $z2 == 0 goto $b12 = 20 
(assert (not (= (ite var569 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var100 Int 45) ; Statement: $b12 = 45 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var3306!3 var100)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12) 

(declare-const var3306!4 var658)
(declare-const var100!1 Int)
(assert true)
;(assert (writeShort/197125774 var3306!4 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var3306!5 var658)
(declare-const var292 Int)
(assert true)
;(assert (writeShort/197125774 var3306!5 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var3306!6 var658)
(declare-const var292!1 Int)
(assert true)
;(assert (writeInt/643489908 var3306!6 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var3306!7 var658)
(declare-const var1646 Int)
(define-const var2745 Int (crc/982265083 var2012)) ; Statement: $l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc> 
(assert true)
;(assert (writeInt/643489908 var3306!7 var2745)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2) 

(declare-const var3306!8 var658)
(declare-const var2745!1 Int)
(define-const var42 Int (compressedSize/982265083 var2012)) ; Statement: $i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize> 
(define-const var2443 Int (cast-from-Int-to-Int var42)) ; Statement: $l4 = (long) $i3 
(assert true)
;(assert (writeInt/643489908 var3306!8 var2443)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4) 

(declare-const var3306!9 var658)
(declare-const var2443!1 Int)
 ; Statement: if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert (= (ite var1469 1 0) 0)) ; Cond: z0 == 0 
(define-const var2646 Int (size/982265083 var2012)) ; Statement: $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert true) ; Non Conditional
(assert true)
;(assert (writeInt/643489908 var3306!9 var2646)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13) 

(declare-const var3306!10 var658)
(declare-const var2646!1 Int)
(define-const var3133 String (filename/982265083 var2012)) ; Statement: $r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(assert true)
(define-const var3323 Int (length/-134980193 var3133)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (writeShort/197125774 var3306!10 var3323)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5) 

(declare-const var3306!11 var658)
(declare-const var3323!1 Int)
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (= (ite var1469 1 0) 0)) ; Cond: z0 == 0 
(define-const var3393 Int 0) ; Statement: $b14 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var3306!11 var3393)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14) 

(declare-const var3306!12 var658)
(declare-const var3393!1 Int)
(assert true)
;(assert (writeShort/197125774 var3306!12 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var3306!13 var658)
(declare-const var2667 Int)
(assert true)
;(assert (writeShort/197125774 var3306!13 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var3306!14 var658)
(declare-const var2667!1 Int)
(assert true)
;(assert (writeShort/197125774 var3306!14 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var3306!15 var658)
(declare-const var2667!2 Int)
(assert true)
;(assert (writeInt/643489908 var3306!15 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var3306!16 var658)
(declare-const var1646!1 Int)
(define-const var1816 Int (offset/982265083 var2012)) ; Statement: $i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset> 
(define-const var3642 Int (cast-from-Int-to-Int var1816)) ; Statement: $l7 = (long) $i6 
(assert true)
;(assert (writeInt/643489908 var3306!16 var3642)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7) 

(declare-const var3306!17 var658)
(declare-const var3642!1 Int)
(define-const var520 String (filename/982265083 var2012)) ; Statement: $r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(define-const var3499 var1908 var1670-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var3975 (Array Int Int) (getBytes/-163691139 var520 var3499)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var376 var688 (out/-1911448563 var3306!17)) ; Statement: $r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out> 
(assert true)
;(assert (write/1886568149 var376 var3975)) ; Statement: virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6) 

(declare-const var376!1 var688)
(declare-const var3975!1 (Array Int Int))
 ; Statement: if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(assert (= (ite var1469 1 0) 0)) ; Cond: z0 == 0 
(define-const var1412 Int (written/-1911448563 var3306!17)) ; Statement: $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(define-const var2324 Int (getLength-Arr-Int-1 var3975!1)) ; Statement: $i8 = lengthof $r6 
(define-const var1186 Int (+ var1412 var2324)) ; Statement: $i10 = $i9 + $i8 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {written/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], int), size/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), cast-from-Int-to-Int=([byte], int), writeInt/643489908=([org.apache.poi.xssf.streaming.Zip64Impl, long], void), writeShort/197125774=([org.apache.poi.xssf.streaming.Zip64Impl, int], void), crc/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), compressedSize/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), filename/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], java.lang.String), length/-134980193=([java.lang.String], int), offset/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), out/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), getLength-Arr-Int-1=([byte[]], int)}
; {var658=org.apache.poi.xssf.streaming.Zip64Impl, var3306=r0, var3907=org.apache.poi.xssf.streaming.Zip64Impl$Entry, var2012=r1, var956=$l0, var482=$b1, var1963=$i15, var3724=$z3, var569=$z2, var1469=z0, var1613=33639248L, var909=45, var100=$b12, var292=8, var1646=0L, var2745=$l2, var42=$i3, var2443=$l4, var2646=$l13, var3133=$r2, var3323=$i5, var3393=$b14, var2667=0, var1816=$i6, var3642=$l7, var520=$r4, var1908=java.nio.charset.Charset, var1670=java.nio.charset.StandardCharsets, var3499=$r3, var3975=$r6, var688=java.io.OutputStream, var376=$r5, var1412=$i9, var2324=$i8, var1186=$i10}
; {org.apache.poi.xssf.streaming.Zip64Impl=var658, r0=var3306, org.apache.poi.xssf.streaming.Zip64Impl$Entry=var3907, r1=var2012, $l0=var956, $b1=var482, $i15=var1963, $z3=var3724, $z2=var569, z0=var1469, 33639248L=var1613, 45=var909, $b12=var100, 8=var292, 0L=var1646, $l2=var2745, $i3=var42, $l4=var2443, $l13=var2646, $r2=var3133, $i5=var3323, $b14=var3393, 0=var2667, $i6=var1816, $l7=var3642, $r4=var520, java.nio.charset.Charset=var1908, java.nio.charset.StandardCharsets=var1670, $r3=var3499, $r6=var3975, java.io.OutputStream=var688, $r5=var376, $i9=var1412, $i8=var2324, $i10=var1186}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl;	r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry;	r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0;	$l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$b1 = $l0 cmp 4294967295L;	$i15 = (int) $b1;	if $i15 <= 0 goto $z3 = 0;	$z3 = 0;	$z2 = 0;	z0 = $z3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45);	if $z2 == 0 goto $b12 = 20;	$b12 = 45;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2);	$i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize>;	$l4 = (long) $i3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4);	if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13);	$r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5);	if z0 == 0 goto $b14 = 0;	$b14 = 0;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset>;	$l7 = (long) $i6;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7);	$r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out>;	virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6);	if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i8 = lengthof $r6;	$i10 = $i9 + $i8;	return $i10
;block_num 10