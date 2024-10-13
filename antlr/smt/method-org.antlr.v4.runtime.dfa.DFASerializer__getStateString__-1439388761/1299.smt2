(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1231 0)
(declare-sort var2119 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stateNumber/-2105354820 (var2119) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun isAcceptState/-2105354820 (var2119) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun requiresFullContext/-2105354820 (var2119) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1231 var1231)
(declare-const null-var2119 var2119)
(declare-const var3902 var1231) ; Statement: r20 := @this: org.antlr.v4.runtime.dfa.DFASerializer 
(assert (not (= var3902 null-var1231)))
(declare-const var497 var2119) ; Statement: r0 := @parameter0: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var497 null-var2119)))
(define-const var2451 Int (stateNumber/-2105354820 var497)) ; Statement: i0 = r0.<org.antlr.v4.runtime.dfa.DFAState: int stateNumber> 
(define-const var1595 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1595)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1595!1 String)
(assert (= var1595!1 ""))
(define-const var3252 Bool (isAcceptState/-2105354820 var497)) ; Statement: $z0 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z0 == 0 goto $r21 = "" 
(assert (not (= (ite var3252 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1463 String ":") ; Statement: $r21 = ":" 
 ; Statement: goto [?= $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1416 String (append/672562846 var1595!1 var1463)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1595!2 String)
(assert (= var1595!2 (str.++ var1595!1 var1463)))
(assert true)
(define-const var1491 String (append/672562846 var1416 "s")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("s") 
(declare-const var1416!1 String)
(assert (= var1416!1 (str.++ var1416 "s")))
(assert true)
(define-const var2723 String (append/-1001720160 var1491 var2451)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1491!1 String)
(assert (str.prefixof var1491 var1491!1))
(define-const var3415 Bool (requiresFullContext/-2105354820 var497)) ; Statement: $z1 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean requiresFullContext> 
 ; Statement: if $z1 == 0 goto $r22 = "" 
(assert (= (ite var3415 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2338 String "") ; Statement: $r22 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2555 String (append/672562846 var2723 var2338)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2723!1 String)
(assert (= var2723!1 (str.++ var2723 var2338)))
(assert true)
(define-const var2499 String (toString/-2075883882 var2555)) ; Statement: $r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var993 Bool (isAcceptState/-2105354820 var497)) ; Statement: $z2 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z2 == 0 goto return $r19 
(assert (= (ite var993 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {stateNumber/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), isAcceptState/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), requiresFullContext/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1231=org.antlr.v4.runtime.dfa.DFASerializer, var3902=r20, var2119=org.antlr.v4.runtime.dfa.DFAState, var497=r0, var2451=i0, var1595=$r1, var3252=$z0, var1463=$r21, var1416=$r2, var1491=$r3, var2723=$r4, var3415=$z1, var2338=$r22, var2555=$r5, var2499=$r19, var993=$z2}
; {org.antlr.v4.runtime.dfa.DFASerializer=var1231, r20=var3902, org.antlr.v4.runtime.dfa.DFAState=var2119, r0=var497, i0=var2451, $r1=var1595, $z0=var3252, $r21=var1463, $r2=var1416, $r3=var1491, $r4=var2723, $z1=var3415, $r22=var2338, $r5=var2555, $r19=var2499, $z2=var993}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r20 := @this: org.antlr.v4.runtime.dfa.DFASerializer;	r0 := @parameter0: org.antlr.v4.runtime.dfa.DFAState;	i0 = r0.<org.antlr.v4.runtime.dfa.DFAState: int stateNumber>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$z0 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState>;	if $z0 == 0 goto $r21 = "";	$r21 = ":";	goto [?= $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)];	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("s");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$z1 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean requiresFullContext>;	if $z1 == 0 goto $r22 = "";	$r22 = "";	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState>;	if $z2 == 0 goto return $r19;	return $r19
;block_num 6