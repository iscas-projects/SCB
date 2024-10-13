(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var449 0)
(declare-sort var1589 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun setProperty/110387416 (var449 String String) void)
(declare-const null-var449 var449)
(declare-const null-String String)
(declare-const var578 var449) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo 
(assert (not (= var578 null-var449)))
(declare-const var2749 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2749 null-String)))
(assert true)
(define-const var3808 Int (indexOf/-1037706067 var2749 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if i0 <= 0 goto specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void setProperty(java.lang.String,java.lang.String)>("NAME", r0) 
(assert (<= var3808 0)) ; Cond: i0 <= 0 
(assert true)
;(assert (setProperty/110387416 var578 "NAME" var2749)) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void setProperty(java.lang.String,java.lang.String)>("NAME", r0) 

(declare-const var578!1 var449)
(declare-const var3909 String)
(declare-const var2749!1 String)
(assert true)
;(assert (setProperty/110387416 var578!1 "DOMAIN" "localdomain")) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void setProperty(java.lang.String,java.lang.String)>("DOMAIN", "localdomain") 

(declare-const var578!2 var449)
(declare-const var1578 String)
(declare-const var1855 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), setProperty/110387416=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo, java.lang.String, java.lang.String], void)}
; {var449=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo, var578=r1, var2749=r0, var1589=null_type, var3808=i0, var3909="NAME", var1578="DOMAIN", var1855="localdomain"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo=var449, r1=var578, r0=var2749, null_type=var1589, i0=var3808, "NAME"=var3909, "DOMAIN"=var1578, "localdomain"=var1855}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	if i0 <= 0 goto specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void setProperty(java.lang.String,java.lang.String)>("NAME", r0);	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void setProperty(java.lang.String,java.lang.String)>("NAME", r0);	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void setProperty(java.lang.String,java.lang.String)>("DOMAIN", "localdomain");	return
;block_num 3