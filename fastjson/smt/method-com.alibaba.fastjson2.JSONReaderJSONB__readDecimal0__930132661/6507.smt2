(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var790 0)
(declare-sort var2588 0)
(declare-sort var2986 0)
(declare-sort var1505 0)
(declare-sort var1861 0)
(declare-sort var3717 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun readInt32Value/-1930719175 (var790) Int)
(declare-fun String-init () String)
(declare-fun bytes/-413709904 (var790) (Array Int Int))
(declare-fun offset/1287024874 (var2588) Int)
(declare-fun cast-from-var790-to-var2588 (var790) var2588)
(declare-fun <init>/-1019213948 (String (Array Int Int) Int Int var2986) void)
(declare-fun var3717_toBigDecimal/638735629 (String) var1861)
(declare-const null-var790 var790)
(declare-const null-Int Int)
(declare-const var1505-UTF_8 var2986)
(declare-const var2704 var790) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var2704 null-var790)))
(declare-const var20 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var20 null-Int)))
(define-const var2673 Int (cast-from-Int-to-Int var20)) ; Statement: $i101 = (int) b0 
 ; Statement: lookupswitch($i101) {     case -81: goto return null;     case -80: goto $r32 = <java.math.BigDecimal: java.math.BigDecimal ZERO>;     case -79: goto $r31 = <java.math.BigDecimal: java.math.BigDecimal ONE>;     case -78: goto $r32 = <java.math.BigDecimal: java.math.BigDecimal ZERO>;     case -77: goto $r31 = <java.math.BigDecimal: java.math.BigDecimal ONE>;     case -76: goto $l48 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: long readInt64Value()>();     case -75: goto $r28 = <com.alibaba.fastjson2.util.JDKUtils: sun.misc.Unsafe UNSAFE>;     case -74: goto $i39 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case -73: goto $r24 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -69: goto r46 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.math.BigInteger readBigInteger()>();     case -68: goto $r20 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -67: goto $r18 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -66: goto $r16 = <com.alibaba.fastjson2.util.JDKUtils: sun.misc.Unsafe UNSAFE>;     case -65: goto $r13 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case 72: goto $r13 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case 121: goto i92 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case 122: goto i94 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case 124: goto i93 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     default: goto $i105 = (int) b0; } 
(assert (and (= var2673 122) (and (not (= var2673 121)) (and (not (= var2673 72)) (and (not (= var2673 (- 65))) (and (not (= var2673 (- 66))) (and (not (= var2673 (- 67))) (and (not (= var2673 (- 68))) (and (not (= var2673 (- 69))) (and (not (= var2673 (- 73))) (and (not (= var2673 (- 74))) (and (not (= var2673 (- 75))) (and (not (= var2673 (- 76))) (and (not (= var2673 (- 77))) (and (not (= var2673 (- 78))) (and (not (= var2673 (- 79))) (and (not (= var2673 (- 80))) (and (not (= var2673 (- 81))) true)))))))))))))))))) ; Intersect: Cond: $i101 == 122  and Intersect: Negate: Cond: $i101 == 121   and Intersect: Negate: Cond: $i101 == 72   and Intersect: Negate: Cond: $i101 == -65   and Intersect: Negate: Cond: $i101 == -66   and Intersect: Negate: Cond: $i101 == -67   and Intersect: Negate: Cond: $i101 == -68   and Intersect: Negate: Cond: $i101 == -69   and Intersect: Negate: Cond: $i101 == -73   and Intersect: Negate: Cond: $i101 == -74   and Intersect: Negate: Cond: $i101 == -75   and Intersect: Negate: Cond: $i101 == -76   and Intersect: Negate: Cond: $i101 == -77   and Intersect: Negate: Cond: $i101 == -78   and Intersect: Negate: Cond: $i101 == -79   and Intersect: Negate: Cond: $i101 == -80   and Intersect: Negate: Cond: $i101 == -81   and Non Conditional                 
(assert true)
(define-const var2435 Int (readInt32Value/-1930719175 var2704)) ; Statement: i94 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>() 
(define-const var2546 String String-init) ; Statement: $r51 = new java.lang.String 
(define-const var2819 (Array Int Int) (bytes/-413709904 var2704)) ; Statement: $r7 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes> 
(define-const var3590 Int (offset/1287024874 (cast-from-var790-to-var2588 var2704))) ; Statement: $i4 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(define-const var2283 var2986 var1505-UTF_8) ; Statement: $r6 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
;(assert (<init>/-1019213948 var2546 var2819 var3590 var2435 var2283)) ; Statement: specialinvoke $r51.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r7, $i4, i94, $r6) 

