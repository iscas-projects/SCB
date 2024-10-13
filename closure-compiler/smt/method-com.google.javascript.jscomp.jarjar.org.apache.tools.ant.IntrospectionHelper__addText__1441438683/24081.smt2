(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1852 0)
(declare-sort var2940 0)
(declare-sort var625 0)
(declare-sort var3824 0)
(declare-sort var1 0)
(declare-sort var1176 0)
(declare-sort var2671 0)
(declare-sort var54 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addText/1960194218 (var1852) var1)
(declare-fun arr-var625-init () (Array Int var625))
(declare-fun cast-from-String-to-var625 (String) var625)
(declare-fun var2671-init () var2671)
(declare-fun <init>/-198444851 (var2671 var54) void)
(declare-fun cast-from-var1176-to-var54 (var1176) var54)
(declare-const null-var1852 var1852)
(declare-const null-var2940 var2940)
(declare-const null-var625 var625)
(declare-const null-String String)
(declare-const null-var1 var1)
(declare-const null-__Array__Int__var625__ (Array Int var625))
(declare-const null-var1176 var1176)
(declare-const var817 var1852) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var817 null-var1852)))
(declare-const var3258 var2940) ; Statement: r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var3258 null-var2940)))
(declare-const var1208 var625) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var1208 null-var625)))
(declare-const var2875 String) ; Statement: r19 := @parameter2: java.lang.String 
(assert (not (= var2875 null-String)))
(define-const var3753 var1 (addText/1960194218 var817)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText> 
 ; Statement: if $r1 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText> 
(assert (not (= var3753 null-var1))) ; Cond: $r1 != null 
(define-const var2688 var1 (addText/1960194218 var817)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText> 
(define-const var1919 (Array Int var625) arr-var625-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(declare-const var1919!1 (Array Int var625))
(assert (not (= var1919!1 null-__Array__Int__var625__)))
(assert (= (select var1919!1 0) (cast-from-String-to-var625 var2875))) ; Statement: $r3[0] = r19 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var758 var1176) ; Statement: $r17 := @caughtexception 
(assert (not (= var758 null-var1176)))
(define-const var3461 var2671 var2671-init) ; Statement: $r18 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/-198444851 var3461 (cast-from-var1176-to-var54 var758))) ; Statement: specialinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable)>($r17) 

(declare-const var3461!1 var2671)
(declare-const var758!1 var1176)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {addText/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.lang.reflect.Method), arr-var625-init=([], java.lang.Object[]), cast-from-String-to-var625=([java.lang.String], java.lang.Object), var2671-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/-198444851=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.Throwable], void), cast-from-var1176-to-var54=([java.lang.IllegalAccessException], java.lang.Throwable)}
; {var1852=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var817=r0, var2940=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3258=r7, var625=java.lang.Object, var1208=r2, var2875=r19, var3824=null_type, var1=java.lang.reflect.Method, var3753=$r1, var2688=$r4, var1919=$r3, var1176=java.lang.IllegalAccessException, var758=$r17, var2671=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3461=$r18, var54=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var1852, r0=var817, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2940, r7=var3258, java.lang.Object=var625, r2=var1208, r19=var2875, null_type=var3824, java.lang.reflect.Method=var1, $r1=var3753, $r4=var2688, $r3=var1919, java.lang.IllegalAccessException=var1176, $r17=var758, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2671, $r18=var3461, java.lang.Throwable=var54}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r2 := @parameter1: java.lang.Object;	r19 := @parameter2: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText>;	if $r1 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText>;	$r3 = newarray (java.lang.Object)[1];	$r3[0] = r19;	$r17 := @caughtexception;	$r18 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable)>($r17);	throw $r18
;block_num 3