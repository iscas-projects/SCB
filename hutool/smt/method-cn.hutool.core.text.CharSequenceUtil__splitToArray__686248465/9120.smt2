(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2170 0)
(declare-sort var2659 0)
(declare-sort var131 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2170-init () (Array Int var2170))
(declare-fun var2659_notNull/515149844 (var2170 String (Array Int var2170)) var2170)
(declare-fun cast-from-String-to-var2170 (String) var2170)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun var131_splitToArray/-1170990318 (String Int Int Bool Bool) (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var398 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var398 null-String)))
(declare-const var392 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var392 null-Int)))
(declare-const var650 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var650 null-Int)))
(define-const var3907 (Array Int var2170) arr-var2170-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var2659_notNull/515149844 (cast-from-String-to-var2170 var398) "Text must be not null!" var3907)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "Text must be not null!", $r1) 

(declare-const var398!1 String)
(declare-const var1583 String)
(declare-const var3907!1 (Array Int var2170))
(define-const var1533 String (String_toString/-1426662429 var398!1)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(define-const var2379 (Array Int String) (var131_splitToArray/-1170990318 (cast-from-String-to-String var1533) var392 var650 (ite (= 1 0) true false) (ite (= 1 0) true false))) ; Statement: $r3 = staticinvoke <cn.hutool.core.text.StrSplitter: java.lang.String[] splitToArray(java.lang.CharSequence,char,int,boolean,boolean)>($r2, c0, i1, 0, 0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2170-init=([], java.lang.Object[]), var2659_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var2170=([java.lang.CharSequence], java.lang.Object), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), var131_splitToArray/-1170990318=([java.lang.CharSequence, char, int, boolean, boolean], java.lang.String[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var398=r0, var392=c0, var650=i1, var2170=java.lang.Object, var3907=$r1, var2659=cn.hutool.core.lang.Assert, var1583="Text must be not null!", var1533=$r2, var131=cn.hutool.core.text.StrSplitter, var2379=$r3}
; {r0=var398, c0=var392, i1=var650, java.lang.Object=var2170, $r1=var3907, cn.hutool.core.lang.Assert=var2659, "Text must be not null!"=var1583, $r2=var1533, cn.hutool.core.text.StrSplitter=var131, $r3=var2379}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	c0 := @parameter1: char;	i1 := @parameter2: int;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "Text must be not null!", $r1);	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r3 = staticinvoke <cn.hutool.core.text.StrSplitter: java.lang.String[] splitToArray(java.lang.CharSequence,char,int,boolean,boolean)>($r2, c0, i1, 0, 0);	return $r3
;block_num 1