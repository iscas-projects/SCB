(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2809 0)
(declare-sort var622 0)
(declare-sort var2303 0)
(declare-sort var2585 0)
(declare-sort var97 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2303_requireNonNull/1378936425 (var2585 String) var2585)
(declare-fun cast-from-String-to-var2585 (String) var2585)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var97-init () var97)
(declare-fun <init>/875830710 (var97 String) void)
(declare-const null-var2809 var2809)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3514 var2809) ; Statement: r8 := @this: org.apache.commons.io.FileSystemUtils 
(assert (not (= var3514 null-var2809)))
(declare-const var1489 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1489 null-String)))
(declare-const var3085 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3085 null-Bool)))
;(assert (var2303_requireNonNull/1378936425 (cast-from-String-to-var2585 var1489) "pathStr")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "pathStr") 

(declare-const var1489!1 String)
(declare-const var420 String)
 ; Statement: if z0 != 0 goto $r6 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert (not (not (= (ite var3085 1 0) 0)))) ; Negate: Cond: z0 != 0  
(assert true)
(define-const var558 Bool (isEmpty/-1285796103 var1489!1)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r6 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert (not (= (ite var558 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1380 var97 var97-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1380 "Path must not be empty")) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Path must not be empty") 

(declare-const var1380!1 var97)
(declare-const var1052 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2303_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-String-to-var2585=([java.lang.String], java.lang.Object), isEmpty/-1285796103=([java.lang.String], boolean), var97-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2809=org.apache.commons.io.FileSystemUtils, var3514=r8, var1489=r0, var622=null_type, var3085=z0, var2303=java.util.Objects, var2585=java.lang.Object, var420="pathStr", var558=$z2, var97=java.lang.IllegalArgumentException, var1380=$r10, var1052="Path must not be empty"}
; {org.apache.commons.io.FileSystemUtils=var2809, r8=var3514, r0=var1489, null_type=var622, z0=var3085, java.util.Objects=var2303, java.lang.Object=var2585, "pathStr"=var420, $z2=var558, java.lang.IllegalArgumentException=var97, $r10=var1380, "Path must not be empty"=var1052}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r8 := @this: org.apache.commons.io.FileSystemUtils;	r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "pathStr");	if z0 != 0 goto $r6 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z2 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r6 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$r10 = new java.lang.IllegalArgumentException;	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Path must not be empty");	throw $r10
;block_num 3