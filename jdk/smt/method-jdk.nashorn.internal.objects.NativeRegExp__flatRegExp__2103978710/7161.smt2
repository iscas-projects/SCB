(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2997 0)
(declare-sort var2996 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2996-init () var2996)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/341708202 (var2996 String String) void)
(declare-const null-String String)
(declare-const var2040 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2040 null-String)))
(define-const var279 String null-String) ; Statement: r3 = null 
(assert true)
(define-const var174 Int (length/-134980193 var2040)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1288 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r6 = new jdk.nashorn.internal.objects.NativeRegExp 
(assert (>= var1288 var174)) ; Cond: i3 >= i0 
(define-const var3023 var2996 var2996-init) ; Statement: $r6 = new jdk.nashorn.internal.objects.NativeRegExp 
 ; Statement: if r3 != null goto $r4 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= var279 null-String))) ; Cond: r3 != null 
(assert true)
(define-const var480 String (toString/-2075883882 var279)) ; Statement: $r4 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/341708202 var3023 var480 "")) ; Statement: specialinvoke $r6.<jdk.nashorn.internal.objects.NativeRegExp: void <init>(java.lang.String,java.lang.String)>($r4, "") 

(declare-const var3023!1 var2996)
(declare-const var480!1 String)
(declare-const var3455 String)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2996-init=([], jdk.nashorn.internal.objects.NativeRegExp), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/341708202=([jdk.nashorn.internal.objects.NativeRegExp, java.lang.String, java.lang.String], void)}
; {var2040=r0, var2997=null_type, var279=r3, var174=i0, var1288=i3, var2996=jdk.nashorn.internal.objects.NativeRegExp, var3023=$r6, var480=$r4, var3455=""}
; {r0=var2040, null_type=var2997, r3=var279, i0=var174, i3=var1288, jdk.nashorn.internal.objects.NativeRegExp=var2996, $r6=var3023, $r4=var480, ""=var3455}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 = null;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i3 = 0;	if i3 >= i0 goto $r6 = new jdk.nashorn.internal.objects.NativeRegExp;	$r6 = new jdk.nashorn.internal.objects.NativeRegExp;	if r3 != null goto $r4 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<jdk.nashorn.internal.objects.NativeRegExp: void <init>(java.lang.String,java.lang.String)>($r4, "");	return $r6
;block_num 5