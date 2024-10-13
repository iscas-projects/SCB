(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1879 0)
(declare-sort var3084 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1879 var1879)
(declare-const null-String String)
(declare-const var2187 var1879) ; Statement: r2 := @this: jdk.jfr.internal.jfc.JFCParserHandler 
(assert (not (= var2187 null-var1879)))
(declare-const var2617 String) ; Statement: r17 := @parameter0: java.lang.String 
(assert (not (= var2617 null-String)))
(declare-const var853 String) ; Statement: r18 := @parameter1: java.lang.String 
(assert (not (= var853 null-String)))
(declare-const var1942 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1942 null-String)))
(assert true)
(define-const var2806 String (toLowerCase/415700667 var1942)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase()>() 
(define-const var3325 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2117 Int (hashCode/-467973558 var2806)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 96891546: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("event");     case 1932752118: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("configuration");     case 1985941072: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("setting");     default: goto tableswitch(b1) {     case 0: goto goto [?= return];     case 1: goto r2.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.String currentEventPath> = null;     case 2: goto $r3 = r2.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.StringBuilder currentCharacters>;     default: goto return; }; } 
(assert (and (not (= var2117 1985941072)) (and (not (= var2117 1932752118)) (and (not (= var2117 96891546)) true)))) ; Intersect: Negate: Cond: $i0 == 1985941072   and Intersect: Negate: Cond: $i0 == 1932752118   and Intersect: Negate: Cond: $i0 == 96891546   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto goto [?= return];     case 1: goto r2.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.String currentEventPath> = null;     case 2: goto $r3 = r2.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.StringBuilder currentCharacters>;     default: goto return; } 
(assert (and (not (= var3325 2)) (and (not (= var3325 1)) (and (not (= var3325 0)) true)))) ; Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/415700667=([java.lang.String], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1879=jdk.jfr.internal.jfc.JFCParserHandler, var2187=r2, var2617=r17, var3084=null_type, var853=r18, var1942=r0, var2806=r1, var3325=b1, var2117=$i0}
; {jdk.jfr.internal.jfc.JFCParserHandler=var1879, r2=var2187, r17=var2617, null_type=var3084, r18=var853, r0=var1942, r1=var2806, b1=var3325, $i0=var2117}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @this: jdk.jfr.internal.jfc.JFCParserHandler;	r17 := @parameter0: java.lang.String;	r18 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase()>();	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 96891546: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("event");     case 1932752118: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("configuration");     case 1985941072: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("setting");     default: goto tableswitch(b1) {     case 0: goto goto [?= return];     case 1: goto r2.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.String currentEventPath> = null;     case 2: goto $r3 = r2.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.StringBuilder currentCharacters>;     default: goto return; }; };	tableswitch(b1) {     case 0: goto goto [?= return];     case 1: goto r2.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.String currentEventPath> = null;     case 2: goto $r3 = r2.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.StringBuilder currentCharacters>;     default: goto return; };	return
;block_num 3