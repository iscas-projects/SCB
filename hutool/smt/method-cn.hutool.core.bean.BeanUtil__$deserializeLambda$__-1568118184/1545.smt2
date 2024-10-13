(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3042 0)
(declare-sort var2604 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImplMethodName/-1836315809 (var3042) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2604-init () var2604)
(declare-fun <init>/875830710 (var2604 String) void)
(declare-const null-var3042 var3042)
(declare-const var1104 var3042) ; Statement: r0 := @parameter0: java.lang.invoke.SerializedLambda 
(assert (not (= var1104 null-var3042)))
(assert true)
(define-const var556 String (getImplMethodName/-1836315809 var1104)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>() 
(define-const var1268 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var3696 Int (hashCode/-467973558 var556)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1541658353: goto $z12 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getBeanDesc$e7c7684d$1");     case 1988560598: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getPropertyDescriptorMap$58f3b7cb$1");     default: goto lookupswitch(b3) {     case 0: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r20 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var3696 1988560598)) (and (not (= var3696 (- 1541658353))) true))) ; Intersect: Negate: Cond: $i0 == 1988560598   and Intersect: Negate: Cond: $i0 == -1541658353   and Non Conditional  
 ; Statement: lookupswitch(b3) {     case 0: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r20 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1268 1)) (and (not (= var1268 0)) true))) ; Intersect: Negate: Cond: b3 == 1   and Intersect: Negate: Cond: b3 == 0   and Non Conditional  
(define-const var2901 var2604 var2604-init) ; Statement: $r20 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2901 "Invalid lambda deserialization")) ; Statement: specialinvoke $r20.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization") 

(declare-const var2901!1 var2604)
(declare-const var3198 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {getImplMethodName/-1836315809=([java.lang.invoke.SerializedLambda], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2604-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3042=java.lang.invoke.SerializedLambda, var1104=r0, var556=r1, var1268=b3, var3696=$i0, var2604=java.lang.IllegalArgumentException, var2901=$r20, var3198="Invalid lambda deserialization"}
; {java.lang.invoke.SerializedLambda=var3042, r0=var1104, r1=var556, b3=var1268, $i0=var3696, java.lang.IllegalArgumentException=var2604, $r20=var2901, "Invalid lambda deserialization"=var3198}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.SerializedLambda;	r1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: java.lang.String getImplMethodName()>();	b3 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1541658353: goto $z12 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getBeanDesc$e7c7684d$1");     case 1988560598: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("lambda$getPropertyDescriptorMap$58f3b7cb$1");     default: goto lookupswitch(b3) {     case 0: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r20 = new java.lang.IllegalArgumentException; }; };	lookupswitch(b3) {     case 0: goto $i2 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     case 1: goto $i1 = virtualinvoke r0.<java.lang.invoke.SerializedLambda: int getImplMethodKind()>();     default: goto $r20 = new java.lang.IllegalArgumentException; };	$r20 = new java.lang.IllegalArgumentException;	specialinvoke $r20.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid lambda deserialization");	throw $r20
;block_num 3