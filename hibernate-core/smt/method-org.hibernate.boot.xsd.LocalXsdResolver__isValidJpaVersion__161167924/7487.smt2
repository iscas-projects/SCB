(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2318 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-String String)
(declare-const var2189 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2189 null-String)))
(define-const var2851 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1735 Int (hashCode/-467973558 var2189)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 50485: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0");     default: goto tableswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     case 2: goto return 1;     case 3: goto return 1;     case 4: goto return 1;     default: goto return 0; }; } 
(assert (and (not (= var1735 50485)) (and (not (= var1735 49526)) (and (not (= var1735 49525)) (and (not (= var1735 49524)) (and (not (= var1735 48563)) true)))))) ; Intersect: Negate: Cond: $i0 == 50485   and Intersect: Negate: Cond: $i0 == 49526   and Intersect: Negate: Cond: $i0 == 49525   and Intersect: Negate: Cond: $i0 == 49524   and Intersect: Negate: Cond: $i0 == 48563   and Non Conditional     
 ; Statement: tableswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     case 2: goto return 1;     case 3: goto return 1;     case 4: goto return 1;     default: goto return 0; } 
(assert (and (= var2851 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var2189=r0, var2318=null_type, var2851=b1, var1735=$i0}
; {r0=var2189, null_type=var2318, b1=var2851, $i0=var1735}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 50485: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0");     default: goto tableswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     case 2: goto return 1;     case 3: goto return 1;     case 4: goto return 1;     default: goto return 0; }; };	tableswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     case 2: goto return 1;     case 3: goto return 1;     case 4: goto return 1;     default: goto return 0; };	return 1
;block_num 3