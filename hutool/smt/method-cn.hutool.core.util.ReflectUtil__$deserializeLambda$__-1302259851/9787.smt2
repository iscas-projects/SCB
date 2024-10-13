(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3931 0)
(declare-sort var2051 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var3931) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2051-init () var2051)
(declare-fun <init>/875830710 (var2051 String) void)
(declare-const null-var3931 var3931)
(declare-const var214 var3931) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var214 null-var3931)))
(assert true)
(define-const var2817 String (getImplMethodName/-1836315809 var214)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var2038 Int (- 1)) ; Statement: b4 = -1 
(assert true)
(define-const var94 Int (hashCode/-467973558 var2817)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1055735361: goto $z17 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getMethods$ea73458f$1");     case -515407122: goto $z16 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getFields$54eedd5e$1");     case 1527653860: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getConstructors$8f84531$1");     default: goto tableswitch(b4) {     case 0: goto $i3 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 2: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r26 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var94 1527653860)) (and (not (= var94 (- 515407122))) (and (not (= var94 (- 1055735361))) true)))) ; Intersect: Negate: Cond: $i0 == 1527653860   and Intersect: Negate: Cond: $i0 == -515407122   and Intersect: Negate: Cond: $i0 == -1055735361   and Non Conditional   
 ; Statement: tableswitch(b4) {     case 0: goto $i3 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 2: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r26 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2038 2)) (and (not (= var2038 1)) (and (not (= var2038 0)) true)))) ; Intersect: Negate: Cond: b4 == 2   and Intersect: Negate: Cond: b4 == 1   and Intersect: Negate: Cond: b4 == 0   and Non Conditional   
(define-const var1347 var2051 var2051-init) ; Statement: $r26 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1347 "Invalid lambda deserialization")) ; Statement: specialinvoke $r26.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var1347!1 var2051)
(declare-const var3538 String)
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2051-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3931=java.lang.invoke.SerializedLambda, var214=r0, var2817=r1, var2038=b4, var94=$i0, var2051=java.lang.IllegalArgumentException, var1347=$r26, var3538="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var3931, r0=var214, r1=var2817, b4=var2038, $i0=var94, java.lang.IllegalArgumentException=var2051, $r26=var1347, "Invalid lambda deserialization"=var3538}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b4 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1055735361: goto $z17 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getMethods$ea73458f$1");     case -515407122: goto $z16 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getFields$54eedd5e$1");     case 1527653860: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getConstructors$8f84531$1");     default: goto tableswitch(b4) {     case 0: goto $i3 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 2: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r26 = new java.lang.IllegalArgumentException; }; };	tableswitch(b4) {     case 0: goto $i3 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 2: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r26 = new java.lang.IllegalArgumentException; };	$r26 = new java.lang.IllegalArgumentException;	specialinvoke $r26.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r26
;block_num 3