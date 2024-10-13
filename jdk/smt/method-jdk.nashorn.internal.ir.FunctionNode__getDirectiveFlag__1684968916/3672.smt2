(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2816 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-String String)
(declare-const var467 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var467 null-String)))
(define-const var2719 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1321 Int (hashCode/-467973558 var467)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1523015107: goto $z8 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn callsite trace enterexit");     case -1374308069: goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn callsite trace objects");     case -262002780: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn print lower parse");     case 375132083: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn print lower ast");     case 823663954: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn print ast");     case 1149106347: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn print symbols");     case 1280395651: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn print parse");     case 1402803979: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn callsite profile");     case 2121912771: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn callsite trace misses");     default: goto tableswitch(b1) {     case 0: goto return 8388608;     case 1: goto return 16777216;     case 2: goto return 33554432;     case 3: goto return 4194304;     case 4: goto return 131072;     case 5: goto return 262144;     case 6: goto return 524288;     case 7: goto return 1048576;     case 8: goto return 2097152;     default: goto return 0; }; } 
(assert (and (not (= var1321 2121912771)) (and (not (= var1321 1402803979)) (and (not (= var1321 1280395651)) (and (not (= var1321 1149106347)) (and (not (= var1321 823663954)) (and (not (= var1321 375132083)) (and (not (= var1321 (- 262002780))) (and (not (= var1321 (- 1374308069))) (and (not (= var1321 (- 1523015107))) true)))))))))) ; Intersect: Negate: Cond: $i0 == 2121912771   and Intersect: Negate: Cond: $i0 == 1402803979   and Intersect: Negate: Cond: $i0 == 1280395651   and Intersect: Negate: Cond: $i0 == 1149106347   and Intersect: Negate: Cond: $i0 == 823663954   and Intersect: Negate: Cond: $i0 == 375132083   and Intersect: Negate: Cond: $i0 == -262002780   and Intersect: Negate: Cond: $i0 == -1374308069   and Intersect: Negate: Cond: $i0 == -1523015107   and Non Conditional         
 ; Statement: tableswitch(b1) {     case 0: goto return 8388608;     case 1: goto return 16777216;     case 2: goto return 33554432;     case 3: goto return 4194304;     case 4: goto return 131072;     case 5: goto return 262144;     case 6: goto return 524288;     case 7: goto return 1048576;     case 8: goto return 2097152;     default: goto return 0; } 
(assert (and (= var2719 6) (and (not (= var2719 5)) (and (not (= var2719 4)) (and (not (= var2719 3)) (and (not (= var2719 2)) (and (not (= var2719 1)) (and (not (= var2719 0)) true)))))))) ; Intersect: Cond: b1 == 6  and Intersect: Negate: Cond: b1 == 5   and Intersect: Negate: Cond: b1 == 4   and Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional       
 ; Statement: return 524288 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var467=r0, var2816=null_type, var2719=b1, var1321=$i0}
; {r0=var467, null_type=var2816, b1=var2719, $i0=var1321}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1523015107: goto $z8 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn callsite trace enterexit");     case -1374308069: goto $z7 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn callsite trace objects");     case -262002780: goto $z6 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn print lower parse");     case 375132083: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn print lower ast");     case 823663954: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn print ast");     case 1149106347: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn print symbols");     case 1280395651: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn print parse");     case 1402803979: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn callsite profile");     case 2121912771: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("nashorn callsite trace misses");     default: goto tableswitch(b1) {     case 0: goto return 8388608;     case 1: goto return 16777216;     case 2: goto return 33554432;     case 3: goto return 4194304;     case 4: goto return 131072;     case 5: goto return 262144;     case 6: goto return 524288;     case 7: goto return 1048576;     case 8: goto return 2097152;     default: goto return 0; }; };	tableswitch(b1) {     case 0: goto return 8388608;     case 1: goto return 16777216;     case 2: goto return 33554432;     case 3: goto return 4194304;     case 4: goto return 131072;     case 5: goto return 262144;     case 6: goto return 524288;     case 7: goto return 1048576;     case 8: goto return 2097152;     default: goto return 0; };	return 524288
;block_num 3