(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3057 0)
(declare-sort var2924 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var3057) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2924-init () var2924)
(declare-fun <init>/875830710 (var2924 String) void)
(declare-const null-var3057 var3057)
(declare-const var1947 var3057) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var1947 null-var3057)))
(assert true)
(define-const var3193 String (getImplMethodName/-1836315809 var1947)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var3950 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var310 Int (hashCode/-467973558 var3193)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1352294148: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("create");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var310 (- 1352294148))) true)) ; Intersect: Negate: Cond: $i0 == -1352294148   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3950 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var2458 var2924 var2924-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2458 "Invalid lambda deserialization")) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var2458!1 var2924)
(declare-const var1981 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2924-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3057=java.lang.invoke.SerializedLambda, var1947=r0, var3193=r1, var3950=b2, var310=$i0, var2924=java.lang.IllegalArgumentException, var2458=$r8, var1981="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var3057, r0=var1947, r1=var3193, b2=var3950, $i0=var310, java.lang.IllegalArgumentException=var2924, $r8=var2458, "Invalid lambda deserialization"=var1981}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1352294148: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("create");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; };	$r8 = new java.lang.IllegalArgumentException;	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r8
;block_num 3