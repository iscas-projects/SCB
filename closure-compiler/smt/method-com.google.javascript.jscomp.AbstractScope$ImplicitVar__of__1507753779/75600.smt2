(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2518 0)
(declare-sort var3843 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-String String)
(declare-const var3843-THIS var3843)
(declare-const var1388 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1388 null-String)))
(define-const var1245 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var640 Int (hashCode/-467973558 var1388)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -2035517098: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("arguments");     case -1309056193: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("exports");     case 3559070: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("this");     case 109801339: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("super");     default: goto tableswitch(b1) {     case 0: goto $r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS>;     case 1: goto $r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER>;     case 2: goto $r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS>;     case 3: goto $r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS>;     default: goto return null; }; } 
(assert (and (not (= var640 109801339)) (and (not (= var640 3559070)) (and (not (= var640 (- 1309056193))) (and (not (= var640 (- 2035517098))) true))))) ; Intersect: Negate: Cond: $i0 == 109801339   and Intersect: Negate: Cond: $i0 == 3559070   and Intersect: Negate: Cond: $i0 == -1309056193   and Intersect: Negate: Cond: $i0 == -2035517098   and Non Conditional    
 ; Statement: tableswitch(b1) {     case 0: goto $r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS>;     case 1: goto $r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER>;     case 2: goto $r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS>;     case 3: goto $r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS>;     default: goto return null; } 
(assert (and (= var1245 2) (and (not (= var1245 1)) (and (not (= var1245 0)) true)))) ; Intersect: Cond: b1 == 2  and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
(define-const var248 var3843 var3843-THIS) ; Statement: $r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS> 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var1388=r0, var2518=null_type, var1245=b1, var640=$i0, var3843=com.google.javascript.jscomp.AbstractScope$ImplicitVar, var248=$r2}
; {r0=var1388, null_type=var2518, b1=var1245, $i0=var640, com.google.javascript.jscomp.AbstractScope$ImplicitVar=var3843, $r2=var248}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -2035517098: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("arguments");     case -1309056193: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("exports");     case 3559070: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("this");     case 109801339: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("super");     default: goto tableswitch(b1) {     case 0: goto $r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS>;     case 1: goto $r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER>;     case 2: goto $r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS>;     case 3: goto $r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS>;     default: goto return null; }; };	tableswitch(b1) {     case 0: goto $r4 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar ARGUMENTS>;     case 1: goto $r3 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar SUPER>;     case 2: goto $r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS>;     case 3: goto $r1 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar EXPORTS>;     default: goto return null; };	$r2 = <com.google.javascript.jscomp.AbstractScope$ImplicitVar: com.google.javascript.jscomp.AbstractScope$ImplicitVar THIS>;	return $r2
;block_num 3