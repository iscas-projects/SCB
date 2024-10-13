(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3319 0)
(declare-sort var339 0)
(declare-sort var3903 0)
(declare-sort var2525 0)
(declare-sort var1795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addText/1960194218 (var3319) var1795)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3319 var3319)
(declare-const null-var339 var339)
(declare-const null-var3903 var3903)
(declare-const null-String String)
(declare-const null-var1795 var1795)
(declare-const var1182 var3319) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var1182 null-var3319)))
(declare-const var3929 var339) ; Statement: r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var3929 null-var339)))
(declare-const var836 var3903) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var836 null-var3903)))
(declare-const var2361 String) ; Statement: r19 := @parameter2: java.lang.String 
(assert (not (= var2361 null-String)))
(define-const var2943 var1795 (addText/1960194218 var1182)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText> 
 ; Statement: if $r1 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText> 
(assert (not (not (= var2943 null-var1795)))) ; Negate: Cond: $r1 != null  
(assert true)
(define-const var3248 String (trim/-847153721 var2361)) ; Statement: r20 = virtualinvoke r19.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3583 Bool (isEmpty/-1285796103 var3248)) ; Statement: $z0 = virtualinvoke r20.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (not (= (ite var3583 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {addText/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.lang.reflect.Method), trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3319=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var1182=r0, var339=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3929=r7, var3903=java.lang.Object, var836=r2, var2361=r19, var2525=null_type, var1795=java.lang.reflect.Method, var2943=$r1, var3248=r20, var3583=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var3319, r0=var1182, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var339, r7=var3929, java.lang.Object=var3903, r2=var836, r19=var2361, null_type=var2525, java.lang.reflect.Method=var1795, $r1=var2943, r20=var3248, $z0=var3583}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r2 := @parameter1: java.lang.Object;	r19 := @parameter2: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText>;	if $r1 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText>;	r20 = virtualinvoke r19.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke r20.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	return
;block_num 3