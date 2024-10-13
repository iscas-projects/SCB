(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3922 0)
(declare-sort var3533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var3922) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3533-init () var3533)
(declare-fun <init>/875830710 (var3533 String) void)
(declare-const null-var3922 var3922)
(declare-const var2522 var3922) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var2522 null-var3922)))
(assert true)
(define-const var859 String (getImplMethodName/-1836315809 var2522)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var2759 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var2648 Int (hashCode/-467973558 var859)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -424253257: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$get$3f3ed817$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var2648 (- 424253257))) true)) ; Intersect: Negate: Cond: $i0 == -424253257   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2759 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var1271 var3533 var3533-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1271 "Invalid lambda deserialization")) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var1271!1 var3533)
(declare-const var3086 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var3533-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3922=java.lang.invoke.SerializedLambda, var2522=r0, var859=r1, var2759=b2, var2648=$i0, var3533=java.lang.IllegalArgumentException, var1271=$r12, var3086="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var3922, r0=var2522, r1=var859, b2=var2759, $i0=var2648, java.lang.IllegalArgumentException=var3533, $r12=var1271, "Invalid lambda deserialization"=var3086}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -424253257: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$get$3f3ed817$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; };	$r12 = new java.lang.IllegalArgumentException;	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r12
;block_num 3