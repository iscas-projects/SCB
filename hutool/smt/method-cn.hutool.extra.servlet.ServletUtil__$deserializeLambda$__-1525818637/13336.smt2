(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3664 0)
(declare-sort var1129 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var3664) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1129-init () var1129)
(declare-fun <init>/875830710 (var1129 String) void)
(declare-const null-var3664 var3664)
(declare-const var1187 var3664) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var1187 null-var3664)))
(assert true)
(define-const var2319 String (getImplMethodName/-1836315809 var1187)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var3303 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var1729 Int (hashCode/-467973558 var2319)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -75308287: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("getName");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var1729 (- 75308287))) true)) ; Intersect: Negate: Cond: $i0 == -75308287   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3303 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var3286 var1129 var1129-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3286 "Invalid lambda deserialization")) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var3286!1 var1129)
(declare-const var2982 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1129-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3664=java.lang.invoke.SerializedLambda, var1187=r0, var2319=r1, var3303=b2, var1729=$i0, var1129=java.lang.IllegalArgumentException, var3286=$r8, var2982="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var3664, r0=var1187, r1=var2319, b2=var3303, $i0=var1729, java.lang.IllegalArgumentException=var1129, $r8=var3286, "Invalid lambda deserialization"=var2982}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -75308287: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("getName");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; };	$r8 = new java.lang.IllegalArgumentException;	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r8
;block_num 3