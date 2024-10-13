(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var541 0)
(declare-sort var1408 0)
(declare-sort var449 0)
(declare-sort var3573 0)
(declare-sort var3419 0)
(declare-sort var446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var449_checkNotNullParameter/-2060636419 (var3573 String) void)
(declare-fun cast-from-String-to-var3573 (String) var3573)
(declare-fun var3419-init () var3419)
(declare-fun <init>/-325640736 (var3419) void)
(declare-fun cast-from-var3419-to-var446 (var3419) var446)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var541 var541)
(declare-const null-String String)
(declare-const var2450 var541) ; Statement: r8 := @this: okhttp3.HttpUrl$Companion 
(assert (not (= var2450 null-var541)))
(declare-const var1758 String) ; Statement: $r0 := @parameter0: java.lang.String 
(assert (not (= var1758 null-String)))
;(assert (var449_checkNotNullParameter/-2060636419 (cast-from-String-to-var3573 var1758) "<this>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>") 

(declare-const var1758!1 String)
(declare-const var1885 String)
(define-const var2720 var3419 var3419-init) ; Statement: $r9 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2720)) ; Statement: specialinvoke $r9.<java.util.ArrayList: void <init>()>() 

(declare-const var2720!1 var3419)
(define-const var1693 var446 (cast-from-var3419-to-var446 var2720!1)) ; Statement: r2 = (java.util.List) $r9 
(define-const var2183 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var820 Int (length/-134980193 var1758!1)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.String: int length()>() 
 ; Statement: if i3 > $i0 goto return r2 
(assert (> var2183 var820)) ; Cond: i3 > $i0 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var449_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3573=([java.lang.String], java.lang.Object), var3419-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var3419-to-var446=([java.util.ArrayList], java.util.List), length/-134980193=([java.lang.String], int)}
; {var541=okhttp3.HttpUrl$Companion, var2450=r8, var1758=$r0, var1408=null_type, var449=kotlin.jvm.internal.Intrinsics, var3573=java.lang.Object, var1885="<this>", var3419=java.util.ArrayList, var2720=$r9, var446=java.util.List, var1693=r2, var2183=i3, var820=$i0}
; {okhttp3.HttpUrl$Companion=var541, r8=var2450, $r0=var1758, null_type=var1408, kotlin.jvm.internal.Intrinsics=var449, java.lang.Object=var3573, "<this>"=var1885, java.util.ArrayList=var3419, $r9=var2720, java.util.List=var446, r2=var1693, i3=var2183, $i0=var820}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r8 := @this: okhttp3.HttpUrl$Companion;	$r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>");	$r9 = new java.util.ArrayList;	specialinvoke $r9.<java.util.ArrayList: void <init>()>();	r2 = (java.util.List) $r9;	i3 = 0;	$i0 = virtualinvoke $r0.<java.lang.String: int length()>();	if i3 > $i0 goto return r2;	return r2
;block_num 3