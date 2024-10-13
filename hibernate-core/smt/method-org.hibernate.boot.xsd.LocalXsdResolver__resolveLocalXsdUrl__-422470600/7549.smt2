(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var605 0)
(declare-sort var569 0)
(declare-sort var3645 0)
(declare-sort var3920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var569!class ClassObject)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var3920-init () var3920)
(declare-const null-String String)
(declare-const null-var3645 var3645)
(declare-const var3675 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var3675 null-String)))
(define-const var3449 ClassObject var569!class) ; Statement: $r0 = class "Lorg/hibernate/boot/xsd/LocalXsdResolver;" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3897 var3645) ; Statement: $r6 := @caughtexception 
(assert (not (= var3897 null-var3645)))
(assert true) ; Non Conditional
(assert true)
(define-const var3617 Bool (startsWith/-1785782452 var3675 "/")) ; Statement: $z0 = virtualinvoke r7.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r10 = new java.net.URL 
(assert (= (ite var3617 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1822 var3920 var3920-init) ; Statement: $r10 = new java.net.URL 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1390 var3645) ; Statement: $r4 := @caughtexception 
(assert (not (= var1390 null-var3645)))
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var3920-init=([], java.net.URL)}
; {var3675=r7, var605=null_type, var569=org.hibernate.boot.xsd.LocalXsdResolver, var3449=$r0, var3645=java.lang.Exception, var3897=$r6, var3617=$z0, var3920=java.net.URL, var1822=$r10, var1390=$r4}
; {r7=var3675, null_type=var605, org.hibernate.boot.xsd.LocalXsdResolver=var569, $r0=var3449, java.lang.Exception=var3645, $r6=var3897, $z0=var3617, java.net.URL=var3920, $r10=var1822, $r4=var1390}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r7 := @parameter0: java.lang.String;	$r0 = class "Lorg/hibernate/boot/xsd/LocalXsdResolver;";	$r6 := @caughtexception;	$z0 = virtualinvoke r7.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r10 = new java.net.URL;	$r10 = new java.net.URL;	$r4 := @caughtexception;	return null
;block_num 5