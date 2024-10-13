(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2063 0)
(declare-sort var3936 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var2063) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3936-init () var3936)
(declare-fun <init>/875830710 (var3936 String) void)
(declare-const null-var2063 var2063)
(declare-const var1605 var2063) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var1605 null-var2063)))
(assert true)
(define-const var2895 String (getImplMethodName/-1836315809 var1605)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var1816 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var2418 Int (hashCode/-467973558 var2895)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 362264839: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$static$f54c1323$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var2418 362264839)) true)) ; Intersect: Negate: Cond: $i0 == 362264839   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1816 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var2891 var3936 var3936-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2891 "Invalid lambda deserialization")) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var2891!1 var3936)
(declare-const var2925 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var3936-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2063=java.lang.invoke.SerializedLambda, var1605=r0, var2895=r1, var1816=b2, var2418=$i0, var3936=java.lang.IllegalArgumentException, var2891=$r8, var2925="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var2063, r0=var1605, r1=var2895, b2=var1816, $i0=var2418, java.lang.IllegalArgumentException=var3936, $r8=var2891, "Invalid lambda deserialization"=var2925}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 362264839: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$static$f54c1323$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r8 = new java.lang.IllegalArgumentException; };	$r8 = new java.lang.IllegalArgumentException;	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r8
;block_num 3