(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2953 0)
(declare-sort var685 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var2953 var2953)
(declare-const null-String String)
(declare-const var1419 var2953) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask 
(assert (not (= var1419 null-var2953)))
(declare-const var2659 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2659 null-String)))
(define-const var3156 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3156 var2659)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1) 
(declare-const var3156!1 String)
(assert (= var3156!1 var2659))
(assert true)
(define-const var3701 Int (indexOf/-1209756239 var2659 "-d:")) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>("-d:") 
 ; Statement: if i0 < 0 goto return $r0 
(assert (< var3701 0)) ; Cond: i0 < 0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var2953=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask, var1419=r2, var2659=r1, var685=null_type, var3156=$r0, var3701=i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask=var2953, r2=var1419, r1=var2659, null_type=var685, $r0=var3156, i0=var3701}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1);	i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>("-d:");	if i0 < 0 goto return $r0;	return $r0
;block_num 2