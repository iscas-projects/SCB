(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var209 0)
(declare-sort var495 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var209) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var495-init () var495)
(declare-fun <init>/875830710 (var495 String) void)
(declare-const null-var209 var209)
(declare-const var266 var209) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var266 null-var209)))
(assert true)
(define-const var3485 String (getImplMethodName/-1836315809 var266)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var2358 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var1736 Int (hashCode/-467973558 var3485)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 1873192999: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("onPrepareStatement");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r10 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var1736 1873192999)) true)) ; Intersect: Negate: Cond: $i0 == 1873192999   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r10 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2358 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var3810 var495 var495-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3810 "Invalid lambda deserialization")) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var3810!1 var495)
(declare-const var2839 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var495-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var209=java.lang.invoke.SerializedLambda, var266=r0, var3485=r1, var2358=b2, var1736=$i0, var495=java.lang.IllegalArgumentException, var3810=$r10, var2839="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var209, r0=var266, r1=var3485, b2=var2358, $i0=var1736, java.lang.IllegalArgumentException=var495, $r10=var3810, "Invalid lambda deserialization"=var2839}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 1873192999: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("onPrepareStatement");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r10 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r10 = new java.lang.IllegalArgumentException; };	$r10 = new java.lang.IllegalArgumentException;	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r10
;block_num 3