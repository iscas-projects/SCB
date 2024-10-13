(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3937 0)
(declare-sort var2620 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3937_isFamily/1764167399 (String) Bool)
(declare-fun arr-var2620-init () (Array Int var2620))
(declare-fun String_format/1339386452 (String (Array Int var2620)) String)
(define-const var3440 Bool (var3937_isFamily/1764167399 "win9x")) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: boolean isFamily(java.lang.String)>("win9x") 
(define-const var966 Bool var3440) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: boolean IS_WIN_9X> = $z0 
(define-const var431 (Array Int var2620) arr-var2620-init) ; Statement: $r0 = newarray (java.lang.Object)[0] 
(define-const var3995 String (String_format/1339386452 "%nThe \u0027 characters around the executable and arguments are%nnot part of the command.%n" var431)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%nThe \' characters around the executable and arguments are%nnot part of the command.%n", $r0) 
(define-const var2742 String var3995) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String DISCLAIMER> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3937_isFamily/1764167399=([java.lang.String], boolean), arr-var2620-init=([], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3937=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os, var3440=$z0, var966=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: boolean IS_WIN_9X>, var2620=java.lang.Object, var431=$r0, var3995=$r1, var2742=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String DISCLAIMER>}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os=var3937, $z0=var3440, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: boolean IS_WIN_9X>=var966, java.lang.Object=var2620, $r0=var431, $r1=var3995, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String DISCLAIMER>=var2742}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: boolean isFamily(java.lang.String)>("win9x");	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: boolean IS_WIN_9X> = $z0;	$r0 = newarray (java.lang.Object)[0];	$r1 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%nThe \' characters around the executable and arguments are%nnot part of the command.%n", $r0);	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String DISCLAIMER> = $r1;	return
;block_num 1