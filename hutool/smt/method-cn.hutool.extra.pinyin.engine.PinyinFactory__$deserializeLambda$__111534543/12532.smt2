(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3373 0)
(declare-sort var2824 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var3373) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2824-init () var2824)
(declare-fun <init>/875830710 (var2824 String) void)
(declare-const null-var3373 var3373)
(declare-const var2495 var3373) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var2495 null-var3373)))
(assert true)
(define-const var1261 String (getImplMethodName/-1836315809 var2495)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var3017 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var250 Int (hashCode/-467973558 var1261)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1352294148: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("create");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var250 (- 1352294148))) true)) ; Intersect: Negate: Cond: $i0 == -1352294148   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3017 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var2804 var2824 var2824-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2804 "Invalid lambda deserialization")) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var2804!1 var2824)
(declare-const var2333 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2824-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3373=java.lang.invoke.SerializedLambda, var2495=r0, var1261=r1, var3017=b2, var250=$i0, var2824=java.lang.IllegalArgumentException, var2804=$r8, var2333="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var3373, r0=var2495, r1=var1261, b2=var3017, $i0=var250, java.lang.IllegalArgumentException=var2824, $r8=var2804, "Invalid lambda deserialization"=var2333}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1352294148: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("create");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; };	$r8 = new java.lang.IllegalArgumentException;	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r8
;block_num 3