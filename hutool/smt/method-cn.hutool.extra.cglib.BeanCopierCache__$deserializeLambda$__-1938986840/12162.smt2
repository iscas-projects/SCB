(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1946 0)
(declare-sort var2960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var1946) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2960-init () var2960)
(declare-fun <init>/875830710 (var2960 String) void)
(declare-const null-var1946 var1946)
(declare-const var2135 var1946) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var2135 null-var1946)))
(assert true)
(define-const var1700 String (getImplMethodName/-1836315809 var2135)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var974 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var3293 Int (hashCode/-467973558 var1700)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1207448498: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$get$3b77ef17$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r14 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var3293 (- 1207448498))) true)) ; Intersect: Negate: Cond: $i0 == -1207448498   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r14 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var974 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var3541 var2960 var2960-init) ; Statement: $r14 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3541 "Invalid lambda deserialization")) ; Statement: specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var3541!1 var2960)
(declare-const var338 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2960-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1946=java.lang.invoke.SerializedLambda, var2135=r0, var1700=r1, var974=b2, var3293=$i0, var2960=java.lang.IllegalArgumentException, var3541=$r14, var338="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var1946, r0=var2135, r1=var1700, b2=var974, $i0=var3293, java.lang.IllegalArgumentException=var2960, $r14=var3541, "Invalid lambda deserialization"=var338}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1207448498: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$get$3b77ef17$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r14 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r14 = new java.lang.IllegalArgumentException; };	$r14 = new java.lang.IllegalArgumentException;	specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r14
;block_num 3