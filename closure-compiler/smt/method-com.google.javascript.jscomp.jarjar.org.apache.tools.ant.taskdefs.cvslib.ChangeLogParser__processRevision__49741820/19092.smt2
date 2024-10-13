(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3095 0)
(declare-sort var3361 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun revision/1087169286 (var3095) String)
(declare-fun status/1087169286 (var3095) Int)
(declare-const null-var3095 var3095)
(declare-const null-String String)
(declare-const var518 var3095) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser 
(assert (not (= var518 null-var3095)))
(declare-const var2205 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2205 null-String)))
(assert true)
(define-const var2140 Bool (startsWith/-1785782452 var2205 "revision")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("revision") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("======") 
(assert (not (= (ite var2140 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert (and true (and (>= 9 0) (>= (str.len var2205) 9))))
(define-const var266 String (substring/850833817 var2205 9)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(9) 
(declare-const var518!1 var3095)
(assert (not (= var518!1 null-var3095)))
(assert (= (revision/1087169286 var518!1) var266)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String revision> = $r2 
(declare-const var518!2 var3095)
(assert (not (= var518!2 null-var3095)))
(assert (= (status/1087169286 var518!2) 2)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: int status> = 2 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), substring/850833817=([java.lang.String, int], java.lang.String), revision/1087169286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], java.lang.String), status/1087169286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], int)}
; {var3095=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser, var518=r1, var2205=r0, var3361=null_type, var2140=$z0, var266=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser=var3095, r1=var518, r0=var2205, null_type=var3361, $z0=var2140, $r2=var266}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("revision");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("======");	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(9);	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String revision> = $r2;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: int status> = 2;	goto [?= return];	return
;block_num 3