(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3821 0)
(declare-sort var3309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var3821) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3309-init () var3309)
(declare-fun <init>/875830710 (var3309 String) void)
(declare-const null-var3821 var3821)
(declare-const var950 var3821) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var950 null-var3821)))
(assert true)
(define-const var3926 String (getImplMethodName/-1836315809 var950)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var2173 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var1894 Int (hashCode/-467973558 var3926)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 1895216862: goto $z11 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$insertForGeneratedKey$2dfcceed$1");     case 2055075563: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("handleRowToList");     default: goto lookupswitch(b3) {     case 0: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r14 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var1894 2055075563)) (and (not (= var1894 1895216862)) true))) ; Intersect: Negate: Cond: $i0 == 2055075563   and Intersect: Negate: Cond: $i0 == 1895216862   and Non Conditional  
 ; Statement: lookupswitch(b3) {     case 0: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r14 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2173 1)) (and (not (= var2173 0)) true))) ; Intersect: Negate: Cond: b3 == 1   and Intersect: Negate: Cond: b3 == 0   and Non Conditional  
(define-const var146 var3309 var3309-init) ; Statement: $r14 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var146 "Invalid lambda deserialization")) ; Statement: specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var146!1 var3309)
(declare-const var2435 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var3309-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3821=java.lang.invoke.SerializedLambda, var950=r0, var3926=r1, var2173=b3, var1894=$i0, var3309=java.lang.IllegalArgumentException, var146=$r14, var2435="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var3821, r0=var950, r1=var3926, b3=var2173, $i0=var1894, java.lang.IllegalArgumentException=var3309, $r14=var146, "Invalid lambda deserialization"=var2435}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b3 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 1895216862: goto $z11 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$insertForGeneratedKey$2dfcceed$1");     case 2055075563: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("handleRowToList");     default: goto lookupswitch(b3) {     case 0: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r14 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b3) {     case 0: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r14 = new java.lang.IllegalArgumentException; };	$r14 = new java.lang.IllegalArgumentException;	specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r14
;block_num 3