(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1552 0)
(declare-sort var1721 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var1552) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1721-init () var1721)
(declare-fun <init>/875830710 (var1721 String) void)
(declare-const null-var1552 var1552)
(declare-const var3722 var1552) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var3722 null-var1552)))
(assert true)
(define-const var2928 String (getImplMethodName/-1836315809 var3722)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var3347 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var228 Int (hashCode/-467973558 var2928)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -574859861: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$new$533315fa$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r10 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var228 (- 574859861))) true)) ; Intersect: Negate: Cond: $i0 == -574859861   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r10 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3347 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var2674 var1721 var1721-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2674 "Invalid lambda deserialization")) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var2674!1 var1721)
(declare-const var521 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1721-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1552=java.lang.invoke.SerializedLambda, var3722=r0, var2928=r1, var3347=b2, var228=$i0, var1721=java.lang.IllegalArgumentException, var2674=$r10, var521="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var1552, r0=var3722, r1=var2928, b2=var3347, $i0=var228, java.lang.IllegalArgumentException=var1721, $r10=var2674, "Invalid lambda deserialization"=var521}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -574859861: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$new$533315fa$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r10 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r10 = new java.lang.IllegalArgumentException; };	$r10 = new java.lang.IllegalArgumentException;	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r10
;block_num 3