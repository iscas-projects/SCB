(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2217 0)
(declare-sort var3300 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2217 var2217)
(declare-const null-String String)
(declare-const var1585 var2217) ; Statement: r1 := @this: com.google.javascript.jscomp.SymbolTable$JSDocInfoCollector 
(assert (not (= var1585 null-var2217)))
(declare-const var1856 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1856 null-String)))
(define-const var2062 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var91 Int (hashCode/-467973558 var1856)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1038130864: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("undefined");     case 3392903: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("null");     case 3625364: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("void");     default: goto tableswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     case 2: goto return 1;     default: goto return 0; }; } 
(assert (and (not (= var91 3625364)) (and (not (= var91 3392903)) (and (not (= var91 (- 1038130864))) true)))) ; Intersect: Negate: Cond: $i0 == 3625364   and Intersect: Negate: Cond: $i0 == 3392903   and Intersect: Negate: Cond: $i0 == -1038130864   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     case 2: goto return 1;     default: goto return 0; } 
(assert (and (not (= var2062 2)) (and (not (= var2062 1)) (and (not (= var2062 0)) true)))) ; Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var2217=com.google.javascript.jscomp.SymbolTable$JSDocInfoCollector, var1585=r1, var1856=r0, var3300=null_type, var2062=b1, var91=$i0}
; {com.google.javascript.jscomp.SymbolTable$JSDocInfoCollector=var2217, r1=var1585, r0=var1856, null_type=var3300, b1=var2062, $i0=var91}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.SymbolTable$JSDocInfoCollector;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1038130864: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("undefined");     case 3392903: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("null");     case 3625364: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("void");     default: goto tableswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     case 2: goto return 1;     default: goto return 0; }; };	tableswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     case 2: goto return 1;     default: goto return 0; };	return 0
;block_num 3