(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var503 var503)
(declare-const null-String String)
(declare-const var3891 var503) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any 
(assert (not (= var3891 null-var503)))
(declare-const var2997 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var2997 null-String)))
(declare-const var2165 String) ; Statement: r2 := @parameter1: java.lang.CharSequence 
(assert (not (= var2165 null-String)))
(define-const var2477 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var2862 Int (String_length/-667254855 var2997)) ; Statement: $i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var973 Int (String_length/-667254855 var2165)) ; Statement: $i0 = interfaceinvoke r2.<java.lang.CharSequence: int length()>() 
(define-const var517 Int (* var2862 var973)) ; Statement: $i2 = $i1 * $i0 
(assert true)
;(assert (<init>/543593434 var2477 var517)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var2477!1 String)
(declare-const var517!1 Int)
(define-const var2606 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var245 Int (String_length/-667254855 var2997)) ; Statement: $i3 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
 ; Statement: if i4 >= $i3 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2606 var245)) ; Cond: i4 >= $i3 
(assert true)
(define-const var2152 String (toString/-2075883882 var2477!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), String_length/-667254855=([java.lang.CharSequence], int), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var503=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any, var3891=r4, var2997=r1, var2165=r2, var2477=$r0, var2862=$i1, var973=$i0, var517=$i2, var2606=i4, var245=$i3, var2152=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any=var503, r4=var3891, r1=var2997, r2=var2165, $r0=var2477, $i1=var2862, $i0=var973, $i2=var517, i4=var2606, $i3=var245, $r3=var2152}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 3,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any;	r1 := @parameter0: java.lang.CharSequence;	r2 := @parameter1: java.lang.CharSequence;	$r0 = new java.lang.StringBuilder;	$i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$i0 = interfaceinvoke r2.<java.lang.CharSequence: int length()>();	$i2 = $i1 * $i0;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2);	i4 = 0;	$i3 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	if i4 >= $i3 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3