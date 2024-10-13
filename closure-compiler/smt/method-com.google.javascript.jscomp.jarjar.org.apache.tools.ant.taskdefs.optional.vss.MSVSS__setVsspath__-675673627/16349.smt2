(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3973 0)
(declare-sort var1627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun vssPath/1944491110 (var3973) String)
(declare-const null-var3973 var3973)
(declare-const null-String String)
(declare-const var588 var3973) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS 
(assert (not (= var588 null-var3973)))
(declare-const var722 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var722 null-String)))
(assert true)
(define-const var2231 Bool (startsWith/-1785782452 var722 "vss://")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("vss://") 
 ; Statement: if $z0 == 0 goto r6 = r0 
(assert (= (ite var2231 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3700 String var722) ; Statement: r6 = r0 
(assert true) ; Non Conditional
(assert true)
(define-const var2241 Bool (startsWith/-1785782452 var3700 "$")) ; Statement: $z1 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("$") 
 ; Statement: if $z1 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var2241 1 0) 0))) ; Negate: Cond: $z1 == 0  
(declare-const var588!1 var3973)
(assert (not (= var588!1 null-var3973)))
(assert (= (vssPath/1944491110 var588!1) var3700)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String vssPath> = r6 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), vssPath/1944491110=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS], java.lang.String)}
; {var3973=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS, var588=r1, var722=r0, var1627=null_type, var2231=$z0, var3700=r6, var2241=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS=var3973, r1=var588, r0=var722, null_type=var1627, $z0=var2231, r6=var3700, $z1=var2241}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("vss://");	if $z0 == 0 goto r6 = r0;	r6 = r0;	$z1 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("$");	if $z1 == 0 goto $r2 = new java.lang.StringBuilder;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String vssPath> = r6;	goto [?= return];	return
;block_num 5