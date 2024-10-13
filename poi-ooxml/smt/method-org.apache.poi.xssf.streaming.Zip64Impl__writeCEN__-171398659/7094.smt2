(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1856 0)
(declare-sort var3793 0)
(declare-sort var1441 0)
(declare-sort var2105 0)
(declare-sort var755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun written/-1911448563 (var1856) Int)
(declare-fun size/982265083 (var3793) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInt/643489908 (var1856 Int) void)
(declare-fun writeShort/197125774 (var1856 Int) void)
(declare-fun crc/982265083 (var3793) Int)
(declare-fun compressedSize/982265083 (var3793) Int)
(declare-fun filename/982265083 (var3793) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun offset/982265083 (var3793) Int)
(declare-fun getBytes/-163691139 (String var1441) (Array Int Int))
(declare-fun out/-1911448563 (var1856) var755)
(declare-fun write/1886568149 (var755 (Array Int Int)) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var1856 var1856)
(declare-const null-var3793 var3793)
(declare-const var2105-US_ASCII var1441)
(declare-const var350 var1856) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl 
(assert (not (= var350 null-var1856)))
(declare-const var2772 var3793) ; Statement: r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry 
(assert (not (= var2772 null-var3793)))
(declare-const var350!1 var1856)
(assert (not (= var350!1 null-var1856)))
(assert (= (written/-1911448563 var350!1) 0)) ; Statement: r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0 
(define-const var2964 Int (size/982265083 var2772)) ; Statement: $l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(define-const var1778 Int (ite (> var2964 4294967295) 1 (ite (< var2964 4294967295) (- 1) 0))) ; Statement: $b1 = $l0 cmp 4294967295L 
(define-const var570 Int (cast-from-Int-to-Int var1778)) ; Statement: $i15 = (int) $b1 
 ; Statement: if $i15 <= 0 goto $z3 = 0 
(assert (not (<= var570 0))) ; Negate: Cond: $i15 <= 0  
(define-const var2939 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
(define-const var1958 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= z0 = $z3] 
(assert true) ; Non Conditional
(define-const var3382 Bool var2939) ; Statement: z0 = $z3 
(assert true)
;(assert (writeInt/643489908 var350!1 33639248)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L) 

(declare-const var350!2 var1856)
(declare-const var813 Int)
(assert true)
;(assert (writeShort/197125774 var350!2 45)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45) 

(declare-const var350!3 var1856)
(declare-const var1688 Int)
 ; Statement: if $z2 == 0 goto $b12 = 20 
(assert (not (= (ite var1958 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1421 Int 45) ; Statement: $b12 = 45 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var350!3 var1421)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12) 

(declare-const var350!4 var1856)
(declare-const var1421!1 Int)
(assert true)
;(assert (writeShort/197125774 var350!4 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var350!5 var1856)
(declare-const var564 Int)
(assert true)
;(assert (writeShort/197125774 var350!5 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var350!6 var1856)
(declare-const var564!1 Int)
(assert true)
;(assert (writeInt/643489908 var350!6 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var350!7 var1856)
(declare-const var2235 Int)
(define-const var2480 Int (crc/982265083 var2772)) ; Statement: $l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc> 
(assert true)
;(assert (writeInt/643489908 var350!7 var2480)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2) 

(declare-const var350!8 var1856)
(declare-const var2480!1 Int)
(define-const var2289 Int (compressedSize/982265083 var2772)) ; Statement: $i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize> 
(define-const var2961 Int (cast-from-Int-to-Int var2289)) ; Statement: $l4 = (long) $i3 
(assert true)
;(assert (writeInt/643489908 var350!8 var2961)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4) 

(declare-const var350!9 var1856)
(declare-const var2961!1 Int)
 ; Statement: if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert (= (ite var3382 1 0) 0)) ; Cond: z0 == 0 
(define-const var509 Int (size/982265083 var2772)) ; Statement: $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert true) ; Non Conditional
(assert true)
;(assert (writeInt/643489908 var350!9 var509)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13) 

(declare-const var350!10 var1856)
(declare-const var509!1 Int)
(define-const var3996 String (filename/982265083 var2772)) ; Statement: $r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(assert true)
(define-const var2252 Int (length/-134980193 var3996)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (writeShort/197125774 var350!10 var2252)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5) 

(declare-const var350!11 var1856)
(declare-const var2252!1 Int)
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (= (ite var3382 1 0) 0)) ; Cond: z0 == 0 
(define-const var69 Int 0) ; Statement: $b14 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var350!11 var69)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14) 

