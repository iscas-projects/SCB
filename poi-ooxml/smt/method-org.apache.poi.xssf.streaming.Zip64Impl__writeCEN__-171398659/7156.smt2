(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2925 0)
(declare-sort var3158 0)
(declare-sort var2621 0)
(declare-sort var2214 0)
(declare-sort var1195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun written/-1911448563 (var2925) Int)
(declare-fun size/982265083 (var3158) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInt/643489908 (var2925 Int) void)
(declare-fun writeShort/197125774 (var2925 Int) void)
(declare-fun crc/982265083 (var3158) Int)
(declare-fun compressedSize/982265083 (var3158) Int)
(declare-fun filename/982265083 (var3158) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun offset/982265083 (var3158) Int)
(declare-fun getBytes/-163691139 (String var2621) (Array Int Int))
(declare-fun out/-1911448563 (var2925) var1195)
(declare-fun write/1886568149 (var1195 (Array Int Int)) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var2925 var2925)
(declare-const null-var3158 var3158)
(declare-const var2214-US_ASCII var2621)
(declare-const var2363 var2925) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl 
(assert (not (= var2363 null-var2925)))
(declare-const var768 var3158) ; Statement: r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry 
(assert (not (= var768 null-var3158)))
(declare-const var2363!1 var2925)
(assert (not (= var2363!1 null-var2925)))
(assert (= (written/-1911448563 var2363!1) 0)) ; Statement: r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0 
(define-const var3110 Int (size/982265083 var768)) ; Statement: $l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(define-const var2096 Int (ite (> var3110 4294967295) 1 (ite (< var3110 4294967295) (- 1) 0))) ; Statement: $b1 = $l0 cmp 4294967295L 
(define-const var608 Int (cast-from-Int-to-Int var2096)) ; Statement: $i15 = (int) $b1 
 ; Statement: if $i15 <= 0 goto $z3 = 0 
