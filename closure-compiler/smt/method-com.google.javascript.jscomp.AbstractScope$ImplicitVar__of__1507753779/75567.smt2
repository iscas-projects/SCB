(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var774 0)
(declare-sort var1940 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-String String)
(declare-const var1940-ARGUMENTS var1940)
(declare-const var3681 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3681 null-String)))
(define-const var3015 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3066 Int (hashCode/-467973558 var3681)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -2035517098: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("arguments");     case -1309056193: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("exports");     case 3559070: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("this");     case 109801339: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("super");     default: goto tableswitch(b1) {     case 0: goto $r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS>;     case 1: goto $r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER>;     case 2: goto $r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS>;     case 3: goto $r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS>;     default: goto return null; }; } 
(assert (and (not (= var3066 109801339)) (and (not (= var3066 3559070)) (and (not (= var3066 (- 1309056193))) (and (not (= var3066 (- 2035517098))) true))))) ; Intersect: Negate: Cond: $i0 == 109801339   and Intersect: Negate: Cond: $i0 == 3559070   and Intersect: Negate: Cond: $i0 == -1309056193   and Intersect: Negate: Cond: $i0 == -2035517098   and Non Conditional    
 ; Statement: tableswitch(b1) {     case 0: goto $r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS>;     case 1: goto $r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER>;     case 2: goto $r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS>;     case 3: goto $r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS>;     default: goto return null; } 
(assert (and (= var3015 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
(define-const var1450 var1940 var1940-ARGUMENTS) ; Statement: $r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS> 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var3681=r0, var774=null_type, var3015=b1, var3066=$i0, var1940=com.google.javascript.jscomp.AbstractScope$ImplicitVar, var1450=$r4}
; {r0=var3681, null_type=var774, b1=var3015, $i0=var3066, com.google.javascript.jscomp.AbstractScope$ImplicitVar=var1940, $r4=var1450}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -2035517098: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("arguments");     case -1309056193: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("exports");     case 3559070: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("this");     case 109801339: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("super");     default: goto tableswitch(b1) {     case 0: goto $r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS>;     case 1: goto $r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER>;     case 2: goto $r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS>;     case 3: goto $r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS>;     default: goto return null; }; };	tableswitch(b1) {     case 0: goto $r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS>;     case 1: goto $r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER>;     case 2: goto $r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS>;     case 3: goto $r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS>;     default: goto return null; };	$r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS>;	return $r4
;block_num 3