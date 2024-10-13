(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2473 0)
(declare-sort var3836 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun outputBuffer/-1919349735 (var2473) String)
(declare-fun getTrailingComments/-901310105 (var2473 var3836) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2473 var2473)
(declare-const null-var3836 var3836)
(declare-const var3287 var2473) ; Statement: r0 := @this: org.javacc.parser.CodeGenerator 
(assert (not (= var3287 null-var2473)))
(declare-const var2164 var3836) ; Statement: r1 := @parameter0: org.javacc.parser.Token 
(assert (not (= var2164 null-var3836)))
(define-const var1418 String (outputBuffer/-1919349735 var3287)) ; Statement: $r2 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer outputBuffer> 
(assert true)
(define-const var3772 String (getTrailingComments/-901310105 var3287 var2164)) ; Statement: $r3 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: java.lang.String getTrailingComments(org.javacc.parser.Token)>(r1) 
(assert true)
;(assert (append/1560614132 var1418 var3772)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var1418!1 String)
(assert (str.prefixof var1418 var1418!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {outputBuffer/-1919349735=([org.javacc.parser.CodeGenerator], java.lang.StringBuffer), getTrailingComments/-901310105=([org.javacc.parser.CodeGenerator, org.javacc.parser.Token], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var2473=org.javacc.parser.CodeGenerator, var3287=r0, var3836=org.javacc.parser.Token, var2164=r1, var1418=$r2, var3772=$r3}
; {org.javacc.parser.CodeGenerator=var2473, r0=var3287, org.javacc.parser.Token=var3836, r1=var2164, $r2=var1418, $r3=var3772}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: org.javacc.parser.CodeGenerator;	r1 := @parameter0: org.javacc.parser.Token;	$r2 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer outputBuffer>;	$r3 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: java.lang.String getTrailingComments(org.javacc.parser.Token)>(r1);	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	return
;block_num 1