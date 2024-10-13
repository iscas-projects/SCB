(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1469 0)
(declare-sort var3206 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var1469) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3206-init () var3206)
(declare-fun <init>/875830710 (var3206 String) void)
(declare-const null-var1469 var1469)
(declare-const var850 var1469) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var850 null-var1469)))
(assert true)
(define-const var2952 String (getImplMethodName/-1836315809 var850)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var1956 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var3549 Int (hashCode/-467973558 var2952)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 71185235: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$new$9d0d83f1$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var3549 71185235)) true)) ; Intersect: Negate: Cond: $i0 == 71185235   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1956 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var3286 var3206 var3206-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3286 "Invalid lambda deserialization")) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var3286!1 var3206)
(declare-const var1335 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var3206-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1469=java.lang.invoke.SerializedLambda, var850=r0, var2952=r1, var1956=b2, var3549=$i0, var3206=java.lang.IllegalArgumentException, var3286=$r12, var1335="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var1469, r0=var850, r1=var2952, b2=var1956, $i0=var3549, java.lang.IllegalArgumentException=var3206, $r12=var3286, "Invalid lambda deserialization"=var1335}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 71185235: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$new$9d0d83f1$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; };	$r12 = new java.lang.IllegalArgumentException;	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r12
;block_num 3