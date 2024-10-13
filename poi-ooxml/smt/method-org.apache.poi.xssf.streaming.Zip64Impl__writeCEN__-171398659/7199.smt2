(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1211 0)
(declare-sort var2903 0)
(declare-sort var3729 0)
(declare-sort var2098 0)
(declare-sort var3180 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun written/-1911448563 (var1211) Int)
(declare-fun size/982265083 (var2903) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInt/643489908 (var1211 Int) void)
(declare-fun writeShort/197125774 (var1211 Int) void)
(declare-fun crc/982265083 (var2903) Int)
(declare-fun compressedSize/982265083 (var2903) Int)
(declare-fun filename/982265083 (var2903) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun offset/982265083 (var2903) Int)
(declare-fun getBytes/-163691139 (String var3729) (Array Int Int))
(declare-fun out/-1911448563 (var1211) var3180)
(declare-fun write/1886568149 (var3180 (Array Int Int)) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var1211 var1211)
(declare-const null-var2903 var2903)
(declare-const var2098-US_ASCII var3729)
(declare-const var808 var1211) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl 
(assert (not (= var808 null-var1211)))
(declare-const var2958 var2903) ; Statement: r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry 
(assert (not (= var2958 null-var2903)))
(declare-const var808!1 var1211)
(assert (not (= var808!1 null-var1211)))
(assert (= (written/-1911448563 var808!1) 0)) ; Statement: r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0 
(define-const var914 Int (size/982265083 var2958)) ; Statement: $l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(define-const var144 Int (ite (> var914 4294967295) 1 (ite (< var914 4294967295) (- 1) 0))) ; Statement: $b1 = $l0 cmp 4294967295L 
(define-const var2109 Int (cast-from-Int-to-Int var144)) ; Statement: $i15 = (int) $b1 
 ; Statement: if $i15 <= 0 goto $z3 = 0 
