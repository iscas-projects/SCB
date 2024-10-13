(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1605 0)
(declare-sort var1990 0)
(declare-sort var1539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun valueAttributeUsed/-696888527 (var1605) Bool)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1539-init () var1539)
(declare-fun <init>/1864341934 (var1539 String) void)
(declare-const null-var1605 var1605)
(declare-const null-String String)
(declare-const var754 var1605) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property 
(assert (not (= var754 null-var1605)))
(declare-const var2792 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var2792 null-String)))
(define-const var1508 Bool (valueAttributeUsed/-696888527 var754)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: boolean valueAttributeUsed> 
 ; Statement: if $z0 != 0 goto $r1 = virtualinvoke r8.<java.lang.String: java.lang.String trim()>() 
(assert (not (= (ite var1508 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2030 String (trim/-847153721 var2792)) ; Statement: $r1 = virtualinvoke r8.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var31 Bool (isEmpty/-1285796103 var2030)) ; Statement: $z1 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto return 
(assert (not (not (= (ite var31 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1078 var1539 var1539-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var1078 "can\u0027t combine nested text with value attribute")) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("can\'t combine nested text with value attribute") 

(declare-const var1078!1 var1539)
(declare-const var2343 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {valueAttributeUsed/-696888527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property], boolean), trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var1539-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1605=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property, var754=r0, var2792=r8, var1990=null_type, var1508=$z0, var2030=$r1, var31=$z1, var1539=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1078=$r2, var2343="can\'t combine nested text with value attribute"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property=var1605, r0=var754, r8=var2792, null_type=var1990, $z0=var1508, $r1=var2030, $z1=var31, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1539, $r2=var1078, "can\'t combine nested text with value attribute"=var2343}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property;	r8 := @parameter0: java.lang.String;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: boolean valueAttributeUsed>;	if $z0 != 0 goto $r1 = virtualinvoke r8.<java.lang.String: java.lang.String trim()>();	$r1 = virtualinvoke r8.<java.lang.String: java.lang.String trim()>();	$z1 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto return;	$r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("can\'t combine nested text with value attribute");	throw $r2
;block_num 3