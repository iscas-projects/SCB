(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var745 0)
(declare-sort var1142 0)
(declare-sort var2050 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun stateNumber/729997761 (var745) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun configs/729997761 (var745) var1142)
(declare-fun append/-1031950772 (String var2050) String)
(declare-fun cast-from-var1142-to-var2050 (var1142) var2050)
(declare-fun isAcceptState/729997761 (var745) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var745 var745)
(declare-const var2884 var745) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var2884 null-var745)))
(define-const var3169 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3169)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3169!1 String)
(assert (= var3169!1 ""))
(define-const var861 Int (stateNumber/729997761 var2884)) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: int stateNumber> 
(assert true)
(define-const var193 String (append/-1001720160 var3169!1 var861)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3169!2 String)
(assert (str.prefixof var3169!1 var3169!2))
(assert true)
(define-const var2668 String (append/672562846 var193 ":")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var193!1 String)
(assert (= var193!1 (str.++ var193 ":")))
(define-const var276 var1142 (configs/729997761 var2884)) ; Statement: $r3 = r1.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet configs> 
(assert true)
;(assert (append/-1031950772 var2668 (cast-from-var1142-to-var2050 var276))) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var2668!1 String)
(assert (str.prefixof var2668 var2668!1))
(define-const var3373 Bool (isAcceptState/729997761 var2884)) ; Statement: $z0 = r1.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z0 == 0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3373 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3904 String (toString/-2075883882 var3169!2)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), stateNumber/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), configs/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1142-to-var2050=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.lang.Object), isAcceptState/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var745=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var2884=r1, var3169=$r0, var861=$i0, var193=$r2, var2668=$r4, var1142=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var276=$r3, var2050=java.lang.Object, var3373=$z0, var3904=$r8}
; {com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var745, r1=var2884, $r0=var3169, $i0=var861, $r2=var193, $r4=var2668, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var1142, $r3=var276, java.lang.Object=var2050, $z0=var3373, $r8=var3904}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: int stateNumber>;	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r3 = r1.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet configs>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$z0 = r1.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState>;	if $z0 == 0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2