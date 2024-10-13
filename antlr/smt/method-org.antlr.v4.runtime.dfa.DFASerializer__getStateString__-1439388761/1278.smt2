(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3101 0)
(declare-sort var968 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stateNumber/-2105354820 (var968) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun isAcceptState/-2105354820 (var968) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun requiresFullContext/-2105354820 (var968) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3101 var3101)
(declare-const null-var968 var968)
(declare-const var3193 var3101) ; Statement: r20 := @this: org.antlr.v4.runtime.dfa.DFASerializer 
(assert (not (= var3193 null-var3101)))
(declare-const var1924 var968) ; Statement: r0 := @parameter0: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var1924 null-var968)))
(define-const var2016 Int (stateNumber/-2105354820 var1924)) ; Statement: i0 = r0.<org.antlr.v4.runtime.dfa.DFAState: int stateNumber> 
(define-const var112 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var112)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var112!1 String)
(assert (= var112!1 ""))
(define-const var712 Bool (isAcceptState/-2105354820 var1924)) ; Statement: $z0 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z0 == 0 goto $r21 = "" 
(assert (not (= (ite var712 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var942 String ":") ; Statement: $r21 = ":" 
 ; Statement: goto [?= $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3129 String (append/672562846 var112!1 var942)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var112!2 String)
(assert (= var112!2 (str.++ var112!1 var942)))
(assert true)
(define-const var2199 String (append/672562846 var3129 "s")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("s") 
(declare-const var3129!1 String)
(assert (= var3129!1 (str.++ var3129 "s")))
(assert true)
(define-const var234 String (append/-1001720160 var2199 var2016)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2199!1 String)
(assert (str.prefixof var2199 var2199!1))
(define-const var523 Bool (requiresFullContext/-2105354820 var1924)) ; Statement: $z1 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean requiresFullContext> 
 ; Statement: if $z1 == 0 goto $r22 = "" 
(assert (not (= (ite var523 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2726 String "^") ; Statement: $r22 = "^" 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1910 String (append/672562846 var234 var2726)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var234!1 String)
(assert (= var234!1 (str.++ var234 var2726)))
(assert true)
(define-const var660 String (toString/-2075883882 var1910)) ; Statement: $r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1636 Bool (isAcceptState/-2105354820 var1924)) ; Statement: $z2 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z2 == 0 goto return $r19 
(assert (= (ite var1636 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {stateNumber/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), isAcceptState/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), requiresFullContext/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3101=org.antlr.v4.runtime.dfa.DFASerializer, var3193=r20, var968=org.antlr.v4.runtime.dfa.DFAState, var1924=r0, var2016=i0, var112=$r1, var712=$z0, var942=$r21, var3129=$r2, var2199=$r3, var234=$r4, var523=$z1, var2726=$r22, var1910=$r5, var660=$r19, var1636=$z2}
; {org.antlr.v4.runtime.dfa.DFASerializer=var3101, r20=var3193, org.antlr.v4.runtime.dfa.DFAState=var968, r0=var1924, i0=var2016, $r1=var112, $z0=var712, $r21=var942, $r2=var3129, $r3=var2199, $r4=var234, $z1=var523, $r22=var2726, $r5=var1910, $r19=var660, $z2=var1636}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r20 := @this: org.antlr.v4.runtime.dfa.DFASerializer;	r0 := @parameter0: org.antlr.v4.runtime.dfa.DFAState;	i0 = r0.<org.antlr.v4.runtime.dfa.DFAState: int stateNumber>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$z0 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState>;	if $z0 == 0 goto $r21 = "";	$r21 = ":";	goto [?= $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)];	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("s");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$z1 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean requiresFullContext>;	if $z1 == 0 goto $r22 = "";	$r22 = "^";	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState>;	if $z2 == 0 goto return $r19;	return $r19
;block_num 6