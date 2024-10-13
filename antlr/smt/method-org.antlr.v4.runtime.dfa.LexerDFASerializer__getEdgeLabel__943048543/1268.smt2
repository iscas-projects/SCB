(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3978 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun appendCodePoint/-693552229 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3978 var3978)
(declare-const null-Int Int)
(declare-const var1887 var3978) ; Statement: r4 := @this: org.antlr.v4.runtime.dfa.LexerDFASerializer 
(assert (not (= var1887 null-var3978)))
(declare-const var1230 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1230 null-Int)))
(define-const var1402 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1402 "\u0027")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var1402!1 String)
(assert (= var1402!1 "\u0027"))
(assert true)
(define-const var1060 String (appendCodePoint/-693552229 var1402!1 var1230)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>(i0) 
(assert true)
(define-const var2796 String (append/672562846 var1060 "\u0027")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1060!1 String)
(assert (= var1060!1 (str.++ var1060 "\u0027")))
(assert true)
(define-const var3709 String (toString/-2075883882 var2796)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), appendCodePoint/-693552229=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3978=org.antlr.v4.runtime.dfa.LexerDFASerializer, var1887=r4, var1230=i0, var1402=$r0, var1060=$r1, var2796=$r2, var3709=$r3}
; {org.antlr.v4.runtime.dfa.LexerDFASerializer=var3978, r4=var1887, i0=var1230, $r0=var1402, $r1=var1060, $r2=var2796, $r3=var3709}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.antlr.v4.runtime.dfa.LexerDFASerializer;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder appendCodePoint(int)>(i0);	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1