(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2467 0)
(declare-sort var3333 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun read/-1044631906 (var3333) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2467 var2467)
(declare-const null-var3333 var3333)
(declare-const var3848 var2467) ; Statement: r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver 
(assert (not (= var3848 null-var2467)))
(declare-const var3653 var3333) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var3653 null-var3333)))
(define-const var1609 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1609)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1609!1 String)
(assert (= var1609!1 ""))
(assert true) ; Non Conditional
(assert true)
(define-const var92 Int (read/-1044631906 var3653)) ; Statement: $i0 = virtualinvoke r1.<java.io.InputStream: int read()>() 
 ; Statement: if $i0 < 0 goto virtualinvoke r1.<java.io.InputStream: int read()>() 
(assert (not (< var92 0))) ; Negate: Cond: $i0 < 0  
 ; Statement: if $i0 == 13 goto virtualinvoke r1.<java.io.InputStream: int read()>() 
(assert (= var92 13)) ; Cond: $i0 == 13 
(assert true)
;(assert (read/-1044631906 var3653)) ; Statement: virtualinvoke r1.<java.io.InputStream: int read()>() 

(declare-const var3653!1 var3333)
(assert true)
(define-const var712 String (toString/-2075883882 var1609!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), read/-1044631906=([java.io.InputStream], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2467=org.apache.ibatis.javassist.tools.web.Webserver, var3848=r3, var3333=java.io.InputStream, var3653=r1, var1609=$r0, var92=$i0, var712=$r2}
; {org.apache.ibatis.javassist.tools.web.Webserver=var2467, r3=var3848, java.io.InputStream=var3333, r1=var3653, $r0=var1609, $i0=var92, $r2=var712}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver;	r1 := @parameter0: java.io.InputStream;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = virtualinvoke r1.<java.io.InputStream: int read()>();	if $i0 < 0 goto virtualinvoke r1.<java.io.InputStream: int read()>();	if $i0 == 13 goto virtualinvoke r1.<java.io.InputStream: int read()>();	virtualinvoke r1.<java.io.InputStream: int read()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 4