(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2485 0)
(declare-sort var75 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var75-init () var75)
(declare-fun String_valueOf/-333372740 (var2485) String)
(declare-fun <init>/1862440627 (var75 String) void)
(declare-const null-var2485 var2485)
(declare-const var983 var2485) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var983 null-var2485)))
(declare-const var2621 var2485) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2621 null-var2485)))
 ; Statement: if r0 != null goto return r0 
(assert (not (not (= var983 null-var2485)))) ; Negate: Cond: r0 != null  
(define-const var1930 var75 var75-init) ; Statement: $r1 = new java.lang.NullPointerException 
(define-const var813 String (String_valueOf/-333372740 var2621)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
(assert true)
;(assert (<init>/1862440627 var1930 var813)) ; Statement: specialinvoke $r1.<java.lang.NullPointerException: void <init>(java.lang.String)>($r3) 

(declare-const var1930!1 var75)
(declare-const var813!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var75-init=([], java.lang.NullPointerException), String_valueOf/-333372740=([java.lang.Object], java.lang.String), <init>/1862440627=([java.lang.NullPointerException, java.lang.String], void)}
; {var2485=java.lang.Object, var983=r0, var2621=r2, var75=java.lang.NullPointerException, var1930=$r1, var813=$r3}
; {java.lang.Object=var2485, r0=var983, r2=var2621, java.lang.NullPointerException=var75, $r1=var1930, $r3=var813}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	if r0 != null goto return r0;	$r1 = new java.lang.NullPointerException;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	specialinvoke $r1.<java.lang.NullPointerException: void <init>(java.lang.String)>($r3);	throw $r1
;block_num 2