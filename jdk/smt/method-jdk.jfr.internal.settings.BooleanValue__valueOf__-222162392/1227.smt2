(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1449 0)
(declare-sort var1874 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1874-init () var1874)
(declare-fun <init>/-159299719 (var1874 Bool) void)
(declare-const null-String String)
(declare-const var356 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var356 null-String)))
(define-const var3167 String "true") ; Statement: $r1 = "true" 
(assert true)
(define-const var314 Bool (= var3167 var356)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "false" 
(assert (not (= (ite var314 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2889 var1874 var1874-init) ; Statement: $r10 = new jdk.jfr.internal.settings.BooleanValue 
(assert true)
;(assert (<init>/-159299719 var2889 (ite (= 1 1) true false))) ; Statement: specialinvoke $r10.<jdk.jfr.internal.settings.BooleanValue: void <init>(boolean)>(1) 

(declare-const var2889!1 var1874)
(declare-const var1020 Int)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var1874-init=([], jdk.jfr.internal.settings.BooleanValue), <init>/-159299719=([jdk.jfr.internal.settings.BooleanValue, boolean], void)}
; {var356=r0, var1449=null_type, var3167=$r1, var314=$z0, var1874=jdk.jfr.internal.settings.BooleanValue, var2889=$r10, var1020=1}
; {r0=var356, null_type=var1449, $r1=var3167, $z0=var314, jdk.jfr.internal.settings.BooleanValue=var1874, $r10=var2889, 1=var1020}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "true";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "false";	$r10 = new jdk.jfr.internal.settings.BooleanValue;	specialinvoke $r10.<jdk.jfr.internal.settings.BooleanValue: void <init>(boolean)>(1);	return $r10
;block_num 2