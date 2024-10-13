(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1515 0)
(declare-sort var1123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stateNumber/729997761 (var1123) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun isAcceptState/729997761 (var1123) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun requiresFullContext/729997761 (var1123) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1515 var1515)
(declare-const null-var1123 var1123)
(declare-const var3871 var1515) ; Statement: r20 := @this: com.github.jknack.handlebars.internal.antlr.dfa.DFASerializer 
(assert (not (= var3871 null-var1515)))
(declare-const var601 var1123) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var601 null-var1123)))
(define-const var1818 Int (stateNumber/729997761 var601)) ; Statement: i0 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: int stateNumber> 
(define-const var1706 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1706)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1706!1 String)
(assert (= var1706!1 ""))
(define-const var2881 Bool (isAcceptState/729997761 var601)) ; Statement: $z0 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z0 == 0 goto $r21 = "" 
(assert (= (ite var2881 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3230 String "") ; Statement: $r21 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2063 String (append/672562846 var1706!1 var3230)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1706!2 String)
(assert (= var1706!2 (str.++ var1706!1 var3230)))
(assert true)
(define-const var1306 String (append/672562846 var2063 "s")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("s") 
(declare-const var2063!1 String)
(assert (= var2063!1 (str.++ var2063 "s")))
(assert true)
(define-const var3870 String (append/-1001720160 var1306 var1818)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1306!1 String)
(assert (str.prefixof var1306 var1306!1))
(define-const var985 Bool (requiresFullContext/729997761 var601)) ; Statement: $z1 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean requiresFullContext> 
 ; Statement: if $z1 == 0 goto $r22 = "" 
(assert (not (= (ite var985 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3427 String "^") ; Statement: $r22 = "^" 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3820 String (append/672562846 var3870 var3427)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3870!1 String)
(assert (= var3870!1 (str.++ var3870 var3427)))
(assert true)
(define-const var3562 String (toString/-2075883882 var3820)) ; Statement: $r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var800 Bool (isAcceptState/729997761 var601)) ; Statement: $z2 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z2 == 0 goto return $r19 
(assert (= (ite var800 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {stateNumber/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), isAcceptState/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), requiresFullContext/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1515=com.github.jknack.handlebars.internal.antlr.dfa.DFASerializer, var3871=r20, var1123=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var601=r0, var1818=i0, var1706=$r1, var2881=$z0, var3230=$r21, var2063=$r2, var1306=$r3, var3870=$r4, var985=$z1, var3427=$r22, var3820=$r5, var3562=$r19, var800=$z2}
; {com.github.jknack.handlebars.internal.antlr.dfa.DFASerializer=var1515, r20=var3871, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var1123, r0=var601, i0=var1818, $r1=var1706, $z0=var2881, $r21=var3230, $r2=var2063, $r3=var1306, $r4=var3870, $z1=var985, $r22=var3427, $r5=var3820, $r19=var3562, $z2=var800}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r20 := @this: com.github.jknack.handlebars.internal.antlr.dfa.DFASerializer;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: int stateNumber>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$z0 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState>;	if $z0 == 0 goto $r21 = "";	$r21 = "";	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("s");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$z1 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean requiresFullContext>;	if $z1 == 0 goto $r22 = "";	$r22 = "^";	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r0.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean isAcceptState>;	if $z2 == 0 goto return $r19;	return $r19
;block_num 6