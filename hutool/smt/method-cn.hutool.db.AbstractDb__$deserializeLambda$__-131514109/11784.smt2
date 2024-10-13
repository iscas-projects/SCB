(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2762 0)
(declare-sort var1330 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var2762) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1330-init () var1330)
(declare-fun <init>/875830710 (var1330 String) void)
(declare-const null-var2762 var2762)
(declare-const var787 var2762) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var787 null-var2762)))
(assert true)
(define-const var2875 String (getImplMethodName/-1836315809 var787)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var551 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var3242 Int (hashCode/-467973558 var2875)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -215336314: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$page$e33ee6c3$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var3242 (- 215336314))) true)) ; Intersect: Negate: Cond: $i0 == -215336314   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var551 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var3577 var1330 var1330-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3577 "Invalid lambda deserialization")) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var3577!1 var1330)
(declare-const var1371 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1330-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2762=java.lang.invoke.SerializedLambda, var787=r0, var2875=r1, var551=b2, var3242=$i0, var1330=java.lang.IllegalArgumentException, var3577=$r12, var1371="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var2762, r0=var787, r1=var2875, b2=var551, $i0=var3242, java.lang.IllegalArgumentException=var1330, $r12=var3577, "Invalid lambda deserialization"=var1371}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -215336314: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$page$e33ee6c3$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r12 = new java.lang.IllegalArgumentException; };	$r12 = new java.lang.IllegalArgumentException;	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r12
;block_num 3