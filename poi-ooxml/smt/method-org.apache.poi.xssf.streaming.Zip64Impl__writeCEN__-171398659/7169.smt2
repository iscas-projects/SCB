(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var950 0)
(declare-sort var3992 0)
(declare-sort var2419 0)
(declare-sort var797 0)
(declare-sort var2817 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun written/-1911448563 (var950) Int)
(declare-fun size/982265083 (var3992) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInt/643489908 (var950 Int) void)
(declare-fun writeShort/197125774 (var950 Int) void)
(declare-fun crc/982265083 (var3992) Int)
(declare-fun compressedSize/982265083 (var3992) Int)
(declare-fun filename/982265083 (var3992) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun offset/982265083 (var3992) Int)
(declare-fun getBytes/-163691139 (String var2419) (Array Int Int))
(declare-fun out/-1911448563 (var950) var2817)
(declare-fun write/1886568149 (var2817 (Array Int Int)) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var950 var950)
(declare-const null-var3992 var3992)
(declare-const var797-US_ASCII var2419)
(declare-const var828 var950) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl 
(assert (not (= var828 null-var950)))
(declare-const var2049 var3992) ; Statement: r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry 
(assert (not (= var2049 null-var3992)))
(declare-const var828!1 var950)
(assert (not (= var828!1 null-var950)))
(assert (= (written/-1911448563 var828!1) 0)) ; Statement: r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0 
(define-const var2621 Int (size/982265083 var2049)) ; Statement: $l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(define-const var3678 Int (ite (> var2621 4294967295) 1 (ite (< var2621 4294967295) (- 1) 0))) ; Statement: $b1 = $l0 cmp 4294967295L 
(define-const var1327 Int (cast-from-Int-to-Int var3678)) ; Statement: $i15 = (int) $b1 
 ; Statement: if $i15 <= 0 goto $z3 = 0 
