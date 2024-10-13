(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var346 0)
(declare-sort var964 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var346) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var964-init () var964)
(declare-fun <init>/875830710 (var964 String) void)
(declare-const null-var346 var346)
(declare-const var3330 var346) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var3330 null-var346)))
(assert true)
(define-const var2781 String (getImplMethodName/-1836315809 var3330)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var2464 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var3462 Int (hashCode/-467973558 var2781)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 72472265: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getScript$f42252b3$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r10 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var3462 72472265)) true)) ; Intersect: Negate: Cond: $i0 == 72472265   and Non Conditional 
 ; Statement: lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r10 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2464 0)) true)) ; Intersect: Negate: Cond: b2 == 0   and Non Conditional 
(define-const var174 var964 var964-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var174 "Invalid lambda deserialization")) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var174!1 var964)
(declare-const var2716 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var964-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var346=java.lang.invoke.SerializedLambda, var3330=r0, var2781=r1, var2464=b2, var3462=$i0, var964=java.lang.IllegalArgumentException, var174=$r10, var2716="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var346, r0=var3330, r1=var2781, b2=var2464, $i0=var3462, java.lang.IllegalArgumentException=var964, $r10=var174, "Invalid lambda deserialization"=var2716}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 72472265: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getScript$f42252b3$1");     default: goto lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r10 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b2) {     case 0: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r10 = new java.lang.IllegalArgumentException; };	$r10 = new java.lang.IllegalArgumentException;	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r10
;block_num 3