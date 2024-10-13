(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2723 0)
(declare-sort var3455 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2723_stringValue/-689356382 (String) String)
(declare-fun var2723_getOutputDirectory/873146074 () var3455)
(define-const var1607 String (var2723_stringValue/-689356382 "JJTREE_OUTPUT_DIRECTORY")) ; Statement: r0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String stringValue(java.lang.String)>("JJTREE_OUTPUT_DIRECTORY") 
(define-const var3421 String "") ; Statement: $r1 = "" 
(assert true)
(define-const var2444 Bool (= var3421 var1607)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = new java.io.File 
(assert (not (= (ite var2444 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3471 var3455 var2723_getOutputDirectory/873146074) ; Statement: r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getOutputDirectory()>() 
 ; Statement: goto [?= return r3] 
(assert true) ; Non Conditional
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2723_stringValue/-689356382=([java.lang.String], java.lang.String), var2723_getOutputDirectory/873146074=([], java.io.File)}
; {var2723=org.javacc.parser.Options, var1607=r0, var3421=$r1, var2444=$z0, var3455=java.io.File, var3471=r3}
; {org.javacc.parser.Options=var2723, r0=var1607, $r1=var3421, $z0=var2444, java.io.File=var3455, r3=var3471}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String stringValue(java.lang.String)>("JJTREE_OUTPUT_DIRECTORY");	$r1 = "";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = new java.io.File;	r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.io.File getOutputDirectory()>();	goto [?= return r3];	return r3
;block_num 3