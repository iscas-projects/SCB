(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3676 0)
(declare-sort var2433 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3676 var3676)
(declare-const null-String String)
(declare-const var2557 var3676) ; Statement: r4 := @this: com.github.jknack.handlebars.internal.antlr.Lexer 
(assert (not (= var2557 null-var3676)))
(declare-const var3866 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3866 null-String)))
(define-const var2799 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2799)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2799!1 String)
(assert (= var2799!1 ""))
(assert true)
(define-const var1946 (Array Int Int) (toCharArray/415275702 var3866)) ; Statement: r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(define-const var293 Int (getLength-Arr-Int-1 var1946)) ; Statement: i0 = lengthof r2 
(define-const var3695 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3695 var293)) ; Cond: i2 >= i0 
(assert true)
(define-const var2835 String (toString/-2075883882 var2799!1)) ; Statement: $r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3676=com.github.jknack.handlebars.internal.antlr.Lexer, var2557=r4, var3866=r1, var2433=null_type, var2799=$r6, var1946=r2, var293=i0, var3695=i2, var2835=$r3}
; {com.github.jknack.handlebars.internal.antlr.Lexer=var3676, r4=var2557, r1=var3866, null_type=var2433, $r6=var2799, r2=var1946, i0=var293, i2=var3695, $r3=var2835}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.github.jknack.handlebars.internal.antlr.Lexer;	r1 := @parameter0: java.lang.String;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	i0 = lengthof r2;	i2 = 0;	if i2 >= i0 goto $r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3