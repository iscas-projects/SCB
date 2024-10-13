(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2285 0)
(declare-sort var2363 0)
(declare-sort var2899 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun readBytes/1955584034 (var2285) (Array Int Int))
(declare-fun charset/1765163268 (var2899) var2363)
(declare-fun cast-from-var2285-to-var2899 (var2285) var2899)
(declare-fun <init>/-2015205558 (String (Array Int Int) var2363) void)
(declare-const null-var2285 var2285)
(declare-const var3102 var2285) ; Statement: r1 := @this: cn.hutool.core.io.file.FileReader 
(assert (not (= var3102 null-var2285)))
(define-const var3124 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
(define-const var1878 (Array Int Int) (readBytes/1955584034 var3102)) ; Statement: $r3 = virtualinvoke r1.<cn.hutool.core.io.file.FileReader: byte[] readBytes()>() 
(define-const var2745 var2363 (charset/1765163268 (cast-from-var2285-to-var2899 var3102))) ; Statement: $r2 = r1.<cn.hutool.core.io.file.FileReader: java.nio.charset.Charset charset> 
(assert true)
;(assert (<init>/-2015205558 var3124 var1878 var2745)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r3, $r2) 

(declare-const var3124!1 String)
(declare-const var1878!1 (Array Int Int))
(declare-const var2745!1 var2363)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), readBytes/1955584034=([cn.hutool.core.io.file.FileReader], byte[]), charset/1765163268=([cn.hutool.core.io.file.FileWrapper], java.nio.charset.Charset), cast-from-var2285-to-var2899=([cn.hutool.core.io.file.FileReader], cn.hutool.core.io.file.FileWrapper), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var2285=cn.hutool.core.io.file.FileReader, var3102=r1, var3124=$r0, var1878=$r3, var2363=java.nio.charset.Charset, var2899=cn.hutool.core.io.file.FileWrapper, var2745=$r2}
; {cn.hutool.core.io.file.FileReader=var2285, r1=var3102, $r0=var3124, $r3=var1878, java.nio.charset.Charset=var2363, cn.hutool.core.io.file.FileWrapper=var2899, $r2=var2745}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r1 := @this: cn.hutool.core.io.file.FileReader;	$r0 = new java.lang.String;	$r3 = virtualinvoke r1.<cn.hutool.core.io.file.FileReader: byte[] readBytes()>();	$r2 = r1.<cn.hutool.core.io.file.FileReader: java.nio.charset.Charset charset>;	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r3, $r2);	return $r0
;block_num 1