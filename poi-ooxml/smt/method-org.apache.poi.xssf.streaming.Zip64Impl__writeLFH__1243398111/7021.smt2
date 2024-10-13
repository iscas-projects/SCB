(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var339 0)
(declare-sort var782 0)
(declare-sort var2894 0)
(declare-sort var3304 0)
(declare-sort var2394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun written/-1911448563 (var339) Int)
(declare-fun writeInt/643489908 (var339 Int) void)
(declare-fun writeShort/197125774 (var339 Int) void)
(declare-fun crc/982265083 (var782) Int)
(declare-fun filename/982265083 (var782) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getBytes/-163691139 (String var2894) (Array Int Int))
(declare-fun out/-1911448563 (var339) var2394)
(declare-fun write/1886568149 (var2394 (Array Int Int)) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var339 var339)
(declare-const null-var782 var782)
(declare-const var3304-US_ASCII var2894)
(declare-const var51 var339) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl 
(assert (not (= var51 null-var339)))
(declare-const var1481 var782) ; Statement: r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry 
(assert (not (= var1481 null-var782)))
(declare-const var51!1 var339)
(assert (not (= var51!1 null-var339)))
(assert (= (written/-1911448563 var51!1) 0)) ; Statement: r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0 
(assert true)
;(assert (writeInt/643489908 var51!1 67324752)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(67324752L) 

(declare-const var51!2 var339)
(declare-const var3352 Int)
(assert true)
;(assert (writeShort/197125774 var51!2 45)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45) 

(declare-const var51!3 var339)
(declare-const var2517 Int)
(assert true)
;(assert (writeShort/197125774 var51!3 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var51!4 var339)
(declare-const var180 Int)
(assert true)
;(assert (writeShort/197125774 var51!4 8)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8) 

(declare-const var51!5 var339)
(declare-const var180!1 Int)
(assert true)
;(assert (writeInt/643489908 var51!5 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var51!6 var339)
(declare-const var3153 Int)
(define-const var2746 Int (crc/982265083 var1481)) ; Statement: $l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc> 
(assert true)
;(assert (writeInt/643489908 var51!6 var2746)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l0) 

(declare-const var51!7 var339)
(declare-const var2746!1 Int)
(assert true)
;(assert (writeInt/643489908 var51!7 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var51!8 var339)
(declare-const var3153!1 Int)
(assert true)
;(assert (writeInt/643489908 var51!8 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L) 

(declare-const var51!9 var339)
(declare-const var3153!2 Int)
(define-const var3447 String (filename/982265083 var1481)) ; Statement: $r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(assert true)
(define-const var1676 Int (length/-134980193 var3447)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (writeShort/197125774 var51!9 var1676)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i1) 

(declare-const var51!10 var339)
(declare-const var1676!1 Int)
(assert true)
;(assert (writeShort/197125774 var51!10 0)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0) 

(declare-const var51!11 var339)
(declare-const var764 Int)
(define-const var2599 String (filename/982265083 var1481)) ; Statement: $r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename> 
(define-const var1399 var2894 var3304-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var1070 (Array Int Int) (getBytes/-163691139 var2599 var1399)) ; Statement: r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3) 
(define-const var96 var2394 (out/-1911448563 var51!11)) ; Statement: $r6 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out> 
(assert true)
;(assert (write/1886568149 var96 var1070)) ; Statement: virtualinvoke $r6.<java.io.OutputStream: void write(byte[])>(r5) 

(declare-const var96!1 var2394)
(declare-const var1070!1 (Array Int Int))
(define-const var997 Int (written/-1911448563 var51!11)) ; Statement: $i3 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> 
(define-const var1768 Int (getLength-Arr-Int-1 var1070!1)) ; Statement: $i2 = lengthof r5 
(define-const var3749 Int (+ var997 var1768)) ; Statement: $i4 = $i3 + $i2 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {written/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], int), writeInt/643489908=([org.apache.poi.xssf.streaming.Zip64Impl, long], void), writeShort/197125774=([org.apache.poi.xssf.streaming.Zip64Impl, int], void), crc/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], long), filename/982265083=([org.apache.poi.xssf.streaming.Zip64Impl$Entry], java.lang.String), length/-134980193=([java.lang.String], int), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), out/-1911448563=([org.apache.poi.xssf.streaming.Zip64Impl], java.io.OutputStream), write/1886568149=([java.io.OutputStream, byte[]], void), getLength-Arr-Int-1=([byte[]], int)}
; {var339=org.apache.poi.xssf.streaming.Zip64Impl, var51=r0, var782=org.apache.poi.xssf.streaming.Zip64Impl$Entry, var1481=r1, var3352=67324752L, var2517=45, var180=8, var3153=0L, var2746=$l0, var3447=$r2, var1676=$i1, var764=0, var2599=$r4, var2894=java.nio.charset.Charset, var3304=java.nio.charset.StandardCharsets, var1399=$r3, var1070=r5, var2394=java.io.OutputStream, var96=$r6, var997=$i3, var1768=$i2, var3749=$i4}
; {org.apache.poi.xssf.streaming.Zip64Impl=var339, r0=var51, org.apache.poi.xssf.streaming.Zip64Impl$Entry=var782, r1=var1481, 67324752L=var3352, 45=var2517, 8=var180, 0L=var3153, $l0=var2746, $r2=var3447, $i1=var1676, 0=var764, $r4=var2599, java.nio.charset.Charset=var2894, java.nio.charset.StandardCharsets=var3304, $r3=var1399, r5=var1070, java.io.OutputStream=var2394, $r6=var96, $i3=var997, $i2=var1768, $i4=var3749}
;seq <java.lang.String: int length()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.Zip64Impl;	r1 := @parameter0: org.apache.poi.xssf.streaming.Zip64Impl$Entry;	r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written> = 0;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(67324752L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(45);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(8);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$l0 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: long crc>;	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>($l0);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeInt(long)>(0L);	$r2 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$i1 = virtualinvoke $r2.<java.lang.String: int length()>();	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>($i1);	specialinvoke r0.<org.apache.poi.xssf.streaming.Zip64Impl: void writeShort(int)>(0);	$r4 = r1.<org.apache.poi.xssf.streaming.Zip64Impl$Entry: java.lang.String filename>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r3);	$r6 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: java.io.OutputStream out>;	virtualinvoke $r6.<java.io.OutputStream: void write(byte[])>(r5);	$i3 = r0.<org.apache.poi.xssf.streaming.Zip64Impl: int written>;	$i2 = lengthof r5;	$i4 = $i3 + $i2;	return $i4
;block_num 1