(assert (<= var2109 0)) ; Cond: $i15 <= 0 
(define-const var1896 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(define-const var2873 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var1061 Bool var1896) ; Statement: z0 = $z3 
(assert true)
;(assert (writeInt/643489908 var808!1 33639248)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L) 

(declare-const var808!2 var1211)
(declare-const var3208 Int)
(assert true)
;(assert (writeShort/197125774 var808!2 45)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45) 

(declare-const var808!3 var1211)
(declare-const var2073 Int)
 ; Statement: if $z2 == 0 goto $b12 = 20 
(assert (= (ite var2873 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3334 Int 20) ; Statement: $b12 = 20 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var808!3 var3334)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12) 

(declare-const var808!4 var1211)
(declare-const var3334!1 Int)
(assert true)
;(assert (writeShort/197125774 var808!4 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var808!5 var1211)
(declare-const var2704 Int)
(assert true)
;(assert (writeShort/197125774 var808!5 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var808!6 var1211)
(declare-const var2704!1 Int)
(assert true)
;(assert (writeInt/643489908 var808!6 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var808!7 var1211)
(declare-const var745 Int)
(define-const var1848 Int (crc/982265083 var2958)) ; Statement: $l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc> 
(assert true)
;(assert (writeInt/643489908 var808!7 var1848)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2) 

(declare-const var808!8 var1211)
(declare-const var1848!1 Int)
(define-const var3826 Int (compressedSize/982265083 var2958)) ; Statement: $i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize> 
(define-const var3286 Int (cast-from-Int-to-Int var3826)) ; Statement: $l4 = (long) $i3 
(assert true)
;(assert (writeInt/643489908 var808!8 var3286)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4) 

(declare-const var808!9 var1211)
(declare-const var3286!1 Int)
 ; Statement: if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert (not (= (ite var1061 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3619 Int 4294967295) ; Statement: $l13 = 4294967295L 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeInt/643489908 var808!9 var3619)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13) 

(declare-const var808!10 var1211)
(declare-const var3619!1 Int)
(define-const var1285 String (filename/982265083 var2958)) ; Statement: $r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(assert true)
(define-const var1889 Int (length/-134980193 var1285)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (writeShort/197125774 var808!10 var1889)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5) 

(declare-const var808!11 var1211)
(declare-const var1889!1 Int)
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (not (= (ite var1061 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1966 Int 12) ; Statement: $b14 = 12 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var808!11 var1966)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14) 

(declare-const var808!12 var1211)
(declare-const var1966!1 Int)
(assert true)
;(assert (writeShort/197125774 var808!12 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var808!13 var1211)
(declare-const var780 Int)
(assert true)
;(assert (writeShort/197125774 var808!13 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var808!14 var1211)
(declare-const var780!1 Int)
(assert true)
;(assert (writeShort/197125774 var808!14 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var808!15 var1211)
(declare-const var780!2 Int)
(assert true)
;(assert (writeInt/643489908 var808!15 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var808!16 var1211)
(declare-const var745!1 Int)
(define-const var45 Int (offset/982265083 var2958)) ; Statement: $i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset> 
(define-const var94 Int (cast-from-Int-to-Int var45)) ; Statement: $l7 = (long) $i6 
(assert true)
;(assert (writeInt/643489908 var808!16 var94)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7) 

(declare-const var808!17 var1211)
(declare-const var94!1 Int)
(define-const var3183 String (filename/982265083 var2958)) ; Statement: $r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(define-const var1111 var3729 var2098-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var1805 (Array Int Int) (getBytes/-163691139 var3183 var1111)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var1704 var3180 (out/-1911448563 var808!17)) ; Statement: $r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out> 
(assert true)
;(assert (write/1886568149 var1704 var1805)) ; Statement: virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6) 

(declare-const var1704!1 var3180)
(declare-const var1805!1 (Array Int Int))
 ; Statement: if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(assert (= (ite var1061 1 0) 0)) ; Cond: z0 == 0 
(define-const var285 Int (written/-1911448563 var808!17)) ; Statement: $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(define-const var379 Int (getLength-Arr-Int-1 var1805!1)) ; Statement: $i8 = lengthof $r6 
(define-const var1553 Int (+ var285 var379)) ; Statement: $i10 = $i9 + $i8 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {written/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], int), size/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), cast-from-Int-to-Int=([byte], int), writeInt/643489908=([org.apache.poi.xssf.streaming.Zip64Impl, long], void), writeShort/197125774=([org.apache.poi.xssf.streaming.Zip64Impl, int], void), crc/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), compressedSize/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), filename/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], java.lang.String), length/-134980193=([java.lang.String], int), offset/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), out/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), getLength-Arr-Int-1=([byte[]], int)}
; {var1211=org.apache.poi.xssf.streaming.Zip64Impl, var808=r0, var2903=org.apache.poi.xssf.streaming.Zip64Impl$Entry, var2958=r1, var914=$l0, var144=$b1, var2109=$i15, var1896=$z3, var2873=$z2, var1061=z0, var3208=33639248L, var2073=45, var3334=$b12, var2704=8, var745=0L, var1848=$l2, var3826=$i3, var3286=$l4, var3619=$l13, var1285=$r2, var1889=$i5, var1966=$b14, var780=0, var45=$i6, var94=$l7, var3183=$r4, var3729=java.nio.charset.Charset, var2098=java.nio.charset.StandardCharsets, var1111=$r3, var1805=$r6, var3180=java.io.OutputStream, var1704=$r5, var285=$i9, var379=$i8, var1553=$i10}
; {org.apache.poi.xssf.streaming.Zip64Impl=var1211, r0=var808, org.apache.poi.xssf.streaming.Zip64Impl$Entry=var2903, r1=var2958, $l0=var914, $b1=var144, $i15=var2109, $z3=var1896, $z2=var2873, z0=var1061, 33639248L=var3208, 45=var2073, $b12=var3334, 8=var2704, 0L=var745, $l2=var1848, $i3=var3826, $l4=var3286, $l13=var3619, $r2=var1285, $i5=var1889, $b14=var1966, 0=var780, $i6=var45, $l7=var94, $r4=var3183, java.nio.charset.Charset=var3729, java.nio.charset.StandardCharsets=var2098, $r3=var1111, $r6=var1805, java.io.OutputStream=var3180, $r5=var1704, $i9=var285, $i8=var379, $i10=var1553}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl;	r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry;	r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0;	$l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$b1 = $l0 cmp 4294967295L;	$i15 = (int) $b1;	if $i15 <= 0 goto $z3 = 0;	$z3 = 0;	$z2 = 0;	z0 = $z3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45);	if $z2 == 0 goto $b12 = 20;	$b12 = 20;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2);	$i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize>;	$l4 = (long) $i3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4);	if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$l13 = 4294967295L;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13);	$r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5);	if z0 == 0 goto $b14 = 0;	$b14 = 12;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset>;	$l7 = (long) $i6;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7);	$r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out>;	virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6);	if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i8 = lengthof $r6;	$i10 = $i9 + $i8;	return $i10
;block_num 10