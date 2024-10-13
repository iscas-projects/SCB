(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var260 0)
(declare-sort var2390 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-String String)
(declare-const var2390-SUPER var2390)
(declare-const var687 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var687 null-String)))
(define-const var3179 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3177 Int (hashCode/-467973558 var687)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -2035517098: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("arguments");     case -1309056193: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("exports");     case 3559070: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("this");     case 109801339: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("super");     default: goto tableswitch(b1) {     case 0: goto $r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS>;     case 1: goto $r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER>;     case 2: goto $r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS>;     case 3: goto $r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS>;     default: goto return null; }; } 
(assert (and (not (= var3177 109801339)) (and (not (= var3177 3559070)) (and (not (= var3177 (- 1309056193))) (and (not (= var3177 (- 2035517098))) true))))) ; Intersect: Negate: Cond: $i0 == 109801339   and Intersect: Negate: Cond: $i0 == 3559070   and Intersect: Negate: Cond: $i0 == -1309056193   and Intersect: Negate: Cond: $i0 == -2035517098   and Non Conditional    
 ; Statement: tableswitch(b1) {     case 0: goto $r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS>;     case 1: goto $r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER>;     case 2: goto $r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS>;     case 3: goto $r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS>;     default: goto return null; } 
(assert (and (= var3179 1) (and (not (= var3179 0)) true))) ; Intersect: Cond: b1 == 1  and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
(define-const var56 var2390 var2390-SUPER) ; Statement: $r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var687=r0, var260=null_type, var3179=b1, var3177=$i0, var2390=com.google.javascript.jscomp.AbstractScope$ImplicitVar, var56=$r3}
; {r0=var687, null_type=var260, b1=var3179, $i0=var3177, com.google.javascript.jscomp.AbstractScope$ImplicitVar=var2390, $r3=var56}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -2035517098: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("arguments");     case -1309056193: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("exports");     case 3559070: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("this");     case 109801339: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("super");     default: goto tableswitch(b1) {     case 0: goto $r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS>;     case 1: goto $r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER>;     case 2: goto $r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS>;     case 3: goto $r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS>;     default: goto return null; }; };	tableswitch(b1) {     case 0: goto $r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS>;     case 1: goto $r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER>;     case 2: goto $r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS>;     case 3: goto $r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS>;     default: goto return null; };	$r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER>;	return $r3
;block_num 3