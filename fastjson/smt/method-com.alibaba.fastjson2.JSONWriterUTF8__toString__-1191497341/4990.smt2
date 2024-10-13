(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2702 0)
(declare-sort var947 0)
(declare-sort var3877 0)
(declare-sort var614 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun bytes/324912939 (var2702) (Array Int Int))
(declare-fun off/1442430106 (var947) Int)
(declare-fun cast-from-var2702-to-var947 (var2702) var947)
(declare-fun <init>/-1019213948 (String (Array Int Int) Int Int var3877) void)
(declare-const null-var2702 var2702)
(declare-const var614-UTF_8 var3877)
(declare-const var2835 var2702) ; Statement: r1 := @this: com.alibaba.fastjson2.JSONWriterUTF8 
(assert (not (= var2835 null-var2702)))
(define-const var9 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var3640 (Array Int Int) (bytes/324912939 var2835)) ; Statement: $r3 = r1.<com.alibaba.fastjson2.JSONWriterUTF8: byte[] bytes> 
(define-const var1076 Int (off/1442430106 (cast-from-var2702-to-var947 var2835))) ; Statement: $i0 = r1.<com.alibaba.fastjson2.JSONWriterUTF8: int off> 
(define-const var2836 var3877 var614-UTF_8) ; Statement: $r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
;(assert (<init>/-1019213948 var9 var3640 0 var1076 var2836)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r3, 0, $i0, $r2) 

(declare-const var9!1 String)
(declare-const var3640!1 (Array Int Int))
(declare-const var806 Int)
(declare-const var1076!1 Int)
(declare-const var2836!1 var3877)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), bytes/324912939=([com.alibaba.fastjson2.JSONWriterUTF8], byte[]), off/1442430106=([com.alibaba.fastjson2.JSONWriter], int), cast-from-var2702-to-var947=([com.alibaba.fastjson2.JSONWriterUTF8], com.alibaba.fastjson2.JSONWriter), <init>/-1019213948=([java.lang.String, byte[], int, int, java.nio.charset.Charset], void)}
; {var2702=com.alibaba.fastjson2.JSONWriterUTF8, var2835=r1, var9=$r0, var3640=$r3, var947=com.alibaba.fastjson2.JSONWriter, var1076=$i0, var3877=java.nio.charset.Charset, var614=java.nio.charset.StandardCharsets, var2836=$r2, var806=0}
; {com.alibaba.fastjson2.JSONWriterUTF8=var2702, r1=var2835, $r0=var9, $r3=var3640, com.alibaba.fastjson2.JSONWriter=var947, $i0=var1076, java.nio.charset.Charset=var3877, java.nio.charset.StandardCharsets=var614, $r2=var2836, 0=var806}
;seq <java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.JSONWriterUTF8;	$r0 = new java.lang.String;	$r3 = r1.<com.alibaba.fastjson2.JSONWriterUTF8: byte[] bytes>;	$i0 = r1.<com.alibaba.fastjson2.JSONWriterUTF8: int off>;	$r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	specialinvoke $r0.<java.lang.String: void <init>(byte[],int,int,java.nio.charset.Charset)>($r3, 0, $i0, $r2);	return $r0
;block_num 1