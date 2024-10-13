(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1086 0)
(declare-sort var182 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var182-init () var182)
(declare-fun String_valueOf/-333372740 (var1086) String)
(declare-fun <init>/875830710 (var182 String) void)
(declare-const null-Bool Bool)
(declare-const null-var1086 var1086)
(declare-const var2812 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2812 null-Bool)))
(declare-const var1244 var1086) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var1244 null-var1086)))
 ; Statement: if z0 != 0 goto return 
(assert (not (not (= (ite var2812 1 0) 0)))) ; Negate: Cond: z0 != 0  
(define-const var2413 var182 var182-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var3413 String (String_valueOf/-333372740 var1244)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (<init>/875830710 var2413 var3413)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r2) 

(declare-const var2413!1 var182)
(declare-const var3413!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var182-init=([], java.lang.IllegalArgumentException), String_valueOf/-333372740=([java.lang.Object], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2812=z0, var1086=java.lang.Object, var1244=r1, var182=java.lang.IllegalArgumentException, var2413=$r0, var3413=$r2}
; {z0=var2812, java.lang.Object=var1086, r1=var1244, java.lang.IllegalArgumentException=var182, $r0=var2413, $r2=var3413}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts z0 := @parameter0: boolean;	r1 := @parameter1: java.lang.Object;	if z0 != 0 goto return;	$r0 = new java.lang.IllegalArgumentException;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r2);	throw $r0
;block_num 2