(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3299 0)
(declare-sort var3904 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stateNumber/-2105354820 (var3904) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun isAcceptState/-2105354820 (var3904) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun requiresFullContext/-2105354820 (var3904) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3299 var3299)
(declare-const null-var3904 var3904)
(declare-const var1536 var3299) ; Statement: r20 := @this: org.antlr.v4.runtime.dfa.DFASerializer 
(assert (not (= var1536 null-var3299)))
(declare-const var763 var3904) ; Statement: r0 := @parameter0: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var763 null-var3904)))
(define-const var3769 Int (stateNumber/-2105354820 var763)) ; Statement: i0 = r0.<org.antlr.v4.runtime.dfa.DFAState: int stateNumber> 
(define-const var2164 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2164)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2164!1 String)
(assert (= var2164!1 ""))
(define-const var503 Bool (isAcceptState/-2105354820 var763)) ; Statement: $z0 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z0 == 0 goto $r21 = "" 
(assert (= (ite var503 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1385 String "") ; Statement: $r21 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var604 String (append/672562846 var2164!1 var1385)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2164!2 String)
(assert (= var2164!2 (str.++ var2164!1 var1385)))
(assert true)
(define-const var2435 String (append/672562846 var604 "s")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("s") 
(declare-const var604!1 String)
(assert (= var604!1 (str.++ var604 "s")))
(assert true)
(define-const var567 String (append/-1001720160 var2435 var3769)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2435!1 String)
(assert (str.prefixof var2435 var2435!1))
(define-const var1778 Bool (requiresFullContext/-2105354820 var763)) ; Statement: $z1 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean requiresFullContext> 
 ; Statement: if $z1 == 0 goto $r22 = "" 
(assert (= (ite var1778 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1988 String "") ; Statement: $r22 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var1980 String (append/672562846 var567 var1988)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var567!1 String)
(assert (= var567!1 (str.++ var567 var1988)))
(assert true)
(define-const var815 String (toString/-2075883882 var1980)) ; Statement: $r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3817 Bool (isAcceptState/-2105354820 var763)) ; Statement: $z2 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState> 
 ; Statement: if $z2 == 0 goto return $r19 
(assert (= (ite var3817 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {stateNumber/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), isAcceptState/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), requiresFullContext/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3299=org.antlr.v4.runtime.dfa.DFASerializer, var1536=r20, var3904=org.antlr.v4.runtime.dfa.DFAState, var763=r0, var3769=i0, var2164=$r1, var503=$z0, var1385=$r21, var604=$r2, var2435=$r3, var567=$r4, var1778=$z1, var1988=$r22, var1980=$r5, var815=$r19, var3817=$z2}
; {org.antlr.v4.runtime.dfa.DFASerializer=var3299, r20=var1536, org.antlr.v4.runtime.dfa.DFAState=var3904, r0=var763, i0=var3769, $r1=var2164, $z0=var503, $r21=var1385, $r2=var604, $r3=var2435, $r4=var567, $z1=var1778, $r22=var1988, $r5=var1980, $r19=var815, $z2=var3817}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r20 := @this: org.antlr.v4.runtime.dfa.DFASerializer;	r0 := @parameter0: org.antlr.v4.runtime.dfa.DFAState;	i0 = r0.<org.antlr.v4.runtime.dfa.DFAState: int stateNumber>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$z0 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState>;	if $z0 == 0 goto $r21 = "";	$r21 = "";	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("s");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$z1 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean requiresFullContext>;	if $z1 == 0 goto $r22 = "";	$r22 = "";	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$z2 = r0.<org.antlr.v4.runtime.dfa.DFAState: boolean isAcceptState>;	if $z2 == 0 goto return $r19;	return $r19
;block_num 6