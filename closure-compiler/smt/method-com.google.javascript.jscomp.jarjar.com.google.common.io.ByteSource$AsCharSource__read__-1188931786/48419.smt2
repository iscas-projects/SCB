(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3490 0)
(declare-sort var310 0)
(declare-sort var83 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun this$0/389101448 (var3490) var310)
(declare-fun read/-1443899078 (var310) (Array Int Int))
(declare-fun charset/389101448 (var3490) var83)
(declare-fun <init>/-2015205558 (String (Array Int Int) var83) void)
(declare-const null-var3490 var3490)
(declare-const var619 var3490) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource 
(assert (not (= var619 null-var3490)))
(define-const var413 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var3207 var310 (this$0/389101448 var619)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource this$0> 
(assert true)
(define-const var2591 (Array Int Int) (read/-1443899078 var3207)) ; Statement: $r4 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource: byte[] read()>() 
(define-const var3816 var83 (charset/389101448 var619)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource: java.nio.charset.Charset charset> 
(assert true)
;(assert (<init>/-2015205558 var413 var2591 var3816)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r4, $r3) 

(declare-const var413!1 String)
(declare-const var2591!1 (Array Int Int))
(declare-const var3816!1 var83)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), this$0/389101448=([com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource], com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource), read/-1443899078=([com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource], byte[]), charset/389101448=([com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource], java.nio.charset.Charset), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var3490=com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource, var619=r1, var413=$r0, var310=com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource, var3207=$r2, var2591=$r4, var83=java.nio.charset.Charset, var3816=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource=var3490, r1=var619, $r0=var413, com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource=var310, $r2=var3207, $r4=var2591, java.nio.charset.Charset=var83, $r3=var3816}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource;	$r0 = new java.lang.String;	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource this$0>;	$r4 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource: byte[] read()>();	$r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource: java.nio.charset.Charset charset>;	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r4, $r3);	return $r0
;block_num 1