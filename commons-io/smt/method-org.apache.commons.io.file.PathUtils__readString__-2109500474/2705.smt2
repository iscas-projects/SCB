(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1017 0)
(declare-sort var3716 0)
(declare-sort var1807 0)
(declare-sort var3818 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var1807_readAllBytes/955470509 (var1017) (Array Int Int))
(declare-fun var3818_toCharset/1927181655 (var3716) var3716)
(declare-fun <init>/-2015205558 (String (Array Int Int) var3716) void)
(declare-const null-var1017 var1017)
(declare-const null-var3716 var3716)
(declare-const var389 var1017) ; Statement: r1 := @parameter0: java.nio.file.Path 
(assert (not (= var389 null-var1017)))
(declare-const var3837 var3716) ; Statement: r2 := @parameter1: java.nio.charset.Charset 
(assert (not (= var3837 null-var3716)))
(define-const var3564 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var2254 (Array Int Int) (var1807_readAllBytes/955470509 var389)) ; Statement: $r4 = staticinvoke <java.nio.file.Files: byte[] readAllBytes(java.nio.file.Path)>(r1) 
(define-const var697 var3716 (var3818_toCharset/1927181655 var3837)) ; Statement: $r3 = staticinvoke <org.apache.commons.io.Charsets: java.nio.charset.Charset toCharset(java.nio.charset.Charset)>(r2) 
(assert true)
;(assert (<init>/-2015205558 var3564 var2254 var697)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r4, $r3) 

(declare-const var3564!1 String)
(declare-const var2254!1 (Array Int Int))
(declare-const var697!1 var3716)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), var1807_readAllBytes/955470509=([java.nio.file.Path], byte[]), var3818_toCharset/1927181655=([java.nio.charset.Charset], java.nio.charset.Charset), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var1017=java.nio.file.Path, var389=r1, var3716=java.nio.charset.Charset, var3837=r2, var3564=$r0, var1807=java.nio.file.Files, var2254=$r4, var3818=org.apache.commons.io.Charsets, var697=$r3}
; {java.nio.file.Path=var1017, r1=var389, java.nio.charset.Charset=var3716, r2=var3837, $r0=var3564, java.nio.file.Files=var1807, $r4=var2254, org.apache.commons.io.Charsets=var3818, $r3=var697}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r1 := @parameter0: java.nio.file.Path;	r2 := @parameter1: java.nio.charset.Charset;	$r0 = new java.lang.String;	$r4 = staticinvoke <java.nio.file.Files: byte[] readAllBytes(java.nio.file.Path)>(r1);	$r3 = staticinvoke <org.apache.commons.io.Charsets: java.nio.charset.Charset toCharset(java.nio.charset.Charset)>(r2);	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r4, $r3);	return $r0
;block_num 1