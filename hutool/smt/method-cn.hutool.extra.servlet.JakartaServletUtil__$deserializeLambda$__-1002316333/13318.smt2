(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2289 0)
(declare-sort var2840 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var2289) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2840-init () var2840)
(declare-fun <init>/875830710 (var2840 String) void)
(declare-const null-var2289 var2289)
(declare-const var2784 var2289) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var2784 null-var2289)))
(assert true)
(define-const var2209 String (getImplMethodName/-1836315809 var2784)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var1657 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var2716 Int (hashCode/-467973558 var2209)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -75308287: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("getName");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var2716 (- 75308287))) true)) ; Intersect: Negate: Cond: $i0 == -75308287   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1657 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var2873 var2840 var2840-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2873 "Invalid lambda deserialization")) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var2873!1 var2840)
(declare-const var400 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2840-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2289=java.lang.invoke.SerializedLambda, var2784=r0, var2209=r1, var1657=b2, var2716=$i0, var2840=java.lang.IllegalArgumentException, var2873=$r8, var400="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var2289, r0=var2784, r1=var2209, b2=var1657, $i0=var2716, java.lang.IllegalArgumentException=var2840, $r8=var2873, "Invalid lambda deserialization"=var400}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -75308287: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("getName");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; };	$r8 = new java.lang.IllegalArgumentException;	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r8
;block_num 3