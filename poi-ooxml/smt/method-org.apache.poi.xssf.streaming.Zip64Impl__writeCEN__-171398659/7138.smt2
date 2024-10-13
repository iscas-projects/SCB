(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3343 0)
(declare-sort var3018 0)
(declare-sort var2875 0)
(declare-sort var390 0)
(declare-sort var2878 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun written/-1911448563 (var3343) Int)
(declare-fun size/982265083 (var3018) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInt/643489908 (var3343 Int) void)
(declare-fun writeShort/197125774 (var3343 Int) void)
(declare-fun crc/982265083 (var3018) Int)
(declare-fun compressedSize/982265083 (var3018) Int)
(declare-fun filename/982265083 (var3018) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun offset/982265083 (var3018) Int)
(declare-fun getBytes/-163691139 (String var2875) (Array Int Int))
(declare-fun out/-1911448563 (var3343) var2878)
(declare-fun write/1886568149 (var2878 (Array Int Int)) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var3343 var3343)
(declare-const null-var3018 var3018)
(declare-const var390-US_ASCII var2875)
(declare-const var2859 var3343) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl 
(assert (not (= var2859 null-var3343)))
(declare-const var1764 var3018) ; Statement: r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry 
(assert (not (= var1764 null-var3018)))
(declare-const var2859!1 var3343)
(assert (not (= var2859!1 null-var3343)))
(assert (= (written/-1911448563 var2859!1) 0)) ; Statement: r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0 
(define-const var3109 Int (size/982265083 var1764)) ; Statement: $l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(define-const var3647 Int (ite (> var3109 4294967295) 1 (ite (< var3109 4294967295) (- 1) 0))) ; Statement: $b1 = $l0 cmp 4294967295L 
(define-const var2370 Int (cast-from-Int-to-Int var3647)) ; Statement: $i15 = (int) $b1 
 ; Statement: if $i15 <= 0 goto $z3 = 0 
