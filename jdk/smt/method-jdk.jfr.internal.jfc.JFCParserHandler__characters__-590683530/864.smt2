(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3322 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentCharacters/-996869017 (var3322) String)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(declare-const null-var3322 var3322)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3703 var3322) ; Statement: r0 := @this: jdk.jfr.internal.jfc.JFCParserHandler 
(assert (not (= var3703 null-var3322)))
(declare-const var1571 (Array Int Int)) ; Statement: r2 := @parameter0: char[] 
(assert (not (= var1571 null-__Array__Int__Int__)))
(declare-const var3878 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3878 null-Int)))
(declare-const var81 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var81 null-Int)))
(define-const var1144 String (currentCharacters/-996869017 var3703)) ; Statement: $r1 = r0.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.StringBuilder currentCharacters> 
 ; Statement: if $r1 != null goto $r3 = r0.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.StringBuilder currentCharacters> 
(assert (not (= var1144 null-String))) ; Cond: $r1 != null 
(define-const var1773 String (currentCharacters/-996869017 var3703)) ; Statement: $r3 = r0.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.StringBuilder currentCharacters> 
(assert true)
;(assert (append/-1748486345 var1773 var1571 var3878 var81)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r2, i0, i1) 
(declare-const var1773!1 String)
(assert (str.prefixof var1773 var1773!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {currentCharacters/-996869017=([jdk.jfr.internal.jfc.JFCParserHandler], java.lang.StringBuilder), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder)}
; {var3322=jdk.jfr.internal.jfc.JFCParserHandler, var3703=r0, var1571=r2, var3878=i0, var81=i1, var1144=$r1, var1773=$r3}
; {jdk.jfr.internal.jfc.JFCParserHandler=var3322, r0=var3703, r2=var1571, i0=var3878, i1=var81, $r1=var1144, $r3=var1773}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1}
;stmts r0 := @this: jdk.jfr.internal.jfc.JFCParserHandler;	r2 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r1 = r0.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.StringBuilder currentCharacters>;	if $r1 != null goto $r3 = r0.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.StringBuilder currentCharacters>;	$r3 = r0.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.StringBuilder currentCharacters>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r2, i0, i1);	return
;block_num 2