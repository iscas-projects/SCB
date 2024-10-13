(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1551) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1551 var1551)
(declare-const var1880 var1551) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var1880 null-var1551)))
(assert true)
(define-const var1910 String (getName/1227988463 var1880)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var2489 Int (- 1)) ; Statement: b4 = -1 
(assert true)
(define-const var242 Int (hashCode/-467973558 var1910)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1776922004: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("toString");     case -1295482945: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("equals");     case 147696667: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("hashCode");     default: goto tableswitch(b4) {     case 0: goto $r6 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();     case 1: goto $r4 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();     case 2: goto $r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();     default: goto return 0; }; } 
(assert (and (not (= var242 147696667)) (and (not (= var242 (- 1295482945))) (and (not (= var242 (- 1776922004))) true)))) ; Intersect: Negate: Cond: $i0 == 147696667   and Intersect: Negate: Cond: $i0 == -1295482945   and Intersect: Negate: Cond: $i0 == -1776922004   and Non Conditional   
 ; Statement: tableswitch(b4) {     case 0: goto $r6 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();     case 1: goto $r4 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();     case 2: goto $r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();     default: goto return 0; } 
(assert (and (not (= var2489 2)) (and (not (= var2489 1)) (and (not (= var2489 0)) true)))) ; Intersect: Negate: Cond: b4 == 2   and Intersect: Negate: Cond: b4 == 1   and Intersect: Negate: Cond: b4 == 0   and Non Conditional   
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1551=java.lang.reflect.Method, var1880=r0, var1910=r1, var2489=b4, var242=$i0}
; {java.lang.reflect.Method=var1551, r0=var1880, r1=var1910, b4=var2489, $i0=var242}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	b4 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1776922004: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("toString");     case -1295482945: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("equals");     case 147696667: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("hashCode");     default: goto tableswitch(b4) {     case 0: goto $r6 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();     case 1: goto $r4 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();     case 2: goto $r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();     default: goto return 0; }; };	tableswitch(b4) {     case 0: goto $r6 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();     case 1: goto $r4 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();     case 2: goto $r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();     default: goto return 0; };	return 0
;block_num 3