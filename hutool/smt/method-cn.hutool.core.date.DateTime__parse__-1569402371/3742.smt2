(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var548 0)
(declare-sort var527 0)
(declare-sort var2046 0)
(declare-sort var939 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var527-init () (Array Int var527))
(declare-fun var2046_notBlank/-161903167 (String String (Array Int var527)) String)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun parse/-1494170363 (var548 String) var939)
(declare-const null-String String)
(declare-const null-var548 var548)
(declare-const var1547 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1547 null-String)))
(declare-const var18 var548) ; Statement: r2 := @parameter1: java.text.DateFormat 
(assert (not (= var18 null-var548)))
(define-const var3676 (Array Int var527) arr-var527-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var2046_notBlank/-161903167 var1547 "Date String must be not blank !" var3676)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Date String must be not blank !", $r1) 

(declare-const var1547!1 String)
(declare-const var2166 String)
(declare-const var3676!1 (Array Int var527))
(assert true) ; Non Conditional
(define-const var402 String (String_toString/-1426662429 var1547!1)) ; Statement: $r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1753 var939 (parse/-1494170363 var18 var402)) ; Statement: $r4 = virtualinvoke r2.<java.text.DateFormat: java.util.Date parse(java.lang.String)>($r3) 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var527-init=([], java.lang.Object[]), var2046_notBlank/-161903167=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), parse/-1494170363=([java.text.DateFormat, java.lang.String], java.util.Date)}
; {var1547=r0, var548=java.text.DateFormat, var18=r2, var527=java.lang.Object, var3676=$r1, var2046=cn.hutool.core.lang.Assert, var2166="Date String must be not blank !", var402=$r3, var939=java.util.Date, var1753=$r4}
; {r0=var1547, java.text.DateFormat=var548, r2=var18, java.lang.Object=var527, $r1=var3676, cn.hutool.core.lang.Assert=var2046, "Date String must be not blank !"=var2166, $r3=var402, java.util.Date=var939, $r4=var1753}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r2 := @parameter1: java.text.DateFormat;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Date String must be not blank !", $r1);	$r3 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r4 = virtualinvoke r2.<java.text.DateFormat: java.util.Date parse(java.lang.String)>($r3);	return $r4
;block_num 4