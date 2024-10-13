(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3714 0)
(declare-sort var987 0)
(declare-sort var1612 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var987_checkNotNullParameter/-2060636419 (var1612 String) void)
(declare-fun cast-from-String-to-var1612 (String) var1612)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-String String)
(declare-const var3101 String) ; Statement: $r0 := @parameter0: java.lang.String 
(assert (not (= var3101 null-String)))
;(assert (var987_checkNotNullParameter/-2060636419 (cast-from-String-to-var1612 var3101) "<this>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>") 

(declare-const var3101!1 String)
(declare-const var1375 String)
(define-const var2866 String (cast-from-String-to-String var3101!1)) ; Statement: $r1 = (java.lang.CharSequence) $r0 
(define-const var2093 Int (String_length/-667254855 var2866)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (not (= var2093 0)))) ; Negate: Cond: $i0 != 0  
(define-const var484 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 == 0 goto $r2 = new java.text.ParsePosition 
(assert (not (= (ite var484 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var987_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1612=([java.lang.String], java.lang.Object), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int)}
; {var3101=$r0, var3714=null_type, var987=kotlin.jvm.internal.Intrinsics, var1612=java.lang.Object, var1375="<this>", var2866=$r1, var2093=$i0, var484=$z0}
; {$r0=var3101, null_type=var3714, kotlin.jvm.internal.Intrinsics=var987, java.lang.Object=var1612, "<this>"=var1375, $r1=var2866, $i0=var2093, $z0=var484}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts $r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>");	$r1 = (java.lang.CharSequence) $r0;	$i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 == 0 goto $r2 = new java.text.ParsePosition;	return null
;block_num 4