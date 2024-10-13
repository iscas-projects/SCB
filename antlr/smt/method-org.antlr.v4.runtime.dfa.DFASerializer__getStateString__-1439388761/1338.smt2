(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3059 0)
(declare-sort var3809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stateNumber/-2105354820 (var3809) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun isAcceptState/-2105354820 (var3809) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun requiresFullContext/-2105354820 (var3809) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3059 var3059)
(declare-const null-var3809 var3809)
(declare-const var478 var3059) ; Statement: r20 := @this: org.antlr.v4.runtime.dfa.DFASerializer 
(assert (not (= var478 null-var3059)))
(declare-const var1458 var3809) ; Statement: r0 := @parameter0: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var1458 null-var3809)))
(define-const var3853 Int (stateNumber/-2105354820 var1458)) ; Statement: i0 = r0.<org.antlr.v4.runtime.dfa.DFAState: int stateNumber> 
(define-const var2003 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2003)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2003!1 String)
(assert (= var2003!1 ""))
(define-const var3527 Bool (isAcceptState/-2105354820 var1458)) ; Statement: $z0 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z0 == 0 goto $r21 = "" 
(assert (= (ite var3527 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3688 String "") ; Statement: $r21 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var659 String (append/672562846 var2003!1 var3688)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2003!2 String)
(assert (= var2003!2 (str.++ var2003!1 var3688)))
(assert true)
(define-const var2032 String (append/672562846 var659 "s")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("s") 
(declare-const var659!1 String)
(assert (= var659!1 (str.++ var659 "s")))
(assert true)
(define-const var268 String (append/-1001720160 var2032 var3853)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2032!1 String)
(assert (str.prefixof var2032 var2032!1))
(define-const var1632 Bool (requiresFullContext/-2105354820 var1458)) ; Statement: $z1 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean requiresFullContext> 
 ; Statement: if $z1 == 0 goto $r22 = "" 
(assert (not (= (ite var1632 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2110 String "^") ; Statement: $r22 = "^" 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2212 String (append/672562846 var268 var2110)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var268!1 String)
(assert (= var268!1 (str.++ var268 var2110)))
(assert true)
(define-const var1858 String (toString/-2075883882 var2212)) ; Statement: $r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var280 Bool (isAcceptState/-2105354820 var1458)) ; Statement: $z2 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z2 == 0 goto return $r19 
(assert (= (ite var280 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {stateNumber/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), isAcceptState/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), requiresFullContext/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3059=org.antlr.v4.runtime.dfa.DFASerializer, var478=r20, var3809=org.antlr.v4.runtime.dfa.DFAState, var1458=r0, var3853=i0, var2003=$r1, var3527=$z0, var3688=$r21, var659=$r2, var2032=$r3, var268=$r4, var1632=$z1, var2110=$r22, var2212=$r5, var1858=$r19, var280=$z2}
; {org.antlr.v4.runtime.dfa.DFASerializer=var3059, r20=var478, org.antlr.v4.runtime.dfa.DFAState=var3809, r0=var1458, i0=var3853, $r1=var2003, $z0=var3527, $r21=var3688, $r2=var659, $r3=var2032, $r4=var268, $z1=var1632, $r22=var2110, $r5=var2212, $r19=var1858, $z2=var280}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r20 := @this: org.antlr.v4.runtime.dfa.DFASerializer;	r0 := @parameter0: org.antlr.v4.runtime.dfa.DFAState;	i0 = r0.<org.antlr.v4.runtime.dfa.DFAState: int stateNumber>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$z0 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState>;	if $z0 == 0 goto $r21 = "";	$r21 = "";	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("s");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$z1 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean requiresFullContext>;	if $z1 == 0 goto $r22 = "";	$r22 = "^";	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState>;	if $z2 == 0 goto return $r19;	return $r19
;block_num 6