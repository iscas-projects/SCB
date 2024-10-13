(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3109 0)
(declare-sort var1539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var3109) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1539-init () var1539)
(declare-fun <init>/875830710 (var1539 String) void)
(declare-const null-var3109 var3109)
(declare-const var1231 var3109) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var1231 null-var3109)))
(assert true)
(define-const var3726 String (getImplMethodName/-1836315809 var1231)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var689 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var2952 Int (hashCode/-467973558 var3726)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 899171852: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$new$4d50292$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var2952 899171852)) true)) ; Intersect: Negate: Cond: $i0 == 899171852   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var689 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var3561 var1539 var1539-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3561 "Invalid lambda deserialization")) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var3561!1 var1539)
(declare-const var2823 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1539-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3109=java.lang.invoke.SerializedLambda, var1231=r0, var3726=r1, var689=b2, var2952=$i0, var1539=java.lang.IllegalArgumentException, var3561=$r12, var2823="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var3109, r0=var1231, r1=var3726, b2=var689, $i0=var2952, java.lang.IllegalArgumentException=var1539, $r12=var3561, "Invalid lambda deserialization"=var2823}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 899171852: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$new$4d50292$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; };	$r12 = new java.lang.IllegalArgumentException;	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r12
;block_num 3