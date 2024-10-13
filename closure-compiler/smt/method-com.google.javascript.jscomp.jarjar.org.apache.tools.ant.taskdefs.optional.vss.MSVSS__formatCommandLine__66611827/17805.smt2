(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var958 0)
(declare-sort var43 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toString/-1207858493 (var43) String)
(declare-fun <init>/2110755883 (String String) void)
(declare-fun substring/1996688697 (String Int) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var958 var958)
(declare-const null-var43 var43)
(declare-const var791 var958) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS 
(assert (not (= var791 null-var958)))
(declare-const var1561 var43) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert (not (= var1561 null-var43)))
(define-const var1692 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
(define-const var1463 String (toString/-1207858493 var1561)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2110755883 var1692 var1463)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>(java.lang.String)>($r2) 

(declare-const var1692!1 String)
(declare-const var1463!1 String)
(assert true)
(define-const var138 String (substring/1996688697 var1692!1 0)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String substring(int)>(0) 
(assert true)
(define-const var226 Int (indexOf/-1209756239 var138 "-Y")) ; Statement: i0 = virtualinvoke $r3.<java.lang.String: int indexOf(java.lang.String)>("-Y") 
 ; Statement: if i0 <= 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (<= var226 0)) ; Cond: i0 <= 0 
(assert true)
(define-const var2611 String (toString/-222306083 var1692!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), toString/-1207858493=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.lang.String), <init>/2110755883=([java.lang.StringBuffer, java.lang.String], void), substring/1996688697=([java.lang.StringBuffer, int], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var958=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS, var791=r7, var43=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var1561=r1, var1692=$r0, var1463=$r2, var138=$r3, var226=i0, var2611=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS=var958, r7=var791, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var43, r1=var1561, $r0=var1692, $r2=var1463, $r3=var138, i0=var226, $r4=var2611}
;seq <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String substring(int)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.String substring(int)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	$r0 = new java.lang.StringBuffer;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuffer: void <init>(java.lang.String)>($r2);	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String substring(int)>(0);	i0 = virtualinvoke $r3.<java.lang.String: int indexOf(java.lang.String)>("-Y");	if i0 <= 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r4
;block_num 2