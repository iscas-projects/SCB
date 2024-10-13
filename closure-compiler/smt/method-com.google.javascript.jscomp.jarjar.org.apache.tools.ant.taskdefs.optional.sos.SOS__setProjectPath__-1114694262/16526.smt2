(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3424 0)
(declare-sort var592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun projectPath/-1805167282 (var3424) String)
(declare-const null-var3424 var3424)
(declare-const null-String String)
(declare-const var1740 var3424) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS 
(assert (not (= var1740 null-var3424)))
(declare-const var174 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var174 null-String)))
(assert true)
(define-const var769 Bool (startsWith/-1785782452 var174 "$")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("$") 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var769 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1740!1 var3424)
(assert (not (= var1740!1 null-var3424)))
(assert (= (projectPath/-1805167282 var1740!1) var174)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: java.lang.String projectPath> = r0 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), projectPath/-1805167282=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS], java.lang.String)}
; {var3424=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS, var1740=r1, var174=r0, var592=null_type, var769=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS=var3424, r1=var1740, r0=var174, null_type=var592, $z0=var769}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("$");	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: java.lang.String projectPath> = r0;	goto [?= return];	return
;block_num 3