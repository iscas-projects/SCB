(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3739 0)
(declare-sort var3286 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3286-init () var3286)
(declare-fun <init>/341708202 (var3286 String String) void)
(declare-const null-String String)
(declare-const var2627 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2627 null-String)))
(define-const var3516 String null-String) ; Statement: r3 = null 
(assert true)
(define-const var985 Int (length/-134980193 var2627)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var725 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r6 = new jdk.nashorn.internal.objects.NativeRegExp 
(assert (>= var725 var985)) ; Cond: i3 >= i0 
(define-const var3855 var3286 var3286-init) ; Statement: $r6 = new jdk.nashorn.internal.objects.NativeRegExp 
 ; Statement: if r3 != null goto $r4 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (not (= var3516 null-String)))) ; Negate: Cond: r3 != null  
(define-const var1917 String var2627) ; Statement: $r4 = r0 
 ; Statement: goto [?= specialinvoke $r6.<jdk.nashorn.internal.objects.NativeRegExp: void <init>(java.lang.String,java.lang.String)>($r4, "")] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/341708202 var3855 var1917 "")) ; Statement: specialinvoke $r6.<jdk.nashorn.internal.objects.NativeRegExp: void <init>(java.lang.String,java.lang.String)>($r4, "") 

(declare-const var3855!1 var3286)
(declare-const var1917!1 String)
(declare-const var1323 String)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3286-init=([], jdk.nashorn.internal.objects.NativeRegExp), <init>/341708202=([jdk.nashorn.internal.objects.NativeRegExp, java.lang.String, java.lang.String], void)}
; {var2627=r0, var3739=null_type, var3516=r3, var985=i0, var725=i3, var3286=jdk.nashorn.internal.objects.NativeRegExp, var3855=$r6, var1917=$r4, var1323=""}
; {r0=var2627, null_type=var3739, r3=var3516, i0=var985, i3=var725, jdk.nashorn.internal.objects.NativeRegExp=var3286, $r6=var3855, $r4=var1917, ""=var1323}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 = null;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i3 = 0;	if i3 >= i0 goto $r6 = new jdk.nashorn.internal.objects.NativeRegExp;	$r6 = new jdk.nashorn.internal.objects.NativeRegExp;	if r3 != null goto $r4 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = r0;	goto [?= specialinvoke $r6.<jdk.nashorn.internal.objects.NativeRegExp: void <init>(java.lang.String,java.lang.String)>($r4, "")];	specialinvoke $r6.<jdk.nashorn.internal.objects.NativeRegExp: void <init>(java.lang.String,java.lang.String)>($r4, "");	return $r6
;block_num 5