(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1999 0)
(declare-sort var1234 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var1999) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1234-init () var1234)
(declare-fun <init>/875830710 (var1234 String) void)
(declare-const null-var1999 var1999)
(declare-const var954 var1999) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var954 null-var1999)))
(assert true)
(define-const var3100 String (getImplMethodName/-1836315809 var954)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var844 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var462 Int (hashCode/-467973558 var3100)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 1326350252: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$new$9ce4ae67$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r10 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var462 1326350252)) true)) ; Intersect: Negate: Cond: $i0 == 1326350252   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r10 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var844 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var2068 var1234 var1234-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2068 "Invalid lambda deserialization")) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var2068!1 var1234)
(declare-const var2931 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1234-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1999=java.lang.invoke.SerializedLambda, var954=r0, var3100=r1, var844=b2, var462=$i0, var1234=java.lang.IllegalArgumentException, var2068=$r10, var2931="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var1999, r0=var954, r1=var3100, b2=var844, $i0=var462, java.lang.IllegalArgumentException=var1234, $r10=var2068, "Invalid lambda deserialization"=var2931}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 1326350252: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$new$9ce4ae67$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r10 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r10 = new java.lang.IllegalArgumentException; };	$r10 = new java.lang.IllegalArgumentException;	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r10
;block_num 3