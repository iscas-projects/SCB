(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3190 0)
(declare-sort var749 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var749-init () var749)
(declare-fun String_valueOf/-333372740 (var3190) String)
(declare-fun <init>/-1092629202 (var749 String) void)
(declare-const null-Bool Bool)
(declare-const null-var3190 var3190)
(declare-const var3699 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3699 null-Bool)))
(declare-const var2742 var3190) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var2742 null-var3190)))
 ; Statement: if z0 != 0 goto return 
(assert (not (not (= (ite var3699 1 0) 0)))) ; Negate: Cond: z0 != 0  
(define-const var2837 var749 var749-init) ; Statement: $r0 = new java.lang.IllegalStateException 
(define-const var1610 String (String_valueOf/-333372740 var2742)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert true)
;(assert (<init>/-1092629202 var2837 var1610)) ; Statement: specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r2) 

(declare-const var2837!1 var749)
(declare-const var1610!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var749-init=([], java.lang.IllegalStateException), String_valueOf/-333372740=([java.lang.Object], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3699=z0, var3190=java.lang.Object, var2742=r1, var749=java.lang.IllegalStateException, var2837=$r0, var1610=$r2}
; {z0=var3699, java.lang.Object=var3190, r1=var2742, java.lang.IllegalStateException=var749, $r0=var2837, $r2=var1610}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts z0 := @parameter0: boolean;	r1 := @parameter1: java.lang.Object;	if z0 != 0 goto return;	$r0 = new java.lang.IllegalStateException;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r2);	throw $r0
;block_num 2