(assert (<= var608 0)) ; Cond: $i15 <= 0 
(define-const var3385 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(define-const var2962 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var3039 Bool var3385) ; Statement: z0 = $z3 
(assert true)
;(assert (writeInt/643489908 var2363!1 33639248)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L) 

(declare-const var2363!2 var2925)
(declare-const var2069 Int)
(assert true)
;(assert (writeShort/197125774 var2363!2 45)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45) 

(declare-const var2363!3 var2925)
(declare-const var664 Int)
 ; Statement: if $z2 == 0 goto $b12 = 20 
(assert (not (= (ite var2962 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2726 Int 45) ; Statement: $b12 = 45 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var2363!3 var2726)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12) 

(declare-const var2363!4 var2925)
(declare-const var2726!1 Int)
(assert true)
;(assert (writeShort/197125774 var2363!4 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var2363!5 var2925)
(declare-const var1215 Int)
(assert true)
;(assert (writeShort/197125774 var2363!5 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var2363!6 var2925)
(declare-const var1215!1 Int)
(assert true)
;(assert (writeInt/643489908 var2363!6 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var2363!7 var2925)
(declare-const var2391 Int)
(define-const var3014 Int (crc/982265083 var768)) ; Statement: $l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc> 
(assert true)
;(assert (writeInt/643489908 var2363!7 var3014)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2) 

(declare-const var2363!8 var2925)
(declare-const var3014!1 Int)
(define-const var1156 Int (compressedSize/982265083 var768)) ; Statement: $i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize> 
(define-const var2331 Int (cast-from-Int-to-Int var1156)) ; Statement: $l4 = (long) $i3 
(assert true)
;(assert (writeInt/643489908 var2363!8 var2331)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4) 

(declare-const var2363!9 var2925)
(declare-const var2331!1 Int)
 ; Statement: if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert (not (= (ite var3039 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var644 Int 4294967295) ; Statement: $l13 = 4294967295L 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeInt/643489908 var2363!9 var644)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13) 

(declare-const var2363!10 var2925)
(declare-const var644!1 Int)
(define-const var188 String (filename/982265083 var768)) ; Statement: $r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(assert true)
(define-const var1932 Int (length/-134980193 var188)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (writeShort/197125774 var2363!10 var1932)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5) 

(declare-const var2363!11 var2925)
(declare-const var1932!1 Int)
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (not (= (ite var3039 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2982 Int 12) ; Statement: $b14 = 12 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var2363!11 var2982)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14) 

(declare-const var2363!12 var2925)
(declare-const var2982!1 Int)
(assert true)
;(assert (writeShort/197125774 var2363!12 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var2363!13 var2925)
(declare-const var2066 Int)
(assert true)
;(assert (writeShort/197125774 var2363!13 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var2363!14 var2925)
(declare-const var2066!1 Int)
(assert true)
;(assert (writeShort/197125774 var2363!14 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var2363!15 var2925)
(declare-const var2066!2 Int)
(assert true)
;(assert (writeInt/643489908 var2363!15 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var2363!16 var2925)
(declare-const var2391!1 Int)
(define-const var791 Int (offset/982265083 var768)) ; Statement: $i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset> 
(define-const var2371 Int (cast-from-Int-to-Int var791)) ; Statement: $l7 = (long) $i6 
(assert true)
;(assert (writeInt/643489908 var2363!16 var2371)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7) 

(declare-const var2363!17 var2925)
(declare-const var2371!1 Int)
(define-const var1954 String (filename/982265083 var768)) ; Statement: $r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(define-const var3977 var2621 var2214-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var3319 (Array Int Int) (getBytes/-163691139 var1954 var3977)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var3655 var1195 (out/-1911448563 var2363!17)) ; Statement: $r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out> 
(assert true)
;(assert (write/1886568149 var3655 var3319)) ; Statement: virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6) 

(declare-const var3655!1 var1195)
(declare-const var3319!1 (Array Int Int))
 ; Statement: if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(assert (= (ite var3039 1 0) 0)) ; Cond: z0 == 0 
(define-const var1595 Int (written/-1911448563 var2363!17)) ; Statement: $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(define-const var201 Int (getLength-Arr-Int-1 var3319!1)) ; Statement: $i8 = lengthof $r6 
(define-const var746 Int (+ var1595 var201)) ; Statement: $i10 = $i9 + $i8 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {written/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], int), size/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), cast-from-Int-to-Int=([byte], int), writeInt/643489908=([org.apache.poi.xssf.streaming.Zip64Impl, long], void), writeShort/197125774=([org.apache.poi.xssf.streaming.Zip64Impl, int], void), crc/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), compressedSize/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), filename/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], java.lang.String), length/-134980193=([java.lang.String], int), offset/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), out/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), getLength-Arr-Int-1=([byte[]], int)}
; {var2925=org.apache.poi.xssf.streaming.Zip64Impl, var2363=r0, var3158=org.apache.poi.xssf.streaming.Zip64Impl$Entry, var768=r1, var3110=$l0, var2096=$b1, var608=$i15, var3385=$z3, var2962=$z2, var3039=z0, var2069=33639248L, var664=45, var2726=$b12, var1215=8, var2391=0L, var3014=$l2, var1156=$i3, var2331=$l4, var644=$l13, var188=$r2, var1932=$i5, var2982=$b14, var2066=0, var791=$i6, var2371=$l7, var1954=$r4, var2621=java.nio.charset.Charset, var2214=java.nio.charset.StandardCharsets, var3977=$r3, var3319=$r6, var1195=java.io.OutputStream, var3655=$r5, var1595=$i9, var201=$i8, var746=$i10}
; {org.apache.poi.xssf.streaming.Zip64Impl=var2925, r0=var2363, org.apache.poi.xssf.streaming.Zip64Impl$Entry=var3158, r1=var768, $l0=var3110, $b1=var2096, $i15=var608, $z3=var3385, $z2=var2962, z0=var3039, 33639248L=var2069, 45=var664, $b12=var2726, 8=var1215, 0L=var2391, $l2=var3014, $i3=var1156, $l4=var2331, $l13=var644, $r2=var188, $i5=var1932, $b14=var2982, 0=var2066, $i6=var791, $l7=var2371, $r4=var1954, java.nio.charset.Charset=var2621, java.nio.charset.StandardCharsets=var2214, $r3=var3977, $r6=var3319, java.io.OutputStream=var1195, $r5=var3655, $i9=var1595, $i8=var201, $i10=var746}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl;	r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry;	r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0;	$l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$b1 = $l0 cmp 4294967295L;	$i15 = (int) $b1;	if $i15 <= 0 goto $z3 = 0;	$z3 = 0;	$z2 = 0;	z0 = $z3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45);	if $z2 == 0 goto $b12 = 20;	$b12 = 45;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2);	$i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize>;	$l4 = (long) $i3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4);	if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$l13 = 4294967295L;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13);	$r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5);	if z0 == 0 goto $b14 = 0;	$b14 = 12;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset>;	$l7 = (long) $i6;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7);	$r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out>;	virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6);	if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i8 = lengthof $r6;	$i10 = $i9 + $i8;	return $i10
;block_num 10