(declare-const var2546!1 String)
(declare-const var2819!1 (Array Int Int))
(declare-const var3590!1 Int)
(declare-const var2435!1 Int)
(declare-const var2283!1 var2986)
(define-const var2811 Int (offset/1287024874 (cast-from-var790-to-var2588 var2704))) ; Statement: $i5 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(define-const var611 Int (+ var2811 var2435!1)) ; Statement: $i6 = $i5 + i94 
(declare-const var2704!1 var790)
(assert (not (= var2704!1 null-var790)))
(assert (= (offset/1287024874 (cast-from-var790-to-var2588 var2704!1)) var611)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> = $i6 
(define-const var2366 var1861 (var3717_toBigDecimal/638735629 var2546!1)) ; Statement: $r8 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigDecimal toBigDecimal(java.lang.String)>($r51) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), readInt32Value/-1930719175=([com.alibaba.fastjson2.JSONReaderJSONB], int), String-init=([], java.lang.String), bytes/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte[]), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var790-to-var2588=([com.alibaba.fastjson2.JSONReaderJSONB], com.alibaba.fastjson2.JSONReader), <init>/-1019213948=([java.lang.String, byte[], int, int, java.nio.charset.Charset], void), var3717_toBigDecimal/638735629=([java.lang.String], java.math.BigDecimal)}
; {var790=com.alibaba.fastjson2.JSONReaderJSONB, var2704=r0, var20=b0, var2673=$i101, var2435=i94, var2546=$r51, var2819=$r7, var2588=com.alibaba.fastjson2.JSONReader, var3590=$i4, var2986=java.nio.charset.Charset, var1505=java.nio.charset.StandardCharsets, var2283=$r6, var2811=$i5, var611=$i6, var1861=java.math.BigDecimal, var3717=com.alibaba.fastjson2.util.TypeUtils, var2366=$r8}
; {com.alibaba.fastjson2.JSONReaderJSONB=var790, r0=var2704, b0=var20, $i101=var2673, i94=var2435, $r51=var2546, $r7=var2819, com.alibaba.fastjson2.JSONReader=var2588, $i4=var3590, java.nio.charset.Charset=var2986, java.nio.charset.StandardCharsets=var1505, $r6=var2283, $i5=var2811, $i6=var611, java.math.BigDecimal=var1861, com.alibaba.fastjson2.util.TypeUtils=var3717, $r8=var2366}
;seq <java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	b0 := @parameter0: byte;	$i101 = (int) b0;	lookupswitch($i101) {     case -81: goto return null;     case -80: goto $r32 = <java.math.BigDecimal: java.math.BigDecimal ZERO>;     case -79: goto $r31 = <java.math.BigDecimal: java.math.BigDecimal ONE>;     case -78: goto $r32 = <java.math.BigDecimal: java.math.BigDecimal ZERO>;     case -77: goto $r31 = <java.math.BigDecimal: java.math.BigDecimal ONE>;     case -76: goto $l48 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: long readInt64Value()>();     case -75: goto $r28 = <com.alibaba.fastjson2.util.JDKUtils: sun.misc.Unsafe UNSAFE>;     case -74: goto $i39 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case -73: goto $r24 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -69: goto r46 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.math.BigInteger readBigInteger()>();     case -68: goto $r20 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -67: goto $r18 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -66: goto $r16 = <com.alibaba.fastjson2.util.JDKUtils: sun.misc.Unsafe UNSAFE>;     case -65: goto $r13 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case 72: goto $r13 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case 121: goto i92 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case 122: goto i94 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case 124: goto i93 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     default: goto $i105 = (int) b0; };	i94 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();	$r51 = new java.lang.String;	$r7 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;	$i4 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$r6 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	specialinvoke $r51.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r7, $i4, i94, $r6);	$i5 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$i6 = $i5 + i94;	r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> = $i6;	$r8 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigDecimal toBigDecimal(java.lang.String)>($r51);	return $r8
;block_num 2