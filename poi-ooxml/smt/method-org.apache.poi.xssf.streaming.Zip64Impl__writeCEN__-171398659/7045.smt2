(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var811 0)
(declare-sort var603 0)
(declare-sort var1703 0)
(declare-sort var1693 0)
(declare-sort var32 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun written/-1911448563 (var811) Int)
(declare-fun size/982265083 (var603) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInt/643489908 (var811 Int) void)
(declare-fun writeShort/197125774 (var811 Int) void)
(declare-fun crc/982265083 (var603) Int)
(declare-fun compressedSize/982265083 (var603) Int)
(declare-fun filename/982265083 (var603) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun offset/982265083 (var603) Int)
(declare-fun getBytes/-163691139 (String var1703) (Array Int Int))
(declare-fun out/-1911448563 (var811) var32)
(declare-fun write/1886568149 (var32 (Array Int Int)) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var811 var811)
(declare-const null-var603 var603)
(declare-const var1693-US_ASCII var1703)
(declare-const var1030 var811) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl 
(assert (not (= var1030 null-var811)))
(declare-const var2700 var603) ; Statement: r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry 
(assert (not (= var2700 null-var603)))
(declare-const var1030!1 var811)
(assert (not (= var1030!1 null-var811)))
(assert (= (written/-1911448563 var1030!1) 0)) ; Statement: r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0 
(define-const var797 Int (size/982265083 var2700)) ; Statement: $l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(define-const var1294 Int (ite (> var797 4294967295) 1 (ite (< var797 4294967295) (- 1) 0))) ; Statement: $b1 = $l0 cmp 4294967295L 
(define-const var3998 Int (cast-from-Int-to-Int var1294)) ; Statement: $i15 = (int) $b1 
 ; Statement: if $i15 <= 0 goto $z3 = 0 
