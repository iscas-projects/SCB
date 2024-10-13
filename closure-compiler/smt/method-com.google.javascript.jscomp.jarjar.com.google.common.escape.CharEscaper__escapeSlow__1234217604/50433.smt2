(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2131 0)
(declare-sort var1988 0)
(declare-sort var1394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1394_charBufferFromThreadLocal/991270886 () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var2131 var2131)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2036 var2131) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.CharEscaper 
(assert (not (= var2036 null-var2131)))
(declare-const var275 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var275 null-String)))
(declare-const var2406 Int) ; Statement: i7 := @parameter1: int 
(assert (not (= var2406 null-Int)))
(assert true)
(define-const var429 Int (length/-134980193 var275)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2276 (Array Int Int) var1394_charBufferFromThreadLocal/991270886) ; Statement: r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.escape.Platform: char[] charBufferFromThreadLocal()>() 
(define-const var180 Int (getLength-Arr-Int-1 var2276)) ; Statement: i8 = lengthof r2 
(define-const var317 Int 0) ; Statement: i9 = 0 
(define-const var2385 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto i12 = i0 - i10 
(assert (>= var2406 var429)) ; Cond: i7 >= i0 
(define-const var497 Int (- var429 var2385)) ; Statement: i12 = i0 - i10 
 ; Statement: if i12 <= 0 goto $r4 = new java.lang.String 
(assert (<= var497 0)) ; Cond: i12 <= 0 
(define-const var3930 String String-init) ; Statement: $r4 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var3930 var2276 0 var317)) ; Statement: specialinvoke $r4.<java.lang.String: void <init>(char[],int,int)>(r2, 0, i9) 

(declare-const var3930!1 String)
(declare-const var2276!1 (Array Int Int))
(declare-const var148 Int)
(declare-const var317!1 Int)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1394_charBufferFromThreadLocal/991270886=([], char[]), getLength-Arr-Int-1=([char[]], int), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var2131=com.google.javascript.jscomp.jarjar.com.google.common.escape.CharEscaper, var2036=r1, var275=r0, var1988=null_type, var2406=i7, var429=i0, var1394=com.google.javascript.jscomp.jarjar.com.google.common.escape.Platform, var2276=r2, var180=i8, var317=i9, var2385=i10, var497=i12, var3930=$r4, var148=0}
; {com.google.javascript.jscomp.jarjar.com.google.common.escape.CharEscaper=var2131, r1=var2036, r0=var275, null_type=var1988, i7=var2406, i0=var429, com.google.javascript.jscomp.jarjar.com.google.common.escape.Platform=var1394, r2=var2276, i8=var180, i9=var317, i10=var2385, i12=var497, $r4=var3930, 0=var148}
;seq <java.lang.String: int length()>;	<java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.CharEscaper;	r0 := @parameter0: java.lang.String;	i7 := @parameter1: int;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.escape.Platform: char[] charBufferFromThreadLocal()>();	i8 = lengthof r2;	i9 = 0;	i10 = 0;	if i7 >= i0 goto i12 = i0 - i10;	i12 = i0 - i10;	if i12 <= 0 goto $r4 = new java.lang.String;	$r4 = new java.lang.String;	specialinvoke $r4.<java.lang.String: void <init>(char[],int,int)>(r2, 0, i9);	return $r4
;block_num 4