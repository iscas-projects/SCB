(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3260 0)
(declare-sort var298 0)
(declare-sort var194 0)
(declare-sort var2731 0)
(declare-sort var2288 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun out/-2092162108 (var3260) var298)
(declare-fun flush/499452023 (var3260) void)
(declare-fun cast-from-var298-to-var194 (var298) var194)
(declare-fun toByteArray/1343874077 (var194) (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-2015205558 (String (Array Int Int) var2731) void)
(declare-const null-var3260 var3260)
(declare-const var2288-UTF_8 var2731)
(declare-const var1806 var3260) ; Statement: r0 := @this: com.alibaba.fastjson2.support.csv.CSVWriterUTF8 
(assert (not (= var1806 null-var3260)))
(define-const var2136 var298 (out/-2092162108 var1806)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: java.io.OutputStream out> 
(define-const var3487 Bool false) ; Statement: $z0 = $r1 instanceof java.io.ByteArrayOutputStream 
 ; Statement: if $z0 == 0 goto $r2 = specialinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert (not (= (ite var3487 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (flush/499452023 var1806)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: void flush()>() 

(declare-const var1806!1 var3260)
(define-const var1531 var298 (out/-2092162108 var1806!1)) ; Statement: $r3 = r0.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: java.io.OutputStream out> 
(define-const var1875 var194 (cast-from-var298-to-var194 var1531)) ; Statement: $r4 = (java.io.ByteArrayOutputStream) $r3 
(assert true)
(define-const var246 (Array Int Int) (toByteArray/1343874077 var1875)) ; Statement: r5 = virtualinvoke $r4.<java.io.ByteArrayOutputStream: byte[] toByteArray()>() 
(define-const var1504 String String-init) ; Statement: $r6 = new java.lang.String 
(define-const var3478 var2731 var2288-UTF_8) ; Statement: $r7 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
;(assert (<init>/-2015205558 var1504 var246 var3478)) ; Statement: specialinvoke $r6.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r5, $r7) 

(declare-const var1504!1 String)
(declare-const var246!1 (Array Int Int))
(declare-const var3478!1 var2731)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {out/-2092162108=([com.alibaba.fastjson2.support.csv.CSVWriterUTF8], java.io.OutputStream), flush/499452023=([com.alibaba.fastjson2.support.csv.CSVWriterUTF8], void), cast-from-var298-to-var194=([java.io.OutputStream], java.io.ByteArrayOutputStream), toByteArray/1343874077=([java.io.ByteArrayOutputStream], byte[]), String-init=([], java.lang.String), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var3260=com.alibaba.fastjson2.support.csv.CSVWriterUTF8, var1806=r0, var298=java.io.OutputStream, var2136=$r1, var3487=$z0, var1531=$r3, var194=java.io.ByteArrayOutputStream, var1875=$r4, var246=r5, var1504=$r6, var2731=java.nio.charset.Charset, var2288=java.nio.charset.StandardCharsets, var3478=$r7}
; {com.alibaba.fastjson2.support.csv.CSVWriterUTF8=var3260, r0=var1806, java.io.OutputStream=var298, $r1=var2136, $z0=var3487, $r3=var1531, java.io.ByteArrayOutputStream=var194, $r4=var1875, r5=var246, $r6=var1504, java.nio.charset.Charset=var2731, java.nio.charset.StandardCharsets=var2288, $r7=var3478}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.support.csv.CSVWriterUTF8;	$r1 = r0.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: java.io.OutputStream out>;	$z0 = $r1 instanceof java.io.ByteArrayOutputStream;	if $z0 == 0 goto $r2 = specialinvoke r0.<java.lang.Object: java.lang.String toString()>();	virtualinvoke r0.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: void flush()>();	$r3 = r0.<com.alibaba.fastjson2.support.csv.CSVWriterUTF8: java.io.OutputStream out>;	$r4 = (java.io.ByteArrayOutputStream) $r3;	r5 = virtualinvoke $r4.<java.io.ByteArrayOutputStream: byte[] toByteArray()>();	$r6 = new java.lang.String;	$r7 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	specialinvoke $r6.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r5, $r7);	return $r6
;block_num 2