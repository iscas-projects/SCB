(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2735 0)
(declare-sort var3972 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stateNumber/729997761 (var3972) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun isAcceptState/729997761 (var3972) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun requiresFullContext/729997761 (var3972) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2735 var2735)
(declare-const null-var3972 var3972)
(declare-const var1107 var2735) ; Statement: r20 := @this: com.github.jknack.handlebars.internal.antlr.dfa.DFASerializer 
(assert (not (= var1107 null-var2735)))
(declare-const var1622 var3972) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var1622 null-var3972)))
(define-const var3932 Int (stateNumber/729997761 var1622)) ; Statement: i0 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: int stateNumber> 
(define-const var1564 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1564)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1564!1 String)
(assert (= var1564!1 ""))
(define-const var264 Bool (isAcceptState/729997761 var1622)) ; Statement: $z0 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z0 == 0 goto $r21 = "" 
(assert (= (ite var264 1 0) 0)) ; Cond: $z0 == 0 
(define-const var269 String "") ; Statement: $r21 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var492 String (append/672562846 var1564!1 var269)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1564!2 String)
(assert (= var1564!2 (str.++ var1564!1 var269)))
(assert true)
(define-const var3320 String (append/672562846 var492 "s")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("s") 
(declare-const var492!1 String)
(assert (= var492!1 (str.++ var492 "s")))
(assert true)
(define-const var3784 String (append/-1001720160 var3320 var3932)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3320!1 String)
(assert (str.prefixof var3320 var3320!1))
(define-const var2361 Bool (requiresFullContext/729997761 var1622)) ; Statement: $z1 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean requiresFullContext> 
 ; Statement: if $z1 == 0 goto $r22 = "" 
(assert (= (ite var2361 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3865 String "") ; Statement: $r22 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var35 String (append/672562846 var3784 var3865)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3784!1 String)
(assert (= var3784!1 (str.++ var3784 var3865)))
(assert true)
(define-const var3945 String (toString/-2075883882 var35)) ; Statement: $r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1016 Bool (isAcceptState/729997761 var1622)) ; Statement: $z2 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z2 == 0 goto return $r19 
(assert (= (ite var1016 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {stateNumber/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), isAcceptState/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), requiresFullContext/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2735=com.github.jknack.handlebars.internal.antlr.dfa.DFASerializer, var1107=r20, var3972=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var1622=r0, var3932=i0, var1564=$r1, var264=$z0, var269=$r21, var492=$r2, var3320=$r3, var3784=$r4, var2361=$z1, var3865=$r22, var35=$r5, var3945=$r19, var1016=$z2}
; {com.github.jknack.handlebars.internal.antlr.dfa.DFASerializer=var2735, r20=var1107, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var3972, r0=var1622, i0=var3932, $r1=var1564, $z0=var264, $r21=var269, $r2=var492, $r3=var3320, $r4=var3784, $z1=var2361, $r22=var3865, $r5=var35, $r19=var3945, $z2=var1016}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r20 := @this: com.github.jknack.handlebars.internal.antlr.dfa.DFASerializer;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: int stateNumber>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$z0 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState>;	if $z0 == 0 goto $r21 = "";	$r21 = "";	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("s");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$z1 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean requiresFullContext>;	if $z1 == 0 goto $r22 = "";	$r22 = "";	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState>;	if $z2 == 0 goto return $r19;	return $r19
;block_num 6