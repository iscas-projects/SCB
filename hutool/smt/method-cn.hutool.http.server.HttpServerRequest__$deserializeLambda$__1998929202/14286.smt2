(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2095 0)
(declare-sort var3680 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var2095) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3680-init () var3680)
(declare-fun <init>/875830710 (var3680 String) void)
(declare-const null-var2095 var2095)
(declare-const var2297 var2095) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var2297 null-var2095)))
(assert true)
(define-const var3767 String (getImplMethodName/-1836315809 var2297)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var1952 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var2901 Int (hashCode/-467973558 var3767)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -75308287: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("getName");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var2901 (- 75308287))) true)) ; Intersect: Negate: Cond: $i0 == -75308287   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1952 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var1798 var3680 var3680-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1798 "Invalid lambda deserialization")) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var1798!1 var3680)
(declare-const var1248 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var3680-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2095=java.lang.invoke.SerializedLambda, var2297=r0, var3767=r1, var1952=b2, var2901=$i0, var3680=java.lang.IllegalArgumentException, var1798=$r8, var1248="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var2095, r0=var2297, r1=var3767, b2=var1952, $i0=var2901, java.lang.IllegalArgumentException=var3680, $r8=var1798, "Invalid lambda deserialization"=var1248}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -75308287: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("getName");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; };	$r8 = new java.lang.IllegalArgumentException;	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r8
;block_num 3