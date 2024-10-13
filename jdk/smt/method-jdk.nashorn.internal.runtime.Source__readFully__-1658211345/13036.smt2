(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3251 0)
(declare-sort var2791 0)
(declare-sort var252 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var252_readBytes/-1893961890 (var3251) (Array Int Int))
(declare-fun <init>/-2015205558 (String (Array Int Int) var2791) void)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-const null-var3251 var3251)
(declare-const null-var2791 var2791)
(declare-const var3379 var3251) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var3379 null-var3251)))
(declare-const var444 var2791) ; Statement: r0 := @parameter1: java.nio.charset.Charset 
(assert (not (= var444 null-var2791)))
 ; Statement: if r0 == null goto $r4 = staticinvoke <jdk.nashorn.internal.runtime.Source: char[] readFully(java.io.InputStream)>(r1) 
(assert (not (= var444 null-var2791))) ; Negate: Cond: r0 == null  
(define-const var3430 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var3487 (Array Int Int) (var252_readBytes/-1893961890 var3379)) ; Statement: $r3 = staticinvoke <jdk.nashorn.internal.runtime.Source: byte[] readBytes(java.io.InputStream)>(r1) 
(assert true)
;(assert (<init>/-2015205558 var3430 var3487 var444)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r3, r0) 

(declare-const var3430!1 String)
(declare-const var3487!1 (Array Int Int))
(declare-const var444!1 var2791)
(assert true)
(define-const var778 (Array Int Int) (toCharArray/415275702 var3430!1)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>() 
 ; Statement: goto [?= return $r4] 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), var252_readBytes/-1893961890=([java.io.InputStream], byte[]), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void), toCharArray/415275702=([java.lang.String], char[])}
; {var3251=java.io.InputStream, var3379=r1, var2791=java.nio.charset.Charset, var444=r0, var3430=$r2, var252=jdk.nashorn.internal.runtime.Source, var3487=$r3, var778=$r4}
; {java.io.InputStream=var3251, r1=var3379, java.nio.charset.Charset=var2791, r0=var444, $r2=var3430, jdk.nashorn.internal.runtime.Source=var252, $r3=var3487, $r4=var778}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1,"<java.lang.String: char[] toCharArray()>": 1}
;stmts r1 := @parameter0: java.io.InputStream;	r0 := @parameter1: java.nio.charset.Charset;	if r0 == null goto $r4 = staticinvoke <jdk.nashorn.internal.runtime.Source: char[] readFully(java.io.InputStream)>(r1);	$r2 = new java.lang.String;	$r3 = staticinvoke <jdk.nashorn.internal.runtime.Source: byte[] readBytes(java.io.InputStream)>(r1);	specialinvoke $r2.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r3, r0);	$r4 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>();	goto [?= return $r4];	return $r4
;block_num 3