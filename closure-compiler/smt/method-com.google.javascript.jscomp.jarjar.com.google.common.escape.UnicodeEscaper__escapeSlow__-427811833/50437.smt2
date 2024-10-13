(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3183 0)
(declare-sort var1573 0)
(declare-sort var3077 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3077_charBufferFromThreadLocal/991270886 () (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var3183 var3183)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3586 var3183) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper 
(assert (not (= var3586 null-var3183)))
(declare-const var1075 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1075 null-String)))
(declare-const var3791 Int) ; Statement: i15 := @parameter1: int 
(assert (not (= var3791 null-Int)))
(assert true)
(define-const var3051 Int (length/-134980193 var1075)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2916 (Array Int Int) var3077_charBufferFromThreadLocal/991270886) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.escape.Platform: char[] charBufferFromThreadLocal()>() 
(define-const var3297 Int 0) ; Statement: i16 = 0 
(define-const var594 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i0 goto i20 = i0 - i17 
(assert (>= var3791 var3051)) ; Cond: i15 >= i0 
(define-const var2396 Int (- var3051 var594)) ; Statement: i20 = i0 - i17 
 ; Statement: if i20 <= 0 goto $r5 = new java.lang.String 
(assert (<= var2396 0)) ; Cond: i20 <= 0 
(define-const var1198 String String-init) ; Statement: $r5 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var1198 var2916 0 var3297)) ; Statement: specialinvoke $r5.<java.lang.String: void <init>(char[],int,int)>(r3, 0, i16) 

(declare-const var1198!1 String)
(declare-const var2916!1 (Array Int Int))
(declare-const var1328 Int)
(declare-const var3297!1 Int)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3077_charBufferFromThreadLocal/991270886=([], char[]), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var3183=com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper, var3586=r1, var1075=r0, var1573=null_type, var3791=i15, var3051=i0, var3077=com.google.javascript.jscomp.jarjar.com.google.common.escape.Platform, var2916=r3, var3297=i16, var594=i17, var2396=i20, var1198=$r5, var1328=0}
; {com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper=var3183, r1=var3586, r0=var1075, null_type=var1573, i15=var3791, i0=var3051, com.google.javascript.jscomp.jarjar.com.google.common.escape.Platform=var3077, r3=var2916, i16=var3297, i17=var594, i20=var2396, $r5=var1198, 0=var1328}
;seq <java.lang.String: int length()>;	<java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper;	r0 := @parameter0: java.lang.String;	i15 := @parameter1: int;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.escape.Platform: char[] charBufferFromThreadLocal()>();	i16 = 0;	i17 = 0;	if i15 >= i0 goto i20 = i0 - i17;	i20 = i0 - i17;	if i20 <= 0 goto $r5 = new java.lang.String;	$r5 = new java.lang.String;	specialinvoke $r5.<java.lang.String: void <init>(char[],int,int)>(r3, 0, i16);	return $r5
;block_num 4