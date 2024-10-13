(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var564 0)
(declare-sort var112 0)
(declare-sort var178 0)
(declare-sort var963 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var178_charBufferFromThreadLocal/991270886 () (Array Int Int))
(declare-fun var564_codePointAt/-1029561496 (String Int Int) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var963-init () var963)
(declare-fun <init>/875830710 (var963 String) void)
(declare-const null-var564 var564)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var485 var564) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper 
(assert (not (= var485 null-var564)))
(declare-const var3345 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3345 null-String)))
(declare-const var2729 Int) ; Statement: i15 := @parameter1: int 
(assert (not (= var2729 null-Int)))
(assert true)
(define-const var3981 Int (length/-134980193 var3345)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var363 (Array Int Int) var178_charBufferFromThreadLocal/991270886) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.escape.Platform: char[] charBufferFromThreadLocal()>() 
(define-const var1408 Int 0) ; Statement: i16 = 0 
(define-const var3047 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i0 goto i20 = i0 - i17 
(assert (not (>= var2729 var3981))) ; Negate: Cond: i15 >= i0  
(define-const var620 Int (var564_codePointAt/-1029561496 (cast-from-String-to-String var3345) var2729 var3981)) ; Statement: i18 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper: int codePointAt(java.lang.CharSequence,int,int)>(r0, i15, i0) 
 ; Statement: if i18 >= 0 goto r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper: char[] escape(int)>(i18) 
(assert (not (>= var620 0))) ; Negate: Cond: i18 >= 0  
(define-const var250 var963 var963-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var250 "Trailing high surrogate at end of input")) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Trailing high surrogate at end of input") 

(declare-const var250!1 var963)
(declare-const var688 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var178_charBufferFromThreadLocal/991270886=([], char[]), var564_codePointAt/-1029561496=([java.lang.CharSequence, int, int], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var963-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var564=com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper, var485=r1, var3345=r0, var112=null_type, var2729=i15, var3981=i0, var178=com.google.javascript.jscomp.jarjar.com.google.common.escape.Platform, var363=r3, var1408=i16, var3047=i17, var620=i18, var963=java.lang.IllegalArgumentException, var250=$r2, var688="Trailing high surrogate at end of input"}
; {com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper=var564, r1=var485, r0=var3345, null_type=var112, i15=var2729, i0=var3981, com.google.javascript.jscomp.jarjar.com.google.common.escape.Platform=var178, r3=var363, i16=var1408, i17=var3047, i18=var620, java.lang.IllegalArgumentException=var963, $r2=var250, "Trailing high surrogate at end of input"=var688}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper;	r0 := @parameter0: java.lang.String;	i15 := @parameter1: int;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.escape.Platform: char[] charBufferFromThreadLocal()>();	i16 = 0;	i17 = 0;	if i15 >= i0 goto i20 = i0 - i17;	i18 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper: int codePointAt(java.lang.CharSequence,int,int)>(r0, i15, i0);	if i18 >= 0 goto r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper: char[] escape(int)>(i18);	$r2 = new java.lang.IllegalArgumentException;	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Trailing high surrogate at end of input");	throw $r2
;block_num 4