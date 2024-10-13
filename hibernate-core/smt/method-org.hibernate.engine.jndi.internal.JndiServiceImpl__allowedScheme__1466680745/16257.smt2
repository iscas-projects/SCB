(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2827 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-String String)
(declare-const var2308 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2308 null-String)))
(define-const var2719 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var540 Int (hashCode/-467973558 var2308)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 3254818: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java");     case 3420614: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("osgi");     default: goto lookupswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     default: goto return 0; }; } 
(assert (and (not (= var540 3420614)) (and (not (= var540 3254818)) true))) ; Intersect: Negate: Cond: $i0 == 3420614   and Intersect: Negate: Cond: $i0 == 3254818   and Non Conditional  
 ; Statement: lookupswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     default: goto return 0; } 
(assert (and (not (= var2719 1)) (and (not (= var2719 0)) true))) ; Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var2308=r0, var2827=null_type, var2719=b1, var540=$i0}
; {r0=var2308, null_type=var2827, b1=var2719, $i0=var540}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 3254818: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java");     case 3420614: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("osgi");     default: goto lookupswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     default: goto return 0; }; };	lookupswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     default: goto return 0; };	return 0
;block_num 3