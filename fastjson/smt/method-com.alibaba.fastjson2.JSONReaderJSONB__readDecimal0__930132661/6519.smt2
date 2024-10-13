(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3910 0)
(declare-sort var3162 0)
(declare-sort var1614 0)
(declare-sort var3847 0)
(declare-sort var3187 0)
(declare-sort var2755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun readInt32Value/-1930719175 (var3910) Int)
(declare-fun String-init () String)
(declare-fun bytes/-413709904 (var3910) (Array Int Int))
(declare-fun offset/1287024874 (var3162) Int)
(declare-fun cast-from-var3910-to-var3162 (var3910) var3162)
(declare-fun <init>/-1019213948 (String (Array Int Int) Int Int var1614) void)
(declare-fun var2755_toBigDecimal/638735629 (String) var3187)
(declare-const null-var3910 var3910)
(declare-const null-Int Int)
(declare-const var3847-UTF_16LE var1614)
(declare-const var2629 var3910) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var2629 null-var3910)))
(declare-const var914 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var914 null-Int)))
(define-const var999 Int (cast-from-Int-to-Int var914)) ; Statement: $i101 = (int) b0 
 ; Statement: lookupswitch($i101) {     case -81: goto return null;     case -80: goto $r32 = <java.math.BigDecimal: java.math.BigDecimal ZERO>;     case -79: goto $r31 = <java.math.BigDecimal: java.math.BigDecimal ONE>;     case -78: goto $r32 = <java.math.BigDecimal: java.math.BigDecimal ZERO>;     case -77: goto $r31 = <java.math.BigDecimal: java.math.BigDecimal ONE>;     case -76: goto $l48 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: long readInt64Value()>();     case -75: goto $r28 = <com.alibaba.fastjson2.util.JDKUtils: sun.misc.Unsafe UNSAFE>;     case -74: goto $i39 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case -73: goto $r24 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -69: goto r46 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.math.BigInteger readBigInteger()>();     case -68: goto $r20 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -67: goto $r18 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -66: goto $r16 = <com.alibaba.fastjson2.util.JDKUtils: sun.misc.Unsafe UNSAFE>;     case -65: goto $r13 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case 72: goto $r13 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case 121: goto i92 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case 122: goto i94 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case 124: goto i93 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     default: goto $i105 = (int) b0; } 
(assert (and (= var999 124) (and (not (= var999 122)) (and (not (= var999 121)) (and (not (= var999 72)) (and (not (= var999 (- 65))) (and (not (= var999 (- 66))) (and (not (= var999 (- 67))) (and (not (= var999 (- 68))) (and (not (= var999 (- 69))) (and (not (= var999 (- 73))) (and (not (= var999 (- 74))) (and (not (= var999 (- 75))) (and (not (= var999 (- 76))) (and (not (= var999 (- 77))) (and (not (= var999 (- 78))) (and (not (= var999 (- 79))) (and (not (= var999 (- 80))) (and (not (= var999 (- 81))) true))))))))))))))))))) ; Intersect: Cond: $i101 == 124  and Intersect: Negate: Cond: $i101 == 122   and Intersect: Negate: Cond: $i101 == 121   and Intersect: Negate: Cond: $i101 == 72   and Intersect: Negate: Cond: $i101 == -65   and Intersect: Negate: Cond: $i101 == -66   and Intersect: Negate: Cond: $i101 == -67   and Intersect: Negate: Cond: $i101 == -68   and Intersect: Negate: Cond: $i101 == -69   and Intersect: Negate: Cond: $i101 == -73   and Intersect: Negate: Cond: $i101 == -74   and Intersect: Negate: Cond: $i101 == -75   and Intersect: Negate: Cond: $i101 == -76   and Intersect: Negate: Cond: $i101 == -77   and Intersect: Negate: Cond: $i101 == -78   and Intersect: Negate: Cond: $i101 == -79   and Intersect: Negate: Cond: $i101 == -80   and Intersect: Negate: Cond: $i101 == -81   and Non Conditional                  
(assert true)
(define-const var497 Int (readInt32Value/-1930719175 var2629)) ; Statement: i93 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>() 
(define-const var3829 String String-init) ; Statement: $r50 = new java.lang.String 
(define-const var3697 (Array Int Int) (bytes/-413709904 var2629)) ; Statement: $r3 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes> 
(define-const var884 Int (offset/1287024874 (cast-from-var3910-to-var3162 var2629))) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(define-const var2175 var1614 var3847-UTF_16LE) ; Statement: $r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16LE> 
(assert true)
;(assert (<init>/-1019213948 var3829 var3697 var884 var497 var2175)) ; Statement: specialinvoke $r50.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r3, $i1, i93, $r2) 

