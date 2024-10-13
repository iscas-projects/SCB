(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3959 0)
(declare-sort var2015 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun var3959_str/735943807 (String) String)
(declare-fun var2015_splitToArray/1282541281 (String String Int Bool Bool) (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var3508 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3508 null-String)))
(declare-const var3198 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var3198 null-String)))
 ; Statement: if r0 != null goto $r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (not (= var3508 null-String))) ; Cond: r0 != null 
(define-const var3678 String (String_toString/-1426662429 var3508)) ; Statement: $r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(define-const var268 String (var3959_str/735943807 var3198)) ; Statement: $r2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String str(java.lang.CharSequence)>(r1) 
(define-const var127 (Array Int String) (var2015_splitToArray/1282541281 (cast-from-String-to-String var3678) var268 0 (ite (= 1 0) true false) (ite (= 1 0) true false))) ; Statement: $r4 = staticinvoke <cn.hutool.core.text.StrSplitter: java.lang.String[] splitToArray(java.lang.CharSequence,java.lang.String,int,boolean,boolean)>($r3, $r2, 0, 0, 0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), var3959_str/735943807=([java.lang.CharSequence], java.lang.String), var2015_splitToArray/1282541281=([java.lang.CharSequence, java.lang.String, int, boolean, boolean], java.lang.String[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var3508=r0, var3198=r1, var3678=$r3, var3959=cn.hutool.core.text.CharSequenceUtil, var268=$r2, var2015=cn.hutool.core.text.StrSplitter, var127=$r4}
; {r0=var3508, r1=var3198, $r3=var3678, cn.hutool.core.text.CharSequenceUtil=var3959, $r2=var268, cn.hutool.core.text.StrSplitter=var2015, $r4=var127}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	if r0 != null goto $r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String str(java.lang.CharSequence)>(r1);	$r4 = staticinvoke <cn.hutool.core.text.StrSplitter: java.lang.String[] splitToArray(java.lang.CharSequence,java.lang.String,int,boolean,boolean)>($r3, $r2, 0, 0, 0);	return $r4
;block_num 2