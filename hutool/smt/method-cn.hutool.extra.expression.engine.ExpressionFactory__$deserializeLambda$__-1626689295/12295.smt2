(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1381 0)
(declare-sort var2881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var1381) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2881-init () var2881)
(declare-fun <init>/875830710 (var2881 String) void)
(declare-const null-var1381 var1381)
(declare-const var1043 var1381) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var1043 null-var1381)))
(assert true)
(define-const var24 String (getImplMethodName/-1836315809 var1043)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var1356 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var2009 Int (hashCode/-467973558 var24)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1352294148: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("create");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var2009 (- 1352294148))) true)) ; Intersect: Negate: Cond: $i0 == -1352294148   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1356 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var2888 var2881 var2881-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2888 "Invalid lambda deserialization")) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var2888!1 var2881)
(declare-const var485 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2881-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1381=java.lang.invoke.SerializedLambda, var1043=r0, var24=r1, var1356=b2, var2009=$i0, var2881=java.lang.IllegalArgumentException, var2888=$r8, var485="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var1381, r0=var1043, r1=var24, b2=var1356, $i0=var2009, java.lang.IllegalArgumentException=var2881, $r8=var2888, "Invalid lambda deserialization"=var485}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1352294148: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("create");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; };	$r8 = new java.lang.IllegalArgumentException;	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r8
;block_num 3