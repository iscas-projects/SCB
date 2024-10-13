(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3584 0)
(declare-sort var677 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stateNumber/729997761 (var677) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun isAcceptState/729997761 (var677) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun requiresFullContext/729997761 (var677) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3584 var3584)
(declare-const null-var677 var677)
(declare-const var1064 var3584) ; Statement: r20 := @this: com.github.jknack.handlebars.internal.antlr.dfa.DFASerializer 
(assert (not (= var1064 null-var3584)))
(declare-const var2561 var677) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var2561 null-var677)))
(define-const var623 Int (stateNumber/729997761 var2561)) ; Statement: i0 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: int stateNumber> 
(define-const var1120 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1120)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1120!1 String)
(assert (= var1120!1 ""))
(define-const var3097 Bool (isAcceptState/729997761 var2561)) ; Statement: $z0 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z0 == 0 goto $r21 = "" 
(assert (not (= (ite var3097 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var392 String ":") ; Statement: $r21 = ":" 
 ; Statement: goto [?= $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1666 String (append/672562846 var1120!1 var392)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1120!2 String)
(assert (= var1120!2 (str.++ var1120!1 var392)))
(assert true)
(define-const var3723 String (append/672562846 var1666 "s")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("s") 
(declare-const var1666!1 String)
(assert (= var1666!1 (str.++ var1666 "s")))
(assert true)
(define-const var1864 String (append/-1001720160 var3723 var623)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3723!1 String)
(assert (str.prefixof var3723 var3723!1))
(define-const var3886 Bool (requiresFullContext/729997761 var2561)) ; Statement: $z1 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean requiresFullContext> 
 ; Statement: if $z1 == 0 goto $r22 = "" 
(assert (= (ite var3886 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2385 String "") ; Statement: $r22 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2439 String (append/672562846 var1864 var2385)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1864!1 String)
(assert (= var1864!1 (str.++ var1864 var2385)))
(assert true)
(define-const var986 String (toString/-2075883882 var2439)) ; Statement: $r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3756 Bool (isAcceptState/729997761 var2561)) ; Statement: $z2 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z2 == 0 goto return $r19 
(assert (= (ite var3756 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {stateNumber/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), isAcceptState/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), requiresFullContext/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3584=com.github.jknack.handlebars.internal.antlr.dfa.DFASerializer, var1064=r20, var677=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var2561=r0, var623=i0, var1120=$r1, var3097=$z0, var392=$r21, var1666=$r2, var3723=$r3, var1864=$r4, var3886=$z1, var2385=$r22, var2439=$r5, var986=$r19, var3756=$z2}
; {com.github.jknack.handlebars.internal.antlr.dfa.DFASerializer=var3584, r20=var1064, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var677, r0=var2561, i0=var623, $r1=var1120, $z0=var3097, $r21=var392, $r2=var1666, $r3=var3723, $r4=var1864, $z1=var3886, $r22=var2385, $r5=var2439, $r19=var986, $z2=var3756}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r20 := @this: com.github.jknack.handlebars.internal.antlr.dfa.DFASerializer;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: int stateNumber>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$z0 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState>;	if $z0 == 0 goto $r21 = "";	$r21 = ":";	goto [?= $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)];	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("s");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$z1 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean requiresFullContext>;	if $z1 == 0 goto $r22 = "";	$r22 = "";	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState>;	if $z2 == 0 goto return $r19;	return $r19
;block_num 6