(assert (<= var1327 0)) ; Cond: $i15 <= 0 
(define-const var1700 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(define-const var1046 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var2915 Bool var1700) ; Statement: z0 = $z3 
(assert true)
;(assert (writeInt/643489908 var828!1 33639248)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L) 

(declare-const var828!2 var950)
(declare-const var2450 Int)
(assert true)
;(assert (writeShort/197125774 var828!2 45)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45) 

(declare-const var828!3 var950)
(declare-const var2230 Int)
 ; Statement: if $z2 == 0 goto $b12 = 20 
(assert (not (= (ite var1046 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var217 Int 45) ; Statement: $b12 = 45 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var828!3 var217)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12) 

(declare-const var828!4 var950)
(declare-const var217!1 Int)
(assert true)
;(assert (writeShort/197125774 var828!4 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var828!5 var950)
(declare-const var1247 Int)
(assert true)
;(assert (writeShort/197125774 var828!5 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var828!6 var950)
(declare-const var1247!1 Int)
(assert true)
;(assert (writeInt/643489908 var828!6 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var828!7 var950)
(declare-const var1054 Int)
(define-const var3839 Int (crc/982265083 var2049)) ; Statement: $l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc> 
(assert true)
;(assert (writeInt/643489908 var828!7 var3839)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2) 

(declare-const var828!8 var950)
(declare-const var3839!1 Int)
(define-const var1796 Int (compressedSize/982265083 var2049)) ; Statement: $i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize> 
(define-const var2617 Int (cast-from-Int-to-Int var1796)) ; Statement: $l4 = (long) $i3 
(assert true)
;(assert (writeInt/643489908 var828!8 var2617)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4) 

(declare-const var828!9 var950)
(declare-const var2617!1 Int)
 ; Statement: if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert (not (= (ite var2915 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2209 Int 4294967295) ; Statement: $l13 = 4294967295L 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeInt/643489908 var828!9 var2209)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13) 

(declare-const var828!10 var950)
(declare-const var2209!1 Int)
(define-const var1114 String (filename/982265083 var2049)) ; Statement: $r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(assert true)
(define-const var3294 Int (length/-134980193 var1114)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (writeShort/197125774 var828!10 var3294)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5) 

(declare-const var828!11 var950)
(declare-const var3294!1 Int)
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (= (ite var2915 1 0) 0)) ; Cond: z0 == 0 
(define-const var2527 Int 0) ; Statement: $b14 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var828!11 var2527)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14) 

(declare-const var828!12 var950)
(declare-const var2527!1 Int)
(assert true)
;(assert (writeShort/197125774 var828!12 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var828!13 var950)
(declare-const var204 Int)
(assert true)
;(assert (writeShort/197125774 var828!13 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var828!14 var950)
(declare-const var204!1 Int)
(assert true)
;(assert (writeShort/197125774 var828!14 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var828!15 var950)
(declare-const var204!2 Int)
(assert true)
;(assert (writeInt/643489908 var828!15 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var828!16 var950)
(declare-const var1054!1 Int)
(define-const var3155 Int (offset/982265083 var2049)) ; Statement: $i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset> 
(define-const var1456 Int (cast-from-Int-to-Int var3155)) ; Statement: $l7 = (long) $i6 
(assert true)
;(assert (writeInt/643489908 var828!16 var1456)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7) 

(declare-const var828!17 var950)
(declare-const var1456!1 Int)
(define-const var3930 String (filename/982265083 var2049)) ; Statement: $r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(define-const var319 var2419 var797-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var996 (Array Int Int) (getBytes/-163691139 var3930 var319)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var903 var2817 (out/-1911448563 var828!17)) ; Statement: $r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out> 
(assert true)
;(assert (write/1886568149 var903 var996)) ; Statement: virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6) 

(declare-const var903!1 var2817)
(declare-const var996!1 (Array Int Int))
 ; Statement: if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(assert (= (ite var2915 1 0) 0)) ; Cond: z0 == 0 
(define-const var1014 Int (written/-1911448563 var828!17)) ; Statement: $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(define-const var1190 Int (getLength-Arr-Int-1 var996!1)) ; Statement: $i8 = lengthof $r6 
(define-const var1419 Int (+ var1014 var1190)) ; Statement: $i10 = $i9 + $i8 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {written/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], int), size/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), cast-from-Int-to-Int=([byte], int), writeInt/643489908=([org.apache.poi.xssf.streaming.Zip64Impl, long], void), writeShort/197125774=([org.apache.poi.xssf.streaming.Zip64Impl, int], void), crc/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), compressedSize/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), filename/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], java.lang.String), length/-134980193=([java.lang.String], int), offset/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), out/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), getLength-Arr-Int-1=([byte[]], int)}
; {var950=org.apache.poi.xssf.streaming.Zip64Impl, var828=r0, var3992=org.apache.poi.xssf.streaming.Zip64Impl$Entry, var2049=r1, var2621=$l0, var3678=$b1, var1327=$i15, var1700=$z3, var1046=$z2, var2915=z0, var2450=33639248L, var2230=45, var217=$b12, var1247=8, var1054=0L, var3839=$l2, var1796=$i3, var2617=$l4, var2209=$l13, var1114=$r2, var3294=$i5, var2527=$b14, var204=0, var3155=$i6, var1456=$l7, var3930=$r4, var2419=java.nio.charset.Charset, var797=java.nio.charset.StandardCharsets, var319=$r3, var996=$r6, var2817=java.io.OutputStream, var903=$r5, var1014=$i9, var1190=$i8, var1419=$i10}
; {org.apache.poi.xssf.streaming.Zip64Impl=var950, r0=var828, org.apache.poi.xssf.streaming.Zip64Impl$Entry=var3992, r1=var2049, $l0=var2621, $b1=var3678, $i15=var1327, $z3=var1700, $z2=var1046, z0=var2915, 33639248L=var2450, 45=var2230, $b12=var217, 8=var1247, 0L=var1054, $l2=var3839, $i3=var1796, $l4=var2617, $l13=var2209, $r2=var1114, $i5=var3294, $b14=var2527, 0=var204, $i6=var3155, $l7=var1456, $r4=var3930, java.nio.charset.Charset=var2419, java.nio.charset.StandardCharsets=var797, $r3=var319, $r6=var996, java.io.OutputStream=var2817, $r5=var903, $i9=var1014, $i8=var1190, $i10=var1419}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl;	r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry;	r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0;	$l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$b1 = $l0 cmp 4294967295L;	$i15 = (int) $b1;	if $i15 <= 0 goto $z3 = 0;	$z3 = 0;	$z2 = 0;	z0 = $z3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45);	if $z2 == 0 goto $b12 = 20;	$b12 = 45;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2);	$i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize>;	$l4 = (long) $i3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4);	if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$l13 = 4294967295L;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13);	$r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5);	if z0 == 0 goto $b14 = 0;	$b14 = 0;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset>;	$l7 = (long) $i6;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7);	$r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out>;	virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6);	if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i8 = lengthof $r6;	$i10 = $i9 + $i8;	return $i10
;block_num 10