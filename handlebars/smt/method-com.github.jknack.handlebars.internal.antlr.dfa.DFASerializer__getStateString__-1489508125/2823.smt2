(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var860 0)
(declare-sort var2256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stateNumber/729997761 (var2256) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun isAcceptState/729997761 (var2256) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun requiresFullContext/729997761 (var2256) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var860 var860)
(declare-const null-var2256 var2256)
(declare-const var431 var860) ; Statement: r20 := @this: com.github.jknack.handlebars.internal.antlr.dfa.DFASerializer 
(assert (not (= var431 null-var860)))
(declare-const var3432 var2256) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var3432 null-var2256)))
(define-const var1594 Int (stateNumber/729997761 var3432)) ; Statement: i0 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: int stateNumber> 
(define-const var2573 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2573)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2573!1 String)
(assert (= var2573!1 ""))
(define-const var316 Bool (isAcceptState/729997761 var3432)) ; Statement: $z0 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z0 == 0 goto $r21 = "" 
(assert (not (= (ite var316 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2195 String ":") ; Statement: $r21 = ":" 
 ; Statement: goto [?= $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2498 String (append/672562846 var2573!1 var2195)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2573!2 String)
(assert (= var2573!2 (str.++ var2573!1 var2195)))
(assert true)
(define-const var272 String (append/672562846 var2498 "s")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("s") 
(declare-const var2498!1 String)
(assert (= var2498!1 (str.++ var2498 "s")))
(assert true)
(define-const var1531 String (append/-1001720160 var272 var1594)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var272!1 String)
(assert (str.prefixof var272 var272!1))
(define-const var2827 Bool (requiresFullContext/729997761 var3432)) ; Statement: $z1 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean requiresFullContext> 
 ; Statement: if $z1 == 0 goto $r22 = "" 
(assert (not (= (ite var2827 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3855 String "^") ; Statement: $r22 = "^" 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1756 String (append/672562846 var1531 var3855)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1531!1 String)
(assert (= var1531!1 (str.++ var1531 var3855)))
(assert true)
(define-const var2777 String (toString/-2075883882 var1756)) ; Statement: $r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var598 Bool (isAcceptState/729997761 var3432)) ; Statement: $z2 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z2 == 0 goto return $r19 
(assert (= (ite var598 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {stateNumber/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), isAcceptState/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), requiresFullContext/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var860=com.github.jknack.handlebars.internal.antlr.dfa.DFASerializer, var431=r20, var2256=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var3432=r0, var1594=i0, var2573=$r1, var316=$z0, var2195=$r21, var2498=$r2, var272=$r3, var1531=$r4, var2827=$z1, var3855=$r22, var1756=$r5, var2777=$r19, var598=$z2}
; {com.github.jknack.handlebars.internal.antlr.dfa.DFASerializer=var860, r20=var431, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var2256, r0=var3432, i0=var1594, $r1=var2573, $z0=var316, $r21=var2195, $r2=var2498, $r3=var272, $r4=var1531, $z1=var2827, $r22=var3855, $r5=var1756, $r19=var2777, $z2=var598}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r20 := @this: com.github.jknack.handlebars.internal.antlr.dfa.DFASerializer;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: int stateNumber>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$z0 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState>;	if $z0 == 0 goto $r21 = "";	$r21 = ":";	goto [?= $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)];	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("s");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$z1 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean requiresFullContext>;	if $z1 == 0 goto $r22 = "";	$r22 = "^";	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState>;	if $z2 == 0 goto return $r19;	return $r19
;block_num 6