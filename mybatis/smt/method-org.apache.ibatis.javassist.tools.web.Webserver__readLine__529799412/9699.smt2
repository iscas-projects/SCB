(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1866 0)
(declare-sort var3257 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun read/-1044631906 (var3257) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1866 var1866)
(declare-const null-var3257 var3257)
(declare-const var1938 var1866) ; Statement: r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver 
(assert (not (= var1938 null-var1866)))
(declare-const var3138 var3257) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var3138 null-var3257)))
(define-const var2691 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2691)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2691!1 String)
(assert (= var2691!1 ""))
(assert true) ; Non Conditional
(assert true)
(define-const var3235 Int (read/-1044631906 var3138)) ; Statement: $i0 = virtualinvoke r1.<java.io.InputStream: int read()>() 
 ; Statement: if $i0 < 0 goto virtualinvoke r1.<java.io.InputStream: int read()>() 
(assert (< var3235 0)) ; Cond: $i0 < 0 
(assert true)
;(assert (read/-1044631906 var3138)) ; Statement: virtualinvoke r1.<java.io.InputStream: int read()>() 

(declare-const var3138!1 var3257)
(assert true)
(define-const var2745 String (toString/-2075883882 var2691!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), read/-1044631906=([java.io.InputStream], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1866=org.apache.ibatis.javassist.tools.web.Webserver, var1938=r3, var3257=java.io.InputStream, var3138=r1, var2691=$r0, var3235=$i0, var2745=$r2}
; {org.apache.ibatis.javassist.tools.web.Webserver=var1866, r3=var1938, java.io.InputStream=var3257, r1=var3138, $r0=var2691, $i0=var3235, $r2=var2745}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver;	r1 := @parameter0: java.io.InputStream;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = virtualinvoke r1.<java.io.InputStream: int read()>();	if $i0 < 0 goto virtualinvoke r1.<java.io.InputStream: int read()>();	virtualinvoke r1.<java.io.InputStream: int read()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3