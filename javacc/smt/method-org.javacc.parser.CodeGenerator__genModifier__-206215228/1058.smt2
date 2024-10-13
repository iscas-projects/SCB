(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1463 0)
(declare-sort var1634 0)
(declare-sort var3344 0)
(declare-sort var3057 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var3344) String)
(declare-fun isJavaLanguage/-1752064482 (var1463) Bool)
(declare-fun arr-var3057-init () (Array Int var3057))
(declare-fun cast-from-String-to-var3057 (String) var3057)
(declare-fun genCode/442726974 (var1463 (Array Int var3057)) void)
(declare-const null-var1463 var1463)
(declare-const null-String String)
(declare-const var3344-ENGLISH var3344)
(declare-const null-__Array__Int__var3057__ (Array Int var3057))
(declare-const var2331 var1463) ; Statement: r3 := @this: org.javacc.parser.CodeGenerator 
(assert (not (= var2331 null-var1463)))
(declare-const var437 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var437 null-String)))
(define-const var3205 var3344 var3344-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var312 String (toLowerCase/1946809429 var437 var3205)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var3790 Bool (isJavaLanguage/-1752064482 var2331)) ; Statement: $z0 = virtualinvoke r3.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("public") 
(assert (not (= (ite var3790 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2426 (Array Int var3057) arr-var3057-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(declare-const var2426!1 (Array Int var3057))
(assert (not (= var2426!1 null-__Array__Int__var3057__)))
(assert (= (select var2426!1 0) (cast-from-String-to-var3057 var437))) ; Statement: $r9[0] = r0 
(assert true)
;(assert (genCode/442726974 var2331 var2426!1)) ; Statement: virtualinvoke r3.<org.javacc.parser.CodeGenerator: void genCode(java.lang.Object[])>($r9) 

(declare-const var2331!1 var1463)
(declare-const var2426!2 (Array Int var3057))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), isJavaLanguage/-1752064482=([org.javacc.parser.CodeGenerator], boolean), arr-var3057-init=([], java.lang.Object[]), cast-from-String-to-var3057=([java.lang.String], java.lang.Object), genCode/442726974=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var1463=org.javacc.parser.CodeGenerator, var2331=r3, var437=r0, var1634=null_type, var3344=java.util.Locale, var3205=$r1, var312=r2, var3790=$z0, var3057=java.lang.Object, var2426=$r9}
; {org.javacc.parser.CodeGenerator=var1463, r3=var2331, r0=var437, null_type=var1634, java.util.Locale=var3344, $r1=var3205, r2=var312, $z0=var3790, java.lang.Object=var3057, $r9=var2426}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r3 := @this: org.javacc.parser.CodeGenerator;	r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$z0 = virtualinvoke r3.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>();	if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("public");	$r9 = newarray (java.lang.Object)[1];	$r9[0] = r0;	virtualinvoke r3.<org.javacc.parser.CodeGenerator: void genCode(java.lang.Object[])>($r9);	goto [?= return];	return
;block_num 3