(assert (not (<= var2370 0))) ; Negate: Cond: $i15 <= 0  
(define-const var1593 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
(define-const var1308 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= z0 = $z3] 
(assert true) ; Non Conditional
(define-const var1799 Bool var1593) ; Statement: z0 = $z3 
(assert true)
;(assert (writeInt/643489908 var2859!1 33639248)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L) 

(declare-const var2859!2 var3343)
(declare-const var3071 Int)
(assert true)
;(assert (writeShort/197125774 var2859!2 45)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45) 

(declare-const var2859!3 var3343)
(declare-const var3119 Int)
 ; Statement: if $z2 == 0 goto $b12 = 20 
(assert (= (ite var1308 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2725 Int 20) ; Statement: $b12 = 20 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var2859!3 var2725)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12) 

(declare-const var2859!4 var3343)
(declare-const var2725!1 Int)
(assert true)
;(assert (writeShort/197125774 var2859!4 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var2859!5 var3343)
(declare-const var2136 Int)
(assert true)
;(assert (writeShort/197125774 var2859!5 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var2859!6 var3343)
(declare-const var2136!1 Int)
(assert true)
;(assert (writeInt/643489908 var2859!6 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var2859!7 var3343)
(declare-const var2436 Int)
(define-const var2615 Int (crc/982265083 var1764)) ; Statement: $l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc> 
(assert true)
;(assert (writeInt/643489908 var2859!7 var2615)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2) 

(declare-const var2859!8 var3343)
(declare-const var2615!1 Int)
(define-const var3891 Int (compressedSize/982265083 var1764)) ; Statement: $i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize> 
(define-const var2721 Int (cast-from-Int-to-Int var3891)) ; Statement: $l4 = (long) $i3 
(assert true)
;(assert (writeInt/643489908 var2859!8 var2721)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4) 

(declare-const var2859!9 var3343)
(declare-const var2721!1 Int)
 ; Statement: if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert (= (ite var1799 1 0) 0)) ; Cond: z0 == 0 
(define-const var1871 Int (size/982265083 var1764)) ; Statement: $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size> 
(assert true) ; Non Conditional
(assert true)
;(assert (writeInt/643489908 var2859!9 var1871)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13) 

(declare-const var2859!10 var3343)
(declare-const var1871!1 Int)
(define-const var1833 String (filename/982265083 var1764)) ; Statement: $r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(assert true)
(define-const var2854 Int (length/-134980193 var1833)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (writeShort/197125774 var2859!10 var2854)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5) 

(declare-const var2859!11 var3343)
(declare-const var2854!1 Int)
 ; Statement: if z0 == 0 goto $b14 = 0 
(assert (not (= (ite var1799 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1339 Int 12) ; Statement: $b14 = 12 
 ; Statement: goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14)] 
(assert true) ; Non Conditional
(assert true)
;(assert (writeShort/197125774 var2859!11 var1339)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14) 

(declare-const var2859!12 var3343)
(declare-const var1339!1 Int)
(assert true)
;(assert (writeShort/197125774 var2859!12 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var2859!13 var3343)
(declare-const var2003 Int)
(assert true)
;(assert (writeShort/197125774 var2859!13 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var2859!14 var3343)
(declare-const var2003!1 Int)
(assert true)
;(assert (writeShort/197125774 var2859!14 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var2859!15 var3343)
(declare-const var2003!2 Int)
(assert true)
;(assert (writeInt/643489908 var2859!15 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var2859!16 var3343)
(declare-const var2436!1 Int)
(define-const var382 Int (offset/982265083 var1764)) ; Statement: $i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset> 
(define-const var2783 Int (cast-from-Int-to-Int var382)) ; Statement: $l7 = (long) $i6 
(assert true)
;(assert (writeInt/643489908 var2859!16 var2783)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7) 

(declare-const var2859!17 var3343)
(declare-const var2783!1 Int)
(define-const var2487 String (filename/982265083 var1764)) ; Statement: $r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(define-const var1088 var2875 var390-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var627 (Array Int Int) (getBytes/-163691139 var2487 var1088)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var770 var2878 (out/-1911448563 var2859!17)) ; Statement: $r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out> 
(assert true)
;(assert (write/1886568149 var770 var627)) ; Statement: virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6) 

(declare-const var770!1 var2878)
(declare-const var627!1 (Array Int Int))
 ; Statement: if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(assert (= (ite var1799 1 0) 0)) ; Cond: z0 == 0 
(define-const var3029 Int (written/-1911448563 var2859!17)) ; Statement: $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(define-const var3130 Int (getLength-Arr-Int-1 var627!1)) ; Statement: $i8 = lengthof $r6 
(define-const var446 Int (+ var3029 var3130)) ; Statement: $i10 = $i9 + $i8 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {written/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], int), size/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), cast-from-Int-to-Int=([byte], int), writeInt/643489908=([org.apache.poi.xssf.streaming.Zip64Impl, long], void), writeShort/197125774=([org.apache.poi.xssf.streaming.Zip64Impl, int], void), crc/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), compressedSize/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), filename/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], java.lang.String), length/-134980193=([java.lang.String], int), offset/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), out/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), getLength-Arr-Int-1=([byte[]], int)}
; {var3343=org.apache.poi.xssf.streaming.Zip64Impl, var2859=r0, var3018=org.apache.poi.xssf.streaming.Zip64Impl$Entry, var1764=r1, var3109=$l0, var3647=$b1, var2370=$i15, var1593=$z3, var1308=$z2, var1799=z0, var3071=33639248L, var3119=45, var2725=$b12, var2136=8, var2436=0L, var2615=$l2, var3891=$i3, var2721=$l4, var1871=$l13, var1833=$r2, var2854=$i5, var1339=$b14, var2003=0, var382=$i6, var2783=$l7, var2487=$r4, var2875=java.nio.charset.Charset, var390=java.nio.charset.StandardCharsets, var1088=$r3, var627=$r6, var2878=java.io.OutputStream, var770=$r5, var3029=$i9, var3130=$i8, var446=$i10}
; {org.apache.poi.xssf.streaming.Zip64Impl=var3343, r0=var2859, org.apache.poi.xssf.streaming.Zip64Impl$Entry=var3018, r1=var1764, $l0=var3109, $b1=var3647, $i15=var2370, $z3=var1593, $z2=var1308, z0=var1799, 33639248L=var3071, 45=var3119, $b12=var2725, 8=var2136, 0L=var2436, $l2=var2615, $i3=var3891, $l4=var2721, $l13=var1871, $r2=var1833, $i5=var2854, $b14=var1339, 0=var2003, $i6=var382, $l7=var2783, $r4=var2487, java.nio.charset.Charset=var2875, java.nio.charset.StandardCharsets=var390, $r3=var1088, $r6=var627, java.io.OutputStream=var2878, $r5=var770, $i9=var3029, $i8=var3130, $i10=var446}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl;	r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry;	r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0;	$l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$b1 = $l0 cmp 4294967295L;	$i15 = (int) $b1;	if $i15 <= 0 goto $z3 = 0;	$z3 = 1;	$z2 = 1;	goto [?= z0 = $z3];	z0 = $z3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(33639248L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45);	if $z2 == 0 goto $b12 = 20;	$b12 = 20;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b12);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$l2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l2);	$i3 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int compressedSize>;	$l4 = (long) $i3;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l4);	if z0 == 0 goto $l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	$l13 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long size>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l13);	$r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$i5 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i5);	if z0 == 0 goto $b14 = 0;	$b14 = 12;	goto [?= specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14)];	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($b14);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$i6 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: int offset>;	$l7 = (long) $i6;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l7);	$r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r6 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r5 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out>;	virtualinvoke $r5.<java.io.OutputStream: void write(byte[])>($r6);	if z0 == 0 goto $i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i9 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i8 = lengthof $r6;	$i10 = $i9 + $i8;	return $i10
;block_num 10