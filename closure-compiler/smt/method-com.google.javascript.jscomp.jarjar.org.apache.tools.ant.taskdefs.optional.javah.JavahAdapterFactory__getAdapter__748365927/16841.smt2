(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var213 0)
(declare-sort var2285 0)
(declare-sort var3059 0)
(declare-sort var1399 0)
(declare-sort var1191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1399_isKaffe/1376613989 () Bool)
(declare-fun var1191-init () var1191)
(declare-fun <init>/-1616359588 (var1191) void)
(declare-const null-String String)
(declare-const null-var2285 var2285)
(declare-const null-var3059 var3059)
(declare-const var3718 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3718 null-String)))
(declare-const var226 var2285) ; Statement: r6 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent 
(assert (not (= var226 null-var2285)))
(declare-const var3229 var3059) ; Statement: r7 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert (not (= var3229 null-var3059)))
(define-const var1257 Bool var1399_isKaffe/1376613989) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isKaffe()>() 
 ; Statement: if $z0 == 0 goto $r1 = "kaffeh" 
(assert (= (ite var1257 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2716 String "kaffeh") ; Statement: $r1 = "kaffeh" 
(assert true)
(define-const var2087 Bool (= var2716 var3718)) ; Statement: $z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 == 0 goto $z2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isGij()>() 
(assert (not (= (ite var2087 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2777 var1191 var1191-init) ; Statement: $r16 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh 
(assert true)
;(assert (<init>/-1616359588 var2777)) ; Statement: specialinvoke $r16.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh: void <init>()>() 

(declare-const var2777!1 var1191)
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var1399_isKaffe/1376613989=([], boolean), var1191-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh), <init>/-1616359588=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh], void)}
; {var3718=r0, var213=null_type, var2285=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var226=r6, var3059=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var3229=r7, var1399=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils, var1257=$z0, var2716=$r1, var2087=$z1, var1191=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh, var2777=$r16}
; {r0=var3718, null_type=var213, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2285, r6=var226, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var3059, r7=var3229, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils=var1399, $z0=var1257, $r1=var2716, $z1=var2087, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh=var1191, $r16=var2777}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r6 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent;	r7 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isKaffe()>();	if $z0 == 0 goto $r1 = "kaffeh";	$r1 = "kaffeh";	$z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 == 0 goto $z2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isGij()>();	$r16 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh;	specialinvoke $r16.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.Kaffeh: void <init>()>();	return $r16
;block_num 3