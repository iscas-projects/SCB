(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var400 0)
(declare-sort var2089 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var400) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2089-init () var2089)
(declare-fun <init>/875830710 (var2089 String) void)
(declare-const null-var400 var400)
(declare-const var967 var400) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var967 null-var400)))
(assert true)
(define-const var1549 String (getImplMethodName/-1836315809 var967)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var701 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var1776 Int (hashCode/-467973558 var1549)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 136209934: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("getFileNameString");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var1776 136209934)) true)) ; Intersect: Negate: Cond: $i0 == 136209934   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var701 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var3428 var2089 var2089-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3428 "Invalid lambda deserialization")) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var3428!1 var2089)
(declare-const var135 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2089-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var400=java.lang.invoke.SerializedLambda, var967=r0, var1549=r1, var701=b2, var1776=$i0, var2089=java.lang.IllegalArgumentException, var3428=$r8, var135="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var400, r0=var967, r1=var1549, b2=var701, $i0=var1776, java.lang.IllegalArgumentException=var2089, $r8=var3428, "Invalid lambda deserialization"=var135}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 136209934: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("getFileNameString");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; };	$r8 = new java.lang.IllegalArgumentException;	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r8
;block_num 3