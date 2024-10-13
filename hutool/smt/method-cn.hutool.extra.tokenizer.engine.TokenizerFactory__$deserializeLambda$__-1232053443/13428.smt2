(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2922 0)
(declare-sort var3684 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var2922) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3684-init () var3684)
(declare-fun <init>/875830710 (var3684 String) void)
(declare-const null-var2922 var2922)
(declare-const var1656 var2922) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var1656 null-var2922)))
(assert true)
(define-const var495 String (getImplMethodName/-1836315809 var1656)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var2483 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var368 Int (hashCode/-467973558 var495)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1352294148: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("create");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var368 (- 1352294148))) true)) ; Intersect: Negate: Cond: $i0 == -1352294148   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2483 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var3219 var3684 var3684-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3219 "Invalid lambda deserialization")) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var3219!1 var3684)
(declare-const var2211 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var3684-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2922=java.lang.invoke.SerializedLambda, var1656=r0, var495=r1, var2483=b2, var368=$i0, var3684=java.lang.IllegalArgumentException, var3219=$r8, var2211="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var2922, r0=var1656, r1=var495, b2=var2483, $i0=var368, java.lang.IllegalArgumentException=var3684, $r8=var3219, "Invalid lambda deserialization"=var2211}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1352294148: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("create");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; };	$r8 = new java.lang.IllegalArgumentException;	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r8
;block_num 3