(declare-const var3829!1 String)
(declare-const var3697!1 (Array Int Int))
(declare-const var884!1 Int)
(declare-const var497!1 Int)
(declare-const var2175!1 var1614)
(define-const var3087 Int (offset/1287024874 (cast-from-var3910-to-var3162 var2629))) ; Statement: $i2 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(define-const var1069 Int (+ var3087 var497!1)) ; Statement: $i3 = $i2 + i93 
(declare-const var2629!1 var3910)
(assert (not (= var2629!1 null-var3910)))
(assert (= (offset/1287024874 (cast-from-var3910-to-var3162 var2629!1)) var1069)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> = $i3 
(define-const var3459 var3187 (var2755_toBigDecimal/638735629 var3829!1)) ; Statement: $r4 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigDecimal toBigDecimal(java.lang.String)>($r50) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), readInt32Value/-1930719175=([com.alibaba.fastjson2.JSONReaderJSONB], int), String-init=([], java.lang.String), bytes/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte[]), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var3910-to-var3162=([com.alibaba.fastjson2.JSONReaderJSONB], com.alibaba.fastjson2.JSONReader), <init>/-1019213948=([java.lang.String, byte[], int, int, java.nio.charset.Charset], void), var2755_toBigDecimal/638735629=([java.lang.String], java.math.BigDecimal)}
; {var3910=com.alibaba.fastjson2.JSONReaderJSONB, var2629=r0, var914=b0, var999=$i101, var497=i93, var3829=$r50, var3697=$r3, var3162=com.alibaba.fastjson2.JSONReader, var884=$i1, var1614=java.nio.charset.Charset, var3847=java.nio.charset.StandardCharsets, var2175=$r2, var3087=$i2, var1069=$i3, var3187=java.math.BigDecimal, var2755=com.alibaba.fastjson2.util.TypeUtils, var3459=$r4}
; {com.alibaba.fastjson2.JSONReaderJSONB=var3910, r0=var2629, b0=var914, $i101=var999, i93=var497, $r50=var3829, $r3=var3697, com.alibaba.fastjson2.JSONReader=var3162, $i1=var884, java.nio.charset.Charset=var1614, java.nio.charset.StandardCharsets=var3847, $r2=var2175, $i2=var3087, $i3=var1069, java.math.BigDecimal=var3187, com.alibaba.fastjson2.util.TypeUtils=var2755, $r4=var3459}
;seq <java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	b0 := @parameter0: byte;	$i101 = (int) b0;	lookupswitch($i101) {     case -81: goto return null;     case -80: goto $r32 = <java.math.BigDecimal: java.math.BigDecimal ZERO>;     case -79: goto $r31 = <java.math.BigDecimal: java.math.BigDecimal ONE>;     case -78: goto $r32 = <java.math.BigDecimal: java.math.BigDecimal ZERO>;     case -77: goto $r31 = <java.math.BigDecimal: java.math.BigDecimal ONE>;     case -76: goto $l48 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: long readInt64Value()>();     case -75: goto $r28 = <com.alibaba.fastjson2.util.JDKUtils: sun.misc.Unsafe UNSAFE>;     case -74: goto $i39 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case -73: goto $r24 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -69: goto r46 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.math.BigInteger readBigInteger()>();     case -68: goto $r20 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -67: goto $r18 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -66: goto $r16 = <com.alibaba.fastjson2.util.JDKUtils: sun.misc.Unsafe UNSAFE>;     case -65: goto $r13 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case 72: goto $r13 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case 121: goto i92 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case 122: goto i94 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case 124: goto i93 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     default: goto $i105 = (int) b0; };	i93 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();	$r50 = new java.lang.String;	$r3 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;	$i1 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16LE>;	specialinvoke $r50.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r3, $i1, i93, $r2);	$i2 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$i3 = $i2 + i93;	r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> = $i3;	$r4 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigDecimal toBigDecimal(java.lang.String)>($r50);	return $r4
;block_num 2