(assert (not (<= var3998 0))) ; Negate: Cond: $i15 <= 0  
(define-const var2151 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
(define-const var2357 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= z0 = $z3] 
(assert true) ; Non Conditional
(define-const var3715 Bool var2151) ; Statement: z0 = $z3 
(assert true)
;(assert (writeInt/643489908 var1030!1 33639248)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L) 

(declare-const var1030!2 var811)
(declare-const var402 Int)
(assert true)
;(assert (writeShort/197125774 var1030!2 45)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45) 

(declare-const var1030!3 var811)
(declare-const var2883 Int)
 ; Statement: if $z2 == 0 goto $b12 = 20 
(assert (not (= (ite var2357 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3122 Int 45) ; Statement: $b12 = 45 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var1030!3 var3122)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12) 

(declare-const var1030!4 var811)
(declare-const var3122!1 Int)
(assert true)
;(assert (writeShort/197125774 var1030!4 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var1030!5 var811)
(declare-const var2760 Int)
(assert true)
;(assert (writeShort/197125774 var1030!5 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var1030!6 var811)
(declare-const var2760!1 Int)
(assert true)
;(assert (writeInt/643489908 var1030!6 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var1030!7 var811)
(declare-const var2598 Int)
(define-const var2811 Int (crc/982265083 var2700)) ; Statement: $l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc> 
(assert true)
;(assert (writeInt/643489908 var1030!7 var2811)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2) 

(declare-const var1030!8 var811)
(declare-const var2811!1 Int)
(define-const var3148 Int (compressedSize/982265083 var2700)) ; Statement: $i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize> 
(define-const var132 Int (cast-from-Int-to-Int var3148)) ; Statement: $l4 = (long) $i3 
(assert true)
;(assert (writeInt/643489908 var1030!8 var132)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4) 

(declare-const var1030!9 var811)
(declare-const var132!1 Int)
 ; Statement: if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert (not (= (ite var3715 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3390 Int 4294967295) ; Statement: $l13 = 4294967295L 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeInt/643489908 var1030!9 var3390)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13) 

(declare-const var1030!10 var811)
(declare-const var3390!1 Int)
(define-const var3442 String (filename/982265083 var2700)) ; Statement: $r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(assert true)
(define-const var2630 Int (length/-134980193 var3442)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (writeShort/197125774 var1030!10 var2630)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5) 

(declare-const var1030!11 var811)
(declare-const var2630!1 Int)
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (not (= (ite var3715 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3181 Int 12) ; Statement: $b14 = 12 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var1030!11 var3181)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14) 

(declare-const var1030!12 var811)
(declare-const var3181!1 Int)
(assert true)
;(assert (writeShort/197125774 var1030!12 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var1030!13 var811)
(declare-const var1421 Int)
(assert true)
;(assert (writeShort/197125774 var1030!13 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var1030!14 var811)
(declare-const var1421!1 Int)
(assert true)
;(assert (writeShort/197125774 var1030!14 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var1030!15 var811)
(declare-const var1421!2 Int)
(assert true)
;(assert (writeInt/643489908 var1030!15 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var1030!16 var811)
(declare-const var2598!1 Int)
(define-const var2455 Int (offset/982265083 var2700)) ; Statement: $i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset> 
(define-const var923 Int (cast-from-Int-to-Int var2455)) ; Statement: $l7 = (long) $i6 
(assert true)
;(assert (writeInt/643489908 var1030!16 var923)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7) 

(declare-const var1030!17 var811)
(declare-const var923!1 Int)
(define-const var408 String (filename/982265083 var2700)) ; Statement: $r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(define-const var3099 var1703 var1693-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var2142 (Array Int Int) (getBytes/-163691139 var408 var3099)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var305 var32 (out/-1911448563 var1030!17)) ; Statement: $r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out> 
(assert true)
;(assert (write/1886568149 var305 var2142)) ; Statement: virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6) 

(declare-const var305!1 var32)
(declare-const var2142!1 (Array Int Int))
 ; Statement: if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(assert (= (ite var3715 1 0) 0)) ; Cond: z0 == 0 
(define-const var653 Int (written/-1911448563 var1030!17)) ; Statement: $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(define-const var3566 Int (getLength-Arr-Int-1 var2142!1)) ; Statement: $i8 = lengthof $r6 
(define-const var2409 Int (+ var653 var3566)) ; Statement: $i10 = $i9 + $i8 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {written/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], int), size/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), cast-from-Int-to-Int=([byte], int), writeInt/643489908=([org.apache.poi.xssf.streaming.Zip64Impl, long], void), writeShort/197125774=([org.apache.poi.xssf.streaming.Zip64Impl, int], void), crc/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), compressedSize/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), filename/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], java.lang.String), length/-134980193=([java.lang.String], int), offset/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), out/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), getLength-Arr-Int-1=([byte[]], int)}
; {var811=org.apache.poi.xssf.streaming.Zip64Impl, var1030=r0, var603=org.apache.poi.xssf.streaming.Zip64Impl$Entry, var2700=r1, var797=$l0, var1294=$b1, var3998=$i15, var2151=$z3, var2357=$z2, var3715=z0, var402=33639248L, var2883=45, var3122=$b12, var2760=8, var2598=0L, var2811=$l2, var3148=$i3, var132=$l4, var3390=$l13, var3442=$r2, var2630=$i5, var3181=$b14, var1421=0, var2455=$i6, var923=$l7, var408=$r4, var1703=java.nio.charset.Charset, var1693=java.nio.charset.StandardCharsets, var3099=$r3, var2142=$r6, var32=java.io.OutputStream, var305=$r5, var653=$i9, var3566=$i8, var2409=$i10}
; {org.apache.poi.xssf.streaming.Zip64Impl=var811, r0=var1030, org.apache.poi.xssf.streaming.Zip64Impl$Entry=var603, r1=var2700, $l0=var797, $b1=var1294, $i15=var3998, $z3=var2151, $z2=var2357, z0=var3715, 33639248L=var402, 45=var2883, $b12=var3122, 8=var2760, 0L=var2598, $l2=var2811, $i3=var3148, $l4=var132, $l13=var3390, $r2=var3442, $i5=var2630, $b14=var3181, 0=var1421, $i6=var2455, $l7=var923, $r4=var408, java.nio.charset.Charset=var1703, java.nio.charset.StandardCharsets=var1693, $r3=var3099, $r6=var2142, java.io.OutputStream=var32, $r5=var305, $i9=var653, $i8=var3566, $i10=var2409}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl;	r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry;	r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0;	$l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$b1 = $l0 cmp 4294967295L;	$i15 = (int) $b1;	if $i15 <= 0 goto $z3 = 0;	$z3 = 1;	$z2 = 1;	goto [?= z0 = $z3];	z0 = $z3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45);	if $z2 == 0 goto $b12 = 20;	$b12 = 45;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2);	$i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize>;	$l4 = (long) $i3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4);	if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$l13 = 4294967295L;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13);	$r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5);	if z0 == 0 goto $b14 = 0;	$b14 = 12;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset>;	$l7 = (long) $i6;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7);	$r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out>;	virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6);	if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i8 = lengthof $r6;	$i10 = $i9 + $i8;	return $i10
;block_num 10