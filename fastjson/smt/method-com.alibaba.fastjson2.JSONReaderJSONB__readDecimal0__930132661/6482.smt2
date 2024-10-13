(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1495 0)
(declare-sort var523 0)
(declare-sort var3517 0)
(declare-sort var1819 0)
(declare-sort var204 0)
(declare-sort var2230 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun readInt32Value/-1930719175 (var1495) Int)
(declare-fun String-init () String)
(declare-fun bytes/-413709904 (var1495) (Array Int Int))
(declare-fun offset/1287024874 (var523) Int)
(declare-fun cast-from-var1495-to-var523 (var1495) var523)
(declare-fun <init>/-1019213948 (String (Array Int Int) Int Int var3517) void)
(declare-fun var2230_toBigDecimal/638735629 (String) var204)
(declare-const null-var1495 var1495)
(declare-const null-Int Int)
(declare-const var1819-ISO_8859_1 var3517)
(declare-const var195 var1495) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var195 null-var1495)))
(declare-const var2622 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var2622 null-Int)))
(define-const var237 Int (cast-from-Int-to-Int var2622)) ; Statement: $i101 = (int) b0 
 ; Statement: lookupswitch($i101) {     case -81: goto return null;     case -80: goto $r32 = <java.math.BigDecimal: java.math.BigDecimal ZERO>;     case -79: goto $r31 = <java.math.BigDecimal: java.math.BigDecimal ONE>;     case -78: goto $r32 = <java.math.BigDecimal: java.math.BigDecimal ZERO>;     case -77: goto $r31 = <java.math.BigDecimal: java.math.BigDecimal ONE>;     case -76: goto $l48 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: long readInt64Value()>();     case -75: goto $r28 = <com.alibaba.fastjson2.util.JDKUtils: sun.misc.Unsafe UNSAFE>;     case -74: goto $i39 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case -73: goto $r24 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -69: goto r46 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.math.BigInteger readBigInteger()>();     case -68: goto $r20 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -67: goto $r18 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -66: goto $r16 = <com.alibaba.fastjson2.util.JDKUtils: sun.misc.Unsafe UNSAFE>;     case -65: goto $r13 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case 72: goto $r13 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case 121: goto i92 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case 122: goto i94 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case 124: goto i93 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     default: goto $i105 = (int) b0; } 
(assert (and (= var237 121) (and (not (= var237 72)) (and (not (= var237 (- 65))) (and (not (= var237 (- 66))) (and (not (= var237 (- 67))) (and (not (= var237 (- 68))) (and (not (= var237 (- 69))) (and (not (= var237 (- 73))) (and (not (= var237 (- 74))) (and (not (= var237 (- 75))) (and (not (= var237 (- 76))) (and (not (= var237 (- 77))) (and (not (= var237 (- 78))) (and (not (= var237 (- 79))) (and (not (= var237 (- 80))) (and (not (= var237 (- 81))) true))))))))))))))))) ; Intersect: Cond: $i101 == 121  and Intersect: Negate: Cond: $i101 == 72   and Intersect: Negate: Cond: $i101 == -65   and Intersect: Negate: Cond: $i101 == -66   and Intersect: Negate: Cond: $i101 == -67   and Intersect: Negate: Cond: $i101 == -68   and Intersect: Negate: Cond: $i101 == -69   and Intersect: Negate: Cond: $i101 == -73   and Intersect: Negate: Cond: $i101 == -74   and Intersect: Negate: Cond: $i101 == -75   and Intersect: Negate: Cond: $i101 == -76   and Intersect: Negate: Cond: $i101 == -77   and Intersect: Negate: Cond: $i101 == -78   and Intersect: Negate: Cond: $i101 == -79   and Intersect: Negate: Cond: $i101 == -80   and Intersect: Negate: Cond: $i101 == -81   and Non Conditional                
(assert true)
(define-const var1375 Int (readInt32Value/-1930719175 var195)) ; Statement: i92 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>() 
(define-const var3879 String String-init) ; Statement: $r49 = new java.lang.String 
(define-const var919 (Array Int Int) (bytes/-413709904 var195)) ; Statement: $r11 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes> 
(define-const var3991 Int (offset/1287024874 (cast-from-var1495-to-var523 var195))) ; Statement: $i7 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(define-const var460 var3517 var1819-ISO_8859_1) ; Statement: $r10 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1> 
(assert true)
;(assert (<init>/-1019213948 var3879 var919 var3991 var1375 var460)) ; Statement: specialinvoke $r49.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r11, $i7, i92, $r10) 

