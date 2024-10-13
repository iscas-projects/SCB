(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1180 0)
(declare-sort var1344 0)
(declare-sort var738 0)
(declare-sort var2425 0)
(declare-sort var3121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun written/-1911448563 (var1180) Int)
(declare-fun size/982265083 (var1344) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInt/643489908 (var1180 Int) void)
(declare-fun writeShort/197125774 (var1180 Int) void)
(declare-fun crc/982265083 (var1344) Int)
(declare-fun compressedSize/982265083 (var1344) Int)
(declare-fun filename/982265083 (var1344) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun offset/982265083 (var1344) Int)
(declare-fun getBytes/-163691139 (String var738) (Array Int Int))
(declare-fun out/-1911448563 (var1180) var3121)
(declare-fun write/1886568149 (var3121 (Array Int Int)) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var1180 var1180)
(declare-const null-var1344 var1344)
(declare-const var2425-US_ASCII var738)
(declare-const var2843 var1180) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl 
(assert (not (= var2843 null-var1180)))
(declare-const var2347 var1344) ; Statement: r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry 
(assert (not (= var2347 null-var1344)))
(declare-const var2843!1 var1180)
(assert (not (= var2843!1 null-var1180)))
(assert (= (written/-1911448563 var2843!1) 0)) ; Statement: r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0 
(define-const var3694 Int (size/982265083 var2347)) ; Statement: $l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(define-const var3090 Int (ite (> var3694 4294967295) 1 (ite (< var3694 4294967295) (- 1) 0))) ; Statement: $b1 = $l0 cmp 4294967295L 
(define-const var2339 Int (cast-from-Int-to-Int var3090)) ; Statement: $i15 = (int) $b1 
 ; Statement: if $i15 <= 0 goto $z3 = 0 
(assert (not (<= var2339 0))) ; Negate: Cond: $i15 <= 0  
(define-const var240 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
(define-const var1263 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= z0 = $z3] 
(assert true) ; Non Conditional
(define-const var3743 Bool var240) ; Statement: z0 = $z3 
(assert true)
;(assert (writeInt/643489908 var2843!1 33639248)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L) 

(declare-const var2843!2 var1180)
(declare-const var2712 Int)
(assert true)
;(assert (writeShort/197125774 var2843!2 45)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45) 

(declare-const var2843!3 var1180)
(declare-const var3103 Int)
 ; Statement: if $z2 == 0 goto $b12 = 20 
(assert (= (ite var1263 1 0) 0)) ; Cond: $z2 == 0 
(define-const var817 Int 20) ; Statement: $b12 = 20 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var2843!3 var817)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12) 

