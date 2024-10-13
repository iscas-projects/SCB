(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2995 0)
(declare-sort var3722 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var2995) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3722-init () var3722)
(declare-fun <init>/875830710 (var3722 String) void)
(declare-const null-var2995 var2995)
(declare-const var3827 var2995) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var3827 null-var2995)))
(assert true)
(define-const var2137 String (getImplMethodName/-1836315809 var3827)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var2364 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var3264 Int (hashCode/-467973558 var2137)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 1818100338: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("<init>");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r14 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var3264 1818100338)) true)) ; Intersect: Negate: Cond: $i0 == 1818100338   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r14 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2364 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var585 var3722 var3722-init) ; Statement: $r14 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var585 "Invalid lambda deserialization")) ; Statement: specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var585!1 var3722)
(declare-const var2829 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var3722-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2995=java.lang.invoke.SerializedLambda, var3827=r0, var2137=r1, var2364=b2, var3264=$i0, var3722=java.lang.IllegalArgumentException, var585=$r14, var2829="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var2995, r0=var3827, r1=var2137, b2=var2364, $i0=var3264, java.lang.IllegalArgumentException=var3722, $r14=var585, "Invalid lambda deserialization"=var2829}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 1818100338: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("<init>");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r14 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r14 = new java.lang.IllegalArgumentException; };	$r14 = new java.lang.IllegalArgumentException;	specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r14
;block_num 3