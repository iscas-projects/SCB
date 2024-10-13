(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3024 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun finishCollapseFrom/-696491716 (var3024 String Int Int Int String Bool) String)
(declare-const null-var3024 var3024)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1718 var3024) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher 
(assert (not (= var1718 null-var3024)))
(declare-const var848 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var848 null-String)))
(declare-const var2602 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var2602 null-Int)))
(define-const var628 Int (String_length/-667254855 var848)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var2678 Int 0) ; Statement: i8 = 0 
(define-const var313 Int (- var628 1)) ; Statement: i9 = i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i0 goto (branch) 
(assert (>= var2678 var628)) ; Cond: i8 >= i0 
 ; Statement: if i9 <= i8 goto (branch) 
(assert (<= var313 var2678)) ; Cond: i9 <= i8 
 ; Statement: if i8 != 0 goto $i4 = i9 + 1 
(assert (not (= var2678 0))) ; Cond: i8 != 0 
(define-const var2361 Int (+ var313 1)) ; Statement: $i4 = i9 + 1 
(define-const var3268 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(define-const var1862 Int (+ var313 1)) ; Statement: $i2 = i9 + 1 
(define-const var92 Int (- var1862 var2678)) ; Statement: $i3 = $i2 - i8 
(assert true)
;(assert (<init>/543593434 var3268 var92)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>($i3) 

(declare-const var3268!1 String)
(declare-const var92!1 Int)
(assert true)
(define-const var1708 String (finishCollapseFrom/-696491716 var1718 var848 var2678 var2361 var2602 var3268!1 (ite (= 1 0) true false))) ; Statement: $r3 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String finishCollapseFrom(java.lang.CharSequence,int,int,char,java.lang.StringBuilder,boolean)>(r0, i8, $i4, c1, $r4, 0) 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), finishCollapseFrom/-696491716=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence, int, int, char, java.lang.StringBuilder, boolean], java.lang.String)}
; {var3024=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var1718=r1, var848=r0, var2602=c1, var628=i0, var2678=i8, var313=i9, var2361=$i4, var3268=$r4, var1862=$i2, var92=$i3, var1708=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var3024, r1=var1718, r0=var848, c1=var2602, i0=var628, i8=var2678, i9=var313, $i4=var2361, $r4=var3268, $i2=var1862, $i3=var92, $r3=var1708}
;seq <java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher;	r0 := @parameter0: java.lang.CharSequence;	c1 := @parameter1: char;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i8 = 0;	i9 = i0 - 1;	if i8 >= i0 goto (branch);	if i9 <= i8 goto (branch);	if i8 != 0 goto $i4 = i9 + 1;	$i4 = i9 + 1;	$r4 = new java.lang.StringBuilder;	$i2 = i9 + 1;	$i3 = $i2 - i8;	specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>($i3);	$r3 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String finishCollapseFrom(java.lang.CharSequence,int,int,char,java.lang.StringBuilder,boolean)>(r0, i8, $i4, c1, $r4, 0);	return $r3
;block_num 6