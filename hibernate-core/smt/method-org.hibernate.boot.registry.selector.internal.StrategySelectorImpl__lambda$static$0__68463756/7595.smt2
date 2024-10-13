(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var754 0)
(declare-sort var611 0)
(declare-sort var116 0)
(declare-sort var636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var611-init () var611)
(declare-fun arr-var116-init () (Array Int var116))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var116 (String) var116)
(declare-fun String_format/1339386452 (String (Array Int var116)) String)
(declare-fun <init>/-460164070 (var611 String var636) void)
(declare-fun cast-from-var754-to-var636 (var754) var636)
(declare-fun cast-from-var611-to-var636 (var611) var636)
(declare-const null-ClassObject ClassObject)
(declare-const null-var754 var754)
(declare-const null-__Array__Int__var116__ (Array Int var116))
(declare-const var3151 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3151 null-ClassObject)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var396 var754) ; Statement: $r2 := @caughtexception 
(assert (not (= var396 null-var754)))
(define-const var1468 var611 var611-init) ; Statement: $r7 = new org.hibernate.boot.registry.selector.spi.StrategySelectionException 
(define-const var3611 (Array Int var116) arr-var116-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var415 String (getName/-1958580599 var3151)) ; Statement: $r5 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(declare-const var3611!1 (Array Int var116))
(assert (not (= var3611!1 null-__Array__Int__var116__)))
(assert (= (select var3611!1 0) (cast-from-String-to-var116 var415))) ; Statement: $r4[0] = $r5 
(define-const var2709 String (String_format/1339386452 "Could not instantiate named strategy class [%s]" var3611!1)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not instantiate named strategy class [%s]", $r4) 
(assert true)
;(assert (<init>/-460164070 var1468 var2709 (cast-from-var754-to-var636 var396))) ; Statement: specialinvoke $r7.<org.hibernate.boot.registry.selector.spi.StrategySelectionException: void <init>(java.lang.String,java.lang.Throwable)>($r6, $r2) 

(declare-const var1468!1 var611)
(declare-const var2709!1 String)
(declare-const var396!1 var754)
(define-const var715 var636 (cast-from-var611-to-var636 var1468!1)) ; Statement: $r8 = (java.lang.Throwable) $r7 
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var611-init=([], org.hibernate.boot.registry.selector.spi.StrategySelectionException), arr-var116-init=([], java.lang.Object[]), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var116=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-460164070=([org.hibernate.boot.registry.selector.spi.StrategySelectionException, java.lang.String, java.lang.Throwable], void), cast-from-var754-to-var636=([java.lang.Exception], java.lang.Throwable), cast-from-var611-to-var636=([org.hibernate.boot.registry.selector.spi.StrategySelectionException], java.lang.Throwable)}
; {var3151=r0, var754=java.lang.Exception, var396=$r2, var611=org.hibernate.boot.registry.selector.spi.StrategySelectionException, var1468=$r7, var116=java.lang.Object, var3611=$r4, var415=$r5, var2709=$r6, var636=java.lang.Throwable, var715=$r8}
; {r0=var3151, java.lang.Exception=var754, $r2=var396, org.hibernate.boot.registry.selector.spi.StrategySelectionException=var611, $r7=var1468, java.lang.Object=var116, $r4=var3611, $r5=var415, $r6=var2709, java.lang.Throwable=var636, $r8=var715}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r2 := @caughtexception;	$r7 = new org.hibernate.boot.registry.selector.spi.StrategySelectionException;	$r4 = newarray (java.lang.Object)[1];	$r5 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r4[0] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not instantiate named strategy class [%s]", $r4);	specialinvoke $r7.<org.hibernate.boot.registry.selector.spi.StrategySelectionException: void <init>(java.lang.String,java.lang.Throwable)>($r6, $r2);	$r8 = (java.lang.Throwable) $r7;	throw $r8
;block_num 2