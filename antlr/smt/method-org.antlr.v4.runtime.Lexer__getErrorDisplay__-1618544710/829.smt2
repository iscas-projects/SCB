(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3903 0)
(declare-sort var3207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3903 var3903)
(declare-const null-String String)
(declare-const var749 var3903) ; Statement: r4 := @this: org.antlr.v4.runtime.Lexer 
(assert (not (= var749 null-var3903)))
(declare-const var2735 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2735 null-String)))
(define-const var370 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var370)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var370!1 String)
(assert (= var370!1 ""))
(assert true)
(define-const var755 (Array Int Int) (toCharArray/415275702 var2735)) ; Statement: r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(define-const var1239 Int (getLength-Arr-Int-1 var755)) ; Statement: i0 = lengthof r2 
(define-const var1951 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1951 var1239)) ; Cond: i2 >= i0 
(assert true)
(define-const var2690 String (toString/-2075883882 var370!1)) ; Statement: $r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3903=org.antlr.v4.runtime.Lexer, var749=r4, var2735=r1, var3207=null_type, var370=$r6, var755=r2, var1239=i0, var1951=i2, var2690=$r3}
; {org.antlr.v4.runtime.Lexer=var3903, r4=var749, r1=var2735, null_type=var3207, $r6=var370, r2=var755, i0=var1239, i2=var1951, $r3=var2690}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.antlr.v4.runtime.Lexer;	r1 := @parameter0: java.lang.String;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	i0 = lengthof r2;	i2 = 0;	if i2 >= i0 goto $r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3