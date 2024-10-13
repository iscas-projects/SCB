(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2188 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var2188_defaultCharset/657962044 () var2188)
(declare-fun <init>/-2015205558 (String (Array Int Int) var2188) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3577 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var3577 null-__Array__Int__Int__)))
(define-const var1872 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var2287 var2188 var2188_defaultCharset/657962044) ; Statement: $r2 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset defaultCharset()>() 
(assert true)
;(assert (<init>/-2015205558 var1872 var3577 var2287)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r2) 

(declare-const var1872!1 String)
(declare-const var3577!1 (Array Int Int))
(declare-const var2287!1 var2188)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), var2188_defaultCharset/657962044=([], java.nio.charset.Charset), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var3577=r1, var1872=$r0, var2188=java.nio.charset.Charset, var2287=$r2}
; {r1=var3577, $r0=var1872, java.nio.charset.Charset=var2188, $r2=var2287}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r1 := @parameter0: byte[];	$r0 = new java.lang.String;	$r2 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset defaultCharset()>();	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r2);	return $r0
;block_num 1