(declare-const var350!12 var1856)
(declare-const var69!1 Int)
(assert true)
;(assert (writeShort/197125774 var350!12 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var350!13 var1856)
(declare-const var2686 Int)
(assert true)
;(assert (writeShort/197125774 var350!13 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var350!14 var1856)
(declare-const var2686!1 Int)
(assert true)
;(assert (writeShort/197125774 var350!14 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var350!15 var1856)
(declare-const var2686!2 Int)
(assert true)
;(assert (writeInt/643489908 var350!15 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var350!16 var1856)
(declare-const var2235!1 Int)
(define-const var325 Int (offset/982265083 var2772)) ; Statement: $i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset> 
(define-const var3128 Int (cast-from-Int-to-Int var325)) ; Statement: $l7 = (long) $i6 
(assert true)
;(assert (writeInt/643489908 var350!16 var3128)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7) 

(declare-const var350!17 var1856)
(declare-const var3128!1 Int)
(define-const var2743 String (filename/982265083 var2772)) ; Statement: $r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(define-const var1375 var1441 var2105-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var3957 (Array Int Int) (getBytes/-163691139 var2743 var1375)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var2376 var755 (out/-1911448563 var350!17)) ; Statement: $r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out> 
(assert true)
;(assert (write/1886568149 var2376 var3957)) ; Statement: virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6) 

(declare-const var2376!1 var755)
(declare-const var3957!1 (Array Int Int))
 ; Statement: if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(assert (= (ite var3382 1 0) 0)) ; Cond: z0 == 0 
(define-const var2336 Int (written/-1911448563 var350!17)) ; Statement: $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(define-const var1050 Int (getLength-Arr-Int-1 var3957!1)) ; Statement: $i8 = lengthof $r6 
(define-const var900 Int (+ var2336 var1050)) ; Statement: $i10 = $i9 + $i8 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {written/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], int), size/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), cast-from-Int-to-Int=([byte], int), writeInt/643489908=([org.apache.poi.xssf.streaming.Zip64Impl, long], void), writeShort/197125774=([org.apache.poi.xssf.streaming.Zip64Impl, int], void), crc/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), compressedSize/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), filename/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], java.lang.String), length/-134980193=([java.lang.String], int), offset/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), out/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), getLength-Arr-Int-1=([byte[]], int)}
; {var1856=org.apache.poi.xssf.streaming.Zip64Impl, var350=r0, var3793=org.apache.poi.xssf.streaming.Zip64Impl$Entry, var2772=r1, var2964=$l0, var1778=$b1, var570=$i15, var2939=$z3, var1958=$z2, var3382=z0, var813=33639248L, var1688=45, var1421=$b12, var564=8, var2235=0L, var2480=$l2, var2289=$i3, var2961=$l4, var509=$l13, var3996=$r2, var2252=$i5, var69=$b14, var2686=0, var325=$i6, var3128=$l7, var2743=$r4, var1441=java.nio.charset.Charset, var2105=java.nio.charset.StandardCharsets, var1375=$r3, var3957=$r6, var755=java.io.OutputStream, var2376=$r5, var2336=$i9, var1050=$i8, var900=$i10}
; {org.apache.poi.xssf.streaming.Zip64Impl=var1856, r0=var350, org.apache.poi.xssf.streaming.Zip64Impl$Entry=var3793, r1=var2772, $l0=var2964, $b1=var1778, $i15=var570, $z3=var2939, $z2=var1958, z0=var3382, 33639248L=var813, 45=var1688, $b12=var1421, 8=var564, 0L=var2235, $l2=var2480, $i3=var2289, $l4=var2961, $l13=var509, $r2=var3996, $i5=var2252, $b14=var69, 0=var2686, $i6=var325, $l7=var3128, $r4=var2743, java.nio.charset.Charset=var1441, java.nio.charset.StandardCharsets=var2105, $r3=var1375, $r6=var3957, java.io.OutputStream=var755, $r5=var2376, $i9=var2336, $i8=var1050, $i10=var900}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl;	r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry;	r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0;	$l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$b1 = $l0 cmp 4294967295L;	$i15 = (int) $b1;	if $i15 <= 0 goto $z3 = 0;	$z3 = 1;	$z2 = 1;	goto [?= z0 = $z3];	z0 = $z3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45);	if $z2 == 0 goto $b12 = 20;	$b12 = 45;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2);	$i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize>;	$l4 = (long) $i3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4);	if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13);	$r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5);	if z0 == 0 goto $b14 = 0;	$b14 = 0;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset>;	$l7 = (long) $i6;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7);	$r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out>;	virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6);	if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i8 = lengthof $r6;	$i10 = $i9 + $i8;	return $i10
;block_num 10