(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2640 0)
(declare-sort var2702 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var2640) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2702-init () var2702)
(declare-fun <init>/875830710 (var2702 String) void)
(declare-const null-var2640 var2640)
(declare-const var676 var2640) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var676 null-var2640)))
(assert true)
(define-const var2470 String (getImplMethodName/-1836315809 var676)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var3134 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var157 Int (hashCode/-467973558 var2470)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1220786921: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$write$2cc9e97d$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var157 (- 1220786921))) true)) ; Intersect: Negate: Cond: $i0 == -1220786921   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3134 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var2133 var2702 var2702-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2133 "Invalid lambda deserialization")) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var2133!1 var2702)
(declare-const var2255 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2702-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2640=java.lang.invoke.SerializedLambda, var676=r0, var2470=r1, var3134=b2, var157=$i0, var2702=java.lang.IllegalArgumentException, var2133=$r12, var2255="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var2640, r0=var676, r1=var2470, b2=var3134, $i0=var157, java.lang.IllegalArgumentException=var2702, $r12=var2133, "Invalid lambda deserialization"=var2255}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1220786921: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$write$2cc9e97d$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; };	$r12 = new java.lang.IllegalArgumentException;	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r12
;block_num 3