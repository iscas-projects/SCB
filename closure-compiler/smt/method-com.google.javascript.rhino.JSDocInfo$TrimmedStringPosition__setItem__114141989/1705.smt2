(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2604 0)
(declare-sort var3374 0)
(declare-sort var1781 0)
(declare-sort var1499 0)
(declare-sort var3406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1781_checkArgument/-972017905 (Bool var1499) void)
(declare-fun cast-from-String-to-var1499 (String) var1499)
(declare-fun setItem/264709582 (var3406 var1499) void)
(declare-fun cast-from-var2604-to-var3406 (var2604) var3406)
(declare-const null-var2604 var2604)
(declare-const null-String String)
(declare-const var1237 var2604) ; Statement: r1 := @this: com.google.javascript.rhino.JSDocInfo$TrimmedStringPosition 
(assert (not (= var1237 null-var2604)))
(declare-const var2630 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2630 null-String)))
(assert (and true (and (> (str.len var2630) 0) (<= 0 0))))
(define-const var1833 Int (charAt/698050440 var2630 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var15 Int (cast-from-Int-to-Int var1833)) ; Statement: $i4 = (int) $c0 
 ; Statement: if $i4 == 32 goto $z0 = 0 
(assert (= var15 32)) ; Cond: $i4 == 32 
(define-const var613 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
;(assert (var1781_checkArgument/-972017905 var613 (cast-from-String-to-var1499 "String has leading or trailing whitespace"))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, "String has leading or trailing whitespace") 

(declare-const var613!1 Bool)
(declare-const var1319 String)
(assert true)
;(assert (setItem/264709582 (cast-from-var2604-to-var3406 var1237) (cast-from-String-to-var1499 var2630))) ; Statement: specialinvoke r1.<com.google.javascript.rhino.JSDocInfo$StringPosition: void setItem(java.lang.Object)>(r0) 

(declare-const var1237!1 var2604)
(declare-const var2630!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var1781_checkArgument/-972017905=([boolean, java.lang.Object], void), cast-from-String-to-var1499=([java.lang.String], java.lang.Object), setItem/264709582=([com.google.javascript.rhino.SourcePosition, java.lang.Object], void), cast-from-var2604-to-var3406=([com.google.javascript.rhino.JSDocInfo$TrimmedStringPosition], com.google.javascript.rhino.SourcePosition)}
; {var2604=com.google.javascript.rhino.JSDocInfo$TrimmedStringPosition, var1237=r1, var2630=r0, var3374=null_type, var1833=$c0, var15=$i4, var613=$z0, var1781=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1499=java.lang.Object, var1319="String has leading or trailing whitespace", var3406=com.google.javascript.rhino.SourcePosition}
; {com.google.javascript.rhino.JSDocInfo$TrimmedStringPosition=var2604, r1=var1237, r0=var2630, null_type=var3374, $c0=var1833, $i4=var15, $z0=var613, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1781, java.lang.Object=var1499, "String has leading or trailing whitespace"=var1319, com.google.javascript.rhino.SourcePosition=var3406}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: com.google.javascript.rhino.JSDocInfo$TrimmedStringPosition;	r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i4 = (int) $c0;	if $i4 == 32 goto $z0 = 0;	$z0 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, "String has leading or trailing whitespace");	specialinvoke r1.<com.google.javascript.rhino.JSDocInfo$StringPosition: void setItem(java.lang.Object)>(r0);	return
;block_num 3