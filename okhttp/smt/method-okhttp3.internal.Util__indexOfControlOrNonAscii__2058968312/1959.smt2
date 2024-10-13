(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var341 0)
(declare-sort var3820 0)
(declare-sort var132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3820_checkNotNullParameter/-2060636419 (var132 String) void)
(declare-fun cast-from-String-to-var132 (String) var132)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var1418 String) ; Statement: $r0 := @parameter0: java.lang.String 
(assert (not (= var1418 null-String)))
;(assert (var3820_checkNotNullParameter/-2060636419 (cast-from-String-to-var132 var1418) "<this>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>") 

(declare-const var1418!1 String)
(declare-const var1235 String)
(define-const var835 Int 0) ; Statement: i4 = 0 
(assert true)
(define-const var1915 Int (length/-134980193 var1418!1)) ; Statement: i0 = virtualinvoke $r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $i8 = (int) -1 
(assert (>= var835 var1915)) ; Cond: i4 >= i0 
(define-const var1678 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: return $i8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3820_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var132=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var1418=$r0, var341=null_type, var3820=kotlin.jvm.internal.Intrinsics, var132=java.lang.Object, var1235="<this>", var835=i4, var1915=i0, var1678=$i8}
; {$r0=var1418, null_type=var341, kotlin.jvm.internal.Intrinsics=var3820, java.lang.Object=var132, "<this>"=var1235, i4=var835, i0=var1915, $i8=var1678}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>");	i4 = 0;	i0 = virtualinvoke $r0.<java.lang.String: int length()>();	if i4 >= i0 goto $i8 = (int) -1;	$i8 = (int) -1;	return $i8
;block_num 3