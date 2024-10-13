(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var770 0)
(declare-sort var475 0)
(declare-sort var3441 0)
(declare-sort var1065 0)
(declare-sort var3071 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var3441) Int)
(declare-fun cast-from-var770-to-var3441 (var770) var3441)
(declare-fun var1065-init () var1065)
(declare-fun String_valueOf/-333372740 (var3071) String)
(declare-fun cast-from-var770-to-var3071 (var770) var3071)
(declare-fun <init>/-1092629202 (var1065 String) void)
(declare-const null-var770 var770)
(declare-const var475-$SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType (Array Int Int))
(declare-const var3160 var770) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.TokenType 
(assert (not (= var3160 null-var770)))
(define-const var2929 (Array Int Int) var475-$SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType) ; Statement: $r1 = <com.google.javascript.jscomp.parsing.IRFactory$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType> 
(assert true)
(define-const var185 Int (ordinal/-291641772 (cast-from-var770-to-var3441 var3160))) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.TokenType: int ordinal()>() 
(define-const var2640 Int (select var2929 var185)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 19: goto $r8 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token NOT>;     case 20: goto $r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token BITNOT>;     case 21: goto $r6 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token POS>;     case 22: goto $r5 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token NEG>;     case 23: goto $r4 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token DELPROP>;     case 24: goto $r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token TYPEOF>;     case 25: goto $r2 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token VOID>;     default: goto $r9 = new java.lang.IllegalStateException; } 
(assert (and (not (= var2640 25)) (and (not (= var2640 24)) (and (not (= var2640 23)) (and (not (= var2640 22)) (and (not (= var2640 21)) (and (not (= var2640 20)) (and (not (= var2640 19)) true)))))))) ; Intersect: Negate: Cond: $i1 == 25   and Intersect: Negate: Cond: $i1 == 24   and Intersect: Negate: Cond: $i1 == 23   and Intersect: Negate: Cond: $i1 == 22   and Intersect: Negate: Cond: $i1 == 21   and Intersect: Negate: Cond: $i1 == 20   and Intersect: Negate: Cond: $i1 == 19   and Non Conditional       
(define-const var1354 var1065 var1065-init) ; Statement: $r9 = new java.lang.IllegalStateException 
(define-const var357 String (String_valueOf/-333372740 (cast-from-var770-to-var3071 var3160))) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0) 
(assert true)
;(assert (<init>/-1092629202 var1354 var357)) ; Statement: specialinvoke $r9.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r10) 

(declare-const var1354!1 var1065)
(declare-const var357!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var770-to-var3441=([com.google.javascript.jscomp.parsing.parser.TokenType], java.lang.Enum), var1065-init=([], java.lang.IllegalStateException), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-var770-to-var3071=([com.google.javascript.jscomp.parsing.parser.TokenType], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var770=com.google.javascript.jscomp.parsing.parser.TokenType, var3160=r0, var475=com.google.javascript.jscomp.parsing.IRFactory$1, var2929=$r1, var3441=java.lang.Enum, var185=$i0, var2640=$i1, var1065=java.lang.IllegalStateException, var1354=$r9, var3071=java.lang.Object, var357=$r10}
; {com.google.javascript.jscomp.parsing.parser.TokenType=var770, r0=var3160, com.google.javascript.jscomp.parsing.IRFactory$1=var475, $r1=var2929, java.lang.Enum=var3441, $i0=var185, $i1=var2640, java.lang.IllegalStateException=var1065, $r9=var1354, java.lang.Object=var3071, $r10=var357}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.TokenType;	$r1 = <com.google.javascript.jscomp.parsing.IRFactory$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType>;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.TokenType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 19: goto $r8 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token NOT>;     case 20: goto $r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token BITNOT>;     case 21: goto $r6 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token POS>;     case 22: goto $r5 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token NEG>;     case 23: goto $r4 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token DELPROP>;     case 24: goto $r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token TYPEOF>;     case 25: goto $r2 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token VOID>;     default: goto $r9 = new java.lang.IllegalStateException; };	$r9 = new java.lang.IllegalStateException;	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r0);	specialinvoke $r9.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r10);	throw $r9
;block_num 2