(declare-const var2843!4 var1180)
(declare-const var817!1 Int)
(assert true)
;(assert (writeShort/197125774 var2843!4 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var2843!5 var1180)
(declare-const var3714 Int)
(assert true)
;(assert (writeShort/197125774 var2843!5 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var2843!6 var1180)
(declare-const var3714!1 Int)
(assert true)
;(assert (writeInt/643489908 var2843!6 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var2843!7 var1180)
(declare-const var1771 Int)
(define-const var1862 Int (crc/982265083 var2347)) ; Statement: $l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc> 
(assert true)
;(assert (writeInt/643489908 var2843!7 var1862)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2) 

(declare-const var2843!8 var1180)
(declare-const var1862!1 Int)
(define-const var3129 Int (compressedSize/982265083 var2347)) ; Statement: $i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize> 
(define-const var818 Int (cast-from-Int-to-Int var3129)) ; Statement: $l4 = (long) $i3 
(assert true)
;(assert (writeInt/643489908 var2843!8 var818)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4) 

(declare-const var2843!9 var1180)
(declare-const var818!1 Int)
 ; Statement: if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert (not (= (ite var3743 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3542 Int 4294967295) ; Statement: $l13 = 4294967295L 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeInt/643489908 var2843!9 var3542)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13) 

(declare-const var2843!10 var1180)
(declare-const var3542!1 Int)
(define-const var2939 String (filename/982265083 var2347)) ; Statement: $r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(assert true)
(define-const var537 Int (length/-134980193 var2939)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (writeShort/197125774 var2843!10 var537)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5) 

(declare-const var2843!11 var1180)
(declare-const var537!1 Int)
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (not (= (ite var3743 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3715 Int 12) ; Statement: $b14 = 12 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var2843!11 var3715)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14) 

(declare-const var2843!12 var1180)
(declare-const var3715!1 Int)
(assert true)
;(assert (writeShort/197125774 var2843!12 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var2843!13 var1180)
(declare-const var2760 Int)
(assert true)
;(assert (writeShort/197125774 var2843!13 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var2843!14 var1180)
(declare-const var2760!1 Int)
(assert true)
;(assert (writeShort/197125774 var2843!14 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var2843!15 var1180)
(declare-const var2760!2 Int)
(assert true)
;(assert (writeInt/643489908 var2843!15 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var2843!16 var1180)
(declare-const var1771!1 Int)
(define-const var1673 Int (offset/982265083 var2347)) ; Statement: $i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset> 
(define-const var648 Int (cast-from-Int-to-Int var1673)) ; Statement: $l7 = (long) $i6 
(assert true)
;(assert (writeInt/643489908 var2843!16 var648)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7) 

(declare-const var2843!17 var1180)
(declare-const var648!1 Int)
(define-const var3522 String (filename/982265083 var2347)) ; Statement: $r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(define-const var2245 var738 var2425-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var2471 (Array Int Int) (getBytes/-163691139 var3522 var2245)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var2948 var3121 (out/-1911448563 var2843!17)) ; Statement: $r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out> 
(assert true)
;(assert (write/1886568149 var2948 var2471)) ; Statement: virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6) 

(declare-const var2948!1 var3121)
(declare-const var2471!1 (Array Int Int))
 ; Statement: if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(assert (= (ite var3743 1 0) 0)) ; Cond: z0 == 0 
(define-const var1242 Int (written/-1911448563 var2843!17)) ; Statement: $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(define-const var700 Int (getLength-Arr-Int-1 var2471!1)) ; Statement: $i8 = lengthof $r6 
(define-const var3703 Int (+ var1242 var700)) ; Statement: $i10 = $i9 + $i8 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {written/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], int), size/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), cast-from-Int-to-Int=([byte], int), writeInt/643489908=([org.apache.poi.xssf.streaming.Zip64Impl, long], void), writeShort/197125774=([org.apache.poi.xssf.streaming.Zip64Impl, int], void), crc/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), compressedSize/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), filename/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], java.lang.String), length/-134980193=([java.lang.String], int), offset/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), out/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), getLength-Arr-Int-1=([byte[]], int)}
; {var1180=org.apache.poi.xssf.streaming.Zip64Impl, var2843=r0, var1344=org.apache.poi.xssf.streaming.Zip64Impl$Entry, var2347=r1, var3694=$l0, var3090=$b1, var2339=$i15, var240=$z3, var1263=$z2, var3743=z0, var2712=33639248L, var3103=45, var817=$b12, var3714=8, var1771=0L, var1862=$l2, var3129=$i3, var818=$l4, var3542=$l13, var2939=$r2, var537=$i5, var3715=$b14, var2760=0, var1673=$i6, var648=$l7, var3522=$r4, var738=java.nio.charset.Charset, var2425=java.nio.charset.StandardCharsets, var2245=$r3, var2471=$r6, var3121=java.io.OutputStream, var2948=$r5, var1242=$i9, var700=$i8, var3703=$i10}
; {org.apache.poi.xssf.streaming.Zip64Impl=var1180, r0=var2843, org.apache.poi.xssf.streaming.Zip64Impl$Entry=var1344, r1=var2347, $l0=var3694, $b1=var3090, $i15=var2339, $z3=var240, $z2=var1263, z0=var3743, 33639248L=var2712, 45=var3103, $b12=var817, 8=var3714, 0L=var1771, $l2=var1862, $i3=var3129, $l4=var818, $l13=var3542, $r2=var2939, $i5=var537, $b14=var3715, 0=var2760, $i6=var1673, $l7=var648, $r4=var3522, java.nio.charset.Charset=var738, java.nio.charset.StandardCharsets=var2425, $r3=var2245, $r6=var2471, java.io.OutputStream=var3121, $r5=var2948, $i9=var1242, $i8=var700, $i10=var3703}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl;	r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry;	r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0;	$l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$b1 = $l0 cmp 4294967295L;	$i15 = (int) $b1;	if $i15 <= 0 goto $z3 = 0;	$z3 = 1;	$z2 = 1;	goto [?= z0 = $z3];	z0 = $z3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45);	if $z2 == 0 goto $b12 = 20;	$b12 = 20;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2);	$i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize>;	$l4 = (long) $i3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4);	if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$l13 = 4294967295L;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13);	$r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5);	if z0 == 0 goto $b14 = 0;	$b14 = 12;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset>;	$l7 = (long) $i6;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7);	$r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out>;	virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6);	if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i8 = lengthof $r6;	$i10 = $i9 + $i8;	return $i10
;block_num 10