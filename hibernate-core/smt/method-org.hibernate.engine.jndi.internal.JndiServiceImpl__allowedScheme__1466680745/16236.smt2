(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var308 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-String String)
(declare-const var295 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var295 null-String)))
(define-const var471 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2451 Int (hashCode/-467973558 var295)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 3254818: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java");     case 3420614: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("osgi");     default: goto lookupswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     default: goto return 0; }; } 
(assert (and (not (= var2451 3420614)) (and (not (= var2451 3254818)) true))) ; Intersect: Negate: Cond: $i0 == 3420614   and Intersect: Negate: Cond: $i0 == 3254818   and Non Conditional  
 ; Statement: lookupswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     default: goto return 0; } 
(assert (and (= var471 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var295=r0, var308=null_type, var471=b1, var2451=$i0}
; {r0=var295, null_type=var308, b1=var471, $i0=var2451}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 3254818: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("java");     case 3420614: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("osgi");     default: goto lookupswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     default: goto return 0; }; };	lookupswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     default: goto return 0; };	return 1
;block_num 3