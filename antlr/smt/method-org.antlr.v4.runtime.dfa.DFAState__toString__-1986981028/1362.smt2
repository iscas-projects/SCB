(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var227 0)
(declare-sort var70 0)
(declare-sort var1489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun stateNumber/-2105354820 (var227) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun configs/-2105354820 (var227) var70)
(declare-fun append/-1031950772 (String var1489) String)
(declare-fun cast-from-var70-to-var1489 (var70) var1489)
(declare-fun isAcceptState/-2105354820 (var227) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var227 var227)
(declare-const var838 var227) ; Statement: r1 := @this: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var838 null-var227)))
(define-const var1163 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1163)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1163!1 String)
(assert (= var1163!1 ""))
(define-const var3534 Int (stateNumber/-2105354820 var838)) ; Statement: $i0 = r1.<org.antlr.v4.runtime.dfa.DFAState: int stateNumber> 
(assert true)
(define-const var4 String (append/-1001720160 var1163!1 var3534)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1163!2 String)
(assert (str.prefixof var1163!1 var1163!2))
(assert true)
(define-const var3695 String (append/672562846 var4 ":")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var4!1 String)
(assert (= var4!1 (str.++ var4 ":")))
(define-const var3008 var70 (configs/-2105354820 var838)) ; Statement: $r3 = r1.<org.antlr.v4.runtime.dfa.DFAState: org.antlr.v4.runtime.atn.ATNConfigSet configs> 
(assert true)
;(assert (append/-1031950772 var3695 (cast-from-var70-to-var1489 var3008))) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var3695!1 String)
(assert (str.prefixof var3695 var3695!1))
(define-const var1587 Bool (isAcceptState/-2105354820 var838)) ; Statement: $z0 = r1.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z0 == 0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1587 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var333 String (toString/-2075883882 var1163!2)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), stateNumber/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), configs/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], org.antlr.v4.runtime.atn.ATNConfigSet), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var70-to-var1489=([org.antlr.v4.runtime.atn.ATNConfigSet], java.lang.Object), isAcceptState/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var227=org.antlr.v4.runtime.dfa.DFAState, var838=r1, var1163=$r0, var3534=$i0, var4=$r2, var3695=$r4, var70=org.antlr.v4.runtime.atn.ATNConfigSet, var3008=$r3, var1489=java.lang.Object, var1587=$z0, var333=$r8}
; {org.antlr.v4.runtime.dfa.DFAState=var227, r1=var838, $r0=var1163, $i0=var3534, $r2=var4, $r4=var3695, org.antlr.v4.runtime.atn.ATNConfigSet=var70, $r3=var3008, java.lang.Object=var1489, $z0=var1587, $r8=var333}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.dfa.DFAState;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = r1.<org.antlr.v4.runtime.dfa.DFAState: int stateNumber>;	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r3 = r1.<org.antlr.v4.runtime.dfa.DFAState: org.antlr.v4.runtime.atn.ATNConfigSet configs>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$z0 = r1.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState>;	if $z0 == 0 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2