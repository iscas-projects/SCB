(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2286 0)
(declare-sort var2713 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-String String)
(declare-const var2713-EXPORTS var2713)
(declare-const var2721 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2721 null-String)))
(define-const var1346 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var240 Int (hashCode/-467973558 var2721)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -2035517098: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("arguments");     case -1309056193: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("exports");     case 3559070: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("this");     case 109801339: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("super");     default: goto tableswitch(b1) {     case 0: goto $r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS>;     case 1: goto $r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER>;     case 2: goto $r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS>;     case 3: goto $r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS>;     default: goto return null; }; } 
(assert (and (not (= var240 109801339)) (and (not (= var240 3559070)) (and (not (= var240 (- 1309056193))) (and (not (= var240 (- 2035517098))) true))))) ; Intersect: Negate: Cond: $i0 == 109801339   and Intersect: Negate: Cond: $i0 == 3559070   and Intersect: Negate: Cond: $i0 == -1309056193   and Intersect: Negate: Cond: $i0 == -2035517098   and Non Conditional    
 ; Statement: tableswitch(b1) {     case 0: goto $r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS>;     case 1: goto $r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER>;     case 2: goto $r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS>;     case 3: goto $r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS>;     default: goto return null; } 
(assert (and (= var1346 3) (and (not (= var1346 2)) (and (not (= var1346 1)) (and (not (= var1346 0)) true))))) ; Intersect: Cond: b1 == 3  and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional    
(define-const var956 var2713 var2713-EXPORTS) ; Statement: $r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS> 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var2721=r0, var2286=null_type, var1346=b1, var240=$i0, var2713=com.google.javascript.jscomp.AbstractScope$ImplicitVar, var956=$r1}
; {r0=var2721, null_type=var2286, b1=var1346, $i0=var240, com.google.javascript.jscomp.AbstractScope$ImplicitVar=var2713, $r1=var956}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -2035517098: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("arguments");     case -1309056193: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("exports");     case 3559070: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("this");     case 109801339: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("super");     default: goto tableswitch(b1) {     case 0: goto $r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS>;     case 1: goto $r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER>;     case 2: goto $r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS>;     case 3: goto $r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS>;     default: goto return null; }; };	tableswitch(b1) {     case 0: goto $r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS>;     case 1: goto $r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER>;     case 2: goto $r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS>;     case 3: goto $r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS>;     default: goto return null; };	$r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS>;	return $r1
;block_num 3