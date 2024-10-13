(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1882 0)
(declare-sort var3230 0)
(declare-sort var3439 0)
(declare-sort var947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3230_read/-1517401564 (var1882 Int) (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-2015205558 (String (Array Int Int) var3439) void)
(declare-const null-var1882 var1882)
(declare-const var947-UTF_8 var3439)
(declare-const var3749 var1882) ; Statement: r0 := @parameter0: java.io.InputStream 
(assert (not (= var3749 null-var1882)))
(define-const var1737 (Array Int Int) (var3230_read/-1517401564 var3749 8192)) ; Statement: r1 = staticinvoke <jdk.jfr.internal.jfc.JFC: byte[] read(java.io.InputStream,int)>(r0, 8192) 
(define-const var1364 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var2157 var3439 var947-UTF_8) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
;(assert (<init>/-2015205558 var1364 var1737 var2157)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r3) 

(declare-const var1364!1 String)
(declare-const var1737!1 (Array Int Int))
(declare-const var2157!1 var3439)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3230_read/-1517401564=([java.io.InputStream, int], byte[]), String-init=([], java.lang.String), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var1882=java.io.InputStream, var3749=r0, var3230=jdk.jfr.internal.jfc.JFC, var1737=r1, var1364=$r2, var3439=java.nio.charset.Charset, var947=java.nio.charset.StandardCharsets, var2157=$r3}
; {java.io.InputStream=var1882, r0=var3749, jdk.jfr.internal.jfc.JFC=var3230, r1=var1737, $r2=var1364, java.nio.charset.Charset=var3439, java.nio.charset.StandardCharsets=var947, $r3=var2157}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: java.io.InputStream;	r1 = staticinvoke <jdk.jfr.internal.jfc.JFC: byte[] read(java.io.InputStream,int)>(r0, 8192);	$r2 = new java.lang.String;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	specialinvoke $r2.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r3);	return $r2
;block_num 1