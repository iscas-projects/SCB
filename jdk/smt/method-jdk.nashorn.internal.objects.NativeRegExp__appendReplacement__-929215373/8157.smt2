(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2784 0)
(declare-sort var1406 0)
(declare-sort var2907 0)
(declare-sort var1872 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2784 var2784)
(declare-const null-var1406 var1406)
(declare-const null-String String)
(declare-const null-__Array__Int__var1872__ (Array Int var1872))
(declare-const var2061 var2784) ; Statement: r10 := @this: jdk.nashorn.internal.objects.NativeRegExp 
(assert (not (= var2061 null-var2784)))
(declare-const var1907 var1406) ; Statement: r3 := @parameter0: jdk.nashorn.internal.runtime.regexp.RegExpMatcher 
(assert (not (= var1907 null-var1406)))
(declare-const var902 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var902 null-String)))
(declare-const var1862 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1862 null-String)))
(declare-const var3313 String) ; Statement: r1 := @parameter3: java.lang.StringBuilder 
(assert (not (= var3313 null-String)))
(define-const var2360 Int 0) ; Statement: i14 = 0 
(define-const var1337 (Array Int var1872) null-__Array__Int__var1872__) ; Statement: r11 = null 
(assert true) ; Non Conditional
(assert true)
(define-const var3261 Int (length/-134980193 var1862)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i14 >= $i0 goto return 
(assert (>= var2360 var3261)) ; Cond: i14 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2784=jdk.nashorn.internal.objects.NativeRegExp, var2061=r10, var1406=jdk.nashorn.internal.runtime.regexp.RegExpMatcher, var1907=r3, var902=r2, var2907=null_type, var1862=r0, var3313=r1, var2360=i14, var1872=java.lang.Object, var1337=r11, var3261=$i0}
; {jdk.nashorn.internal.objects.NativeRegExp=var2784, r10=var2061, jdk.nashorn.internal.runtime.regexp.RegExpMatcher=var1406, r3=var1907, r2=var902, null_type=var2907, r0=var1862, r1=var3313, i14=var2360, java.lang.Object=var1872, r11=var1337, $i0=var3261}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r10 := @this: jdk.nashorn.internal.objects.NativeRegExp;	r3 := @parameter0: jdk.nashorn.internal.runtime.regexp.RegExpMatcher;	r2 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	r1 := @parameter3: java.lang.StringBuilder;	i14 = 0;	r11 = null;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i14 >= $i0 goto return;	return
;block_num 3