(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3049 0)
(declare-sort var2335 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3049 var3049)
(declare-const null-String String)
(declare-const var3540 var3049) ; Statement: r1 := @this: com.google.javascript.jscomp.SymbolTable$JSDocInfoCollector 
(assert (not (= var3540 null-var3049)))
(declare-const var3855 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3855 null-String)))
(define-const var3930 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1621 Int (hashCode/-467973558 var3855)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1038130864: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("undefined");     case 3392903: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("null");     case 3625364: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("void");     default: goto tableswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     case 2: goto return 1;     default: goto return 0; }; } 
(assert (and (not (= var1621 3625364)) (and (not (= var1621 3392903)) (and (not (= var1621 (- 1038130864))) true)))) ; Intersect: Negate: Cond: $i0 == 3625364   and Intersect: Negate: Cond: $i0 == 3392903   and Intersect: Negate: Cond: $i0 == -1038130864   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     case 2: goto return 1;     default: goto return 0; } 
(assert (and (= var3930 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var3049=com.google.javascript.jscomp.SymbolTable$JSDocInfoCollector, var3540=r1, var3855=r0, var2335=null_type, var3930=b1, var1621=$i0}
; {com.google.javascript.jscomp.SymbolTable$JSDocInfoCollector=var3049, r1=var3540, r0=var3855, null_type=var2335, b1=var3930, $i0=var1621}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.SymbolTable$JSDocInfoCollector;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1038130864: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("undefined");     case 3392903: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("null");     case 3625364: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("void");     default: goto tableswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     case 2: goto return 1;     default: goto return 0; }; };	tableswitch(b1) {     case 0: goto return 1;     case 1: goto return 1;     case 2: goto return 1;     default: goto return 0; };	return 1
;block_num 3