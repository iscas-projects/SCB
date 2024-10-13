(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1332 0)
(declare-sort var897 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var1332) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var897-init () var897)
(declare-fun <init>/875830710 (var897 String) void)
(declare-const null-var1332 var1332)
(declare-const var2812 var1332) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var2812 null-var1332)))
(assert true)
(define-const var3458 String (getImplMethodName/-1836315809 var2812)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var3396 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var2119 Int (hashCode/-467973558 var3458)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -126646974: goto $z17 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$new$9e12e91d$1");     case 1818100338: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("<init>");     default: goto lookupswitch(b3) {     case 0: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r22 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var2119 1818100338)) (and (not (= var2119 (- 126646974))) true))) ; Intersect: Negate: Cond: $i0 == 1818100338   and Intersect: Negate: Cond: $i0 == -126646974   and Non Conditional  
 ; Statement: lookupswitch(b3) {     case 0: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r22 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3396 1)) (and (not (= var3396 0)) true))) ; Intersect: Negate: Cond: b3 == 1   and Intersect: Negate: Cond: b3 == 0   and Non Conditional  
(define-const var2944 var897 var897-init) ; Statement: $r22 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2944 "Invalid lambda deserialization")) ; Statement: specialinvoke $r22.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var2944!1 var897)
(declare-const var3071 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var897-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1332=java.lang.invoke.SerializedLambda, var2812=r0, var3458=r1, var3396=b3, var2119=$i0, var897=java.lang.IllegalArgumentException, var2944=$r22, var3071="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var1332, r0=var2812, r1=var3458, b3=var3396, $i0=var2119, java.lang.IllegalArgumentException=var897, $r22=var2944, "Invalid lambda deserialization"=var3071}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b3 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -126646974: goto $z17 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$new$9e12e91d$1");     case 1818100338: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("<init>");     default: goto lookupswitch(b3) {     case 0: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r22 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b3) {     case 0: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r22 = new java.lang.IllegalArgumentException; };	$r22 = new java.lang.IllegalArgumentException;	specialinvoke $r22.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r22
;block_num 3