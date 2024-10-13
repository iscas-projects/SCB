(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var190 0)
(declare-sort var3508 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun vssPath/1944491110 (var190) String)
(declare-const null-var190 var190)
(declare-const null-String String)
(declare-const var3732 var190) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS 
(assert (not (= var3732 null-var190)))
(declare-const var2642 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2642 null-String)))
(assert true)
(define-const var1216 Bool (startsWith/-1785782452 var2642 "vss://")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("vss://") 
 ; Statement: if $z0 == 0 goto r6 = r0 
(assert (not (= (ite var1216 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert (and true (and (>= 5 0) (>= (str.len var2642) 5))))
(define-const var392 String (substring/850833817 var2642 5)) ; Statement: r6 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(5) 
 ; Statement: goto [?= $z1 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("$")] 
(assert true) ; Non Conditional
(assert true)
(define-const var167 Bool (startsWith/-1785782452 var392 "$")) ; Statement: $z1 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("$") 
 ; Statement: if $z1 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var167 1 0) 0))) ; Negate: Cond: $z1 == 0  
(declare-const var3732!1 var190)
(assert (not (= var3732!1 null-var190)))
(assert (= (vssPath/1944491110 var3732!1) var392)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String vssPath> = r6 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), substring/850833817=([java.lang.String, int], java.lang.String), vssPath/1944491110=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS], java.lang.String)}
; {var190=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS, var3732=r1, var2642=r0, var3508=null_type, var1216=$z0, var392=r6, var167=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS=var190, r1=var3732, r0=var2642, null_type=var3508, $z0=var1216, r6=var392, $z1=var167}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("vss://");	if $z0 == 0 goto r6 = r0;	r6 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(5);	goto [?= $z1 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("$")];	$z1 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("$");	if $z1 == 0 goto $r2 = new java.lang.StringBuilder;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String vssPath> = r6;	goto [?= return];	return
;block_num 5