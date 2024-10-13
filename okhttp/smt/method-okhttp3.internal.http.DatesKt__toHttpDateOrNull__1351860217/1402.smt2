(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var829 0)
(declare-sort var2698 0)
(declare-sort var3162 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2698_checkNotNullParameter/-2060636419 (var3162 String) void)
(declare-fun cast-from-String-to-var3162 (String) var3162)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-String String)
(declare-const var1560 String) ; Statement: $r0 := @parameter0: java.lang.String 
(assert (not (= var1560 null-String)))
;(assert (var2698_checkNotNullParameter/-2060636419 (cast-from-String-to-var3162 var1560) "<this>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>") 

(declare-const var1560!1 String)
(declare-const var66 String)
(define-const var1533 String (cast-from-String-to-String var1560!1)) ; Statement: $r1 = (java.lang.CharSequence) $r0 
(define-const var1872 Int (String_length/-667254855 var1533)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (= var1872 0))) ; Cond: $i0 != 0 
(define-const var12 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 == 0 goto $r2 = new java.text.ParsePosition 
(assert (not (= (ite var12 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2698_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3162=([java.lang.String], java.lang.Object), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int)}
; {var1560=$r0, var829=null_type, var2698=kotlin.jvm.internal.Intrinsics, var3162=java.lang.Object, var66="<this>", var1533=$r1, var1872=$i0, var12=$z0}
; {$r0=var1560, null_type=var829, kotlin.jvm.internal.Intrinsics=var2698, java.lang.Object=var3162, "<this>"=var66, $r1=var1533, $i0=var1872, $z0=var12}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts $r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>");	$r1 = (java.lang.CharSequence) $r0;	$i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 0;	if $z0 == 0 goto $r2 = new java.text.ParsePosition;	return null
;block_num 4