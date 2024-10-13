(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2463 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun appendCodePoint/-693552229 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2463 var2463)
(declare-const null-Int Int)
(declare-const var38 var2463) ; Statement: r4 := @this: com.github.jknack.handlebars.internal.antlr.dfa.LexerDFASerializer 
(assert (not (= var38 null-var2463)))
(declare-const var254 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var254 null-Int)))
(define-const var638 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var638 "\u0027")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var638!1 String)
(assert (= var638!1 "\u0027"))
(assert true)
(define-const var2080 String (appendCodePoint/-693552229 var638!1 var254)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>(i0) 
(assert true)
(define-const var778 String (append/672562846 var2080 "\u0027")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2080!1 String)
(assert (= var2080!1 (str.++ var2080 "\u0027")))
(assert true)
(define-const var2981 String (toString/-2075883882 var778)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), appendCodePoint/-693552229=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2463=com.github.jknack.handlebars.internal.antlr.dfa.LexerDFASerializer, var38=r4, var254=i0, var638=$r0, var2080=$r1, var778=$r2, var2981=$r3}
; {com.github.jknack.handlebars.internal.antlr.dfa.LexerDFASerializer=var2463, r4=var38, i0=var254, $r0=var638, $r1=var2080, $r2=var778, $r3=var2981}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.github.jknack.handlebars.internal.antlr.dfa.LexerDFASerializer;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>(i0);	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1