(declare-const var3879!1 String)
(declare-const var919!1 (Array Int Int))
(declare-const var3991!1 Int)
(declare-const var1375!1 Int)
(declare-const var460!1 var3517)
(define-const var2190 Int (offset/1287024874 (cast-from-var1495-to-var523 var195))) ; Statement: $i8 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(define-const var1478 Int (+ var2190 var1375!1)) ; Statement: $i9 = $i8 + i92 
(declare-const var195!1 var1495)
(assert (not (= var195!1 null-var1495)))
(assert (= (offset/1287024874 (cast-from-var1495-to-var523 var195!1)) var1478)) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> = $i9 
(define-const var3190 var204 (var2230_toBigDecimal/638735629 var3879!1)) ; Statement: $r12 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigDecimal toBigDecimal(java.lang.String)>($r49) 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), readInt32Value/-1930719175=([com.alibaba.fastjson2.JSONReaderJSONB], int), String-init=([], java.lang.String), bytes/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte[]), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var1495-to-var523=([com.alibaba.fastjson2.JSONReaderJSONB], com.alibaba.fastjson2.JSONReader), <init>/-1019213948=([java.lang.String, byte[], int, int, java.nio.charset.Charset], void), var2230_toBigDecimal/638735629=([java.lang.String], java.math.BigDecimal)}
; {var1495=com.alibaba.fastjson2.JSONReaderJSONB, var195=r0, var2622=b0, var237=$i101, var1375=i92, var3879=$r49, var919=$r11, var523=com.alibaba.fastjson2.JSONReader, var3991=$i7, var3517=java.nio.charset.Charset, var1819=java.nio.charset.StandardCharsets, var460=$r10, var2190=$i8, var1478=$i9, var204=java.math.BigDecimal, var2230=com.alibaba.fastjson2.util.TypeUtils, var3190=$r12}
; {com.alibaba.fastjson2.JSONReaderJSONB=var1495, r0=var195, b0=var2622, $i101=var237, i92=var1375, $r49=var3879, $r11=var919, com.alibaba.fastjson2.JSONReader=var523, $i7=var3991, java.nio.charset.Charset=var3517, java.nio.charset.StandardCharsets=var1819, $r10=var460, $i8=var2190, $i9=var1478, java.math.BigDecimal=var204, com.alibaba.fastjson2.util.TypeUtils=var2230, $r12=var3190}
;seq <java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	b0 := @parameter0: byte;	$i101 = (int) b0;	lookupswitch($i101) {     case -81: goto return null;     case -80: goto $r32 = <java.math.BigDecimal: java.math.BigDecimal ZERO>;     case -79: goto $r31 = <java.math.BigDecimal: java.math.BigDecimal ONE>;     case -78: goto $r32 = <java.math.BigDecimal: java.math.BigDecimal ZERO>;     case -77: goto $r31 = <java.math.BigDecimal: java.math.BigDecimal ONE>;     case -76: goto $l48 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: long readInt64Value()>();     case -75: goto $r28 = <com.alibaba.fastjson2.util.JDKUtils: sun.misc.Unsafe UNSAFE>;     case -74: goto $i39 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case -73: goto $r24 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -69: goto r46 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.math.BigInteger readBigInteger()>();     case -68: goto $r20 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -67: goto $r18 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case -66: goto $r16 = <com.alibaba.fastjson2.util.JDKUtils: sun.misc.Unsafe UNSAFE>;     case -65: goto $r13 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case 72: goto $r13 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;     case 121: goto i92 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case 122: goto i94 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     case 124: goto i93 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();     default: goto $i105 = (int) b0; };	i92 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: int readInt32Value()>();	$r49 = new java.lang.String;	$r11 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;	$i7 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$r10 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1>;	specialinvoke $r49.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r11, $i7, i92, $r10);	$i8 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$i9 = $i8 + i92;	r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> = $i9;	$r12 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.math.BigDecimal toBigDecimal(java.lang.String)>($r49);	return $r12
;block_num 2