(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var537 0)
(declare-sort var3813 0)
(declare-sort var2112 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3813-init () (Array Int var3813))
(declare-fun cast-from-String-to-var3813 (String) var3813)
(declare-fun genCodeLine/787715242 (var537 (Array Int var3813)) void)
(declare-const null-var537 var537)
(declare-const null-__Array__Int__var3813__ (Array Int var3813))
(declare-const var2112-generatedStates Int)
(declare-const var2021 var537) ; Statement: r0 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var2021 null-var537)))
(define-const var1731 (Array Int var3813) arr-var3813-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var1731!1 (Array Int var3813))
(assert (not (= var1731!1 null-__Array__Int__var3813__)))
(assert (= (select var1731!1 0) (cast-from-String-to-var3813 "{"))) ; Statement: $r1[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var2021 var1731!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var2021!1 var537)
(declare-const var1731!2 (Array Int var3813))
(define-const var3030 Int var2112-generatedStates) ; Statement: $i0 = <org.javacc.parser.NfaState: int generatedStates> 
 ; Statement: if $i0 == 0 goto $r2 = newarray (java.lang.Object)[1] 
(assert (= var3030 0)) ; Cond: $i0 == 0 
(define-const var1870 (Array Int var3813) arr-var3813-init) ; Statement: $r2 = newarray (java.lang.Object)[1] 
(declare-const var1870!1 (Array Int var3813))
(assert (not (= var1870!1 null-__Array__Int__var3813__)))
(assert (= (select var1870!1 0) (cast-from-String-to-var3813 "   return 1;"))) ; Statement: $r2[0] = "   return 1;" 
(assert true)
;(assert (genCodeLine/787715242 var2021!1 var1870!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r2) 

(declare-const var2021!2 var537)
(declare-const var1870!2 (Array Int var3813))
(assert true) ; Non Conditional
(define-const var2084 (Array Int var3813) arr-var3813-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(declare-const var2084!1 (Array Int var3813))
(assert (not (= var2084!1 null-__Array__Int__var3813__)))
(assert (= (select var2084!1 0) (cast-from-String-to-var3813 "}"))) ; Statement: $r3[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var2021!2 var2084!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r3) 

(declare-const var2021!3 var537)
(declare-const var2084!2 (Array Int var3813))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3813-init=([], java.lang.Object[]), cast-from-String-to-var3813=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var537=org.javacc.parser.CodeGenerator, var2021=r0, var3813=java.lang.Object, var1731=$r1, var2112=org.javacc.parser.NfaState, var3030=$i0, var1870=$r2, var2084=$r3}
; {org.javacc.parser.CodeGenerator=var537, r0=var2021, java.lang.Object=var3813, $r1=var1731, org.javacc.parser.NfaState=var2112, $i0=var3030, $r2=var1870, $r3=var2084}
;seq 
;cnt {}
;stmts r0 := @parameter0: org.javacc.parser.CodeGenerator;	$r1 = newarray (java.lang.Object)[1];	$r1[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1);	$i0 = <org.javacc.parser.NfaState: int generatedStates>;	if $i0 == 0 goto $r2 = newarray (java.lang.Object)[1];	$r2 = newarray (java.lang.Object)[1];	$r2[0] = "   return 1;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r2);	$r3 = newarray (java.lang.Object)[1];	$r3[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r3);	return
;block_num 3