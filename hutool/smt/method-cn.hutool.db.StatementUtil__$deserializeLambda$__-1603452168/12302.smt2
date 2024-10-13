(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2883 0)
(declare-sort var1236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var2883) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1236-init () var1236)
(declare-fun <init>/875830710 (var1236 String) void)
(declare-const null-var2883 var2883)
(declare-const var2714 var2883) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var2714 null-var2883)))
(assert true)
(define-const var2743 String (getImplMethodName/-1836315809 var2714)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var3162 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var70 Int (hashCode/-467973558 var2743)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 658403463: goto $z11 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getGeneratedKeyOfLong$d32a099d$1");     case 2055075563: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("handleRowToList");     default: goto lookupswitch(b3) {     case 0: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r14 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var70 2055075563)) (and (not (= var70 658403463)) true))) ; Intersect: Negate: Cond: $i0 == 2055075563   and Intersect: Negate: Cond: $i0 == 658403463   and Non Conditional  
 ; Statement: lookupswitch(b3) {     case 0: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r14 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3162 1)) (and (not (= var3162 0)) true))) ; Intersect: Negate: Cond: b3 == 1   and Intersect: Negate: Cond: b3 == 0   and Non Conditional  
(define-const var3629 var1236 var1236-init) ; Statement: $r14 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3629 "Invalid lambda deserialization")) ; Statement: specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var3629!1 var1236)
(declare-const var1659 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1236-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2883=java.lang.invoke.SerializedLambda, var2714=r0, var2743=r1, var3162=b3, var70=$i0, var1236=java.lang.IllegalArgumentException, var3629=$r14, var1659="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var2883, r0=var2714, r1=var2743, b3=var3162, $i0=var70, java.lang.IllegalArgumentException=var1236, $r14=var3629, "Invalid lambda deserialization"=var1659}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b3 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 658403463: goto $z11 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getGeneratedKeyOfLong$d32a099d$1");     case 2055075563: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("handleRowToList");     default: goto lookupswitch(b3) {     case 0: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r14 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b3) {     case 0: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r14 = new java.lang.IllegalArgumentException; };	$r14 = new java.lang.IllegalArgumentException;	specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r14
;block_num 3