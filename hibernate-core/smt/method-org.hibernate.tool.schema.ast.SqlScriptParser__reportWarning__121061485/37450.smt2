(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3446 0)
(declare-sort var565 0)
(declare-sort var3889 0)
(declare-sort var3587 0)
(declare-sort var3334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var3334-init () (Array Int var3334))
(declare-fun debugf/766413606 (var3889 String (Array Int var3334)) void)
(declare-const null-var3446 var3446)
(declare-const null-String String)
(declare-const var3587-SCRIPT_LOGGER var3889)
(declare-const var849 var3446) ; Statement: r7 := @this: org.hibernate.tool.schema.ast.SqlScriptParser 
(assert (not (= var849 null-var3446)))
(declare-const var3848 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3848 null-String)))
(define-const var1651 var3889 var3587-SCRIPT_LOGGER) ; Statement: $r1 = <org.hibernate.tool.schema.ast.SqlScriptLogging: org.jboss.logging.Logger SCRIPT_LOGGER> 
(define-const var729 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var729)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var729!1 String)
(assert (= var729!1 ""))
(assert true)
(define-const var3173 String (append/672562846 var729!1 "SqlScriptParser recognition warning : ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SqlScriptParser recognition warning : ") 
(declare-const var729!2 String)
(assert (= var729!2 (str.++ var729!1 "SqlScriptParser recognition warning : ")))
(assert true)
(define-const var2120 String (append/672562846 var3173 var3848)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3173!1 String)
(assert (= var3173!1 (str.++ var3173 var3848)))
(assert true)
(define-const var964 String (toString/-2075883882 var2120)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3202 (Array Int var3334) arr-var3334-init) ; Statement: $r5 = newarray (java.lang.Object)[0] 
(assert true)
;(assert (debugf/766413606 var1651 var964 var3202)) ; Statement: virtualinvoke $r1.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object[])>($r6, $r5) 

(declare-const var1651!1 var3889)
(declare-const var964!1 String)
(declare-const var3202!1 (Array Int var3334))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var3334-init=([], java.lang.Object[]), debugf/766413606=([org.jboss.logging.Logger, java.lang.String, java.lang.Object[]], void)}
; {var3446=org.hibernate.tool.schema.ast.SqlScriptParser, var849=r7, var3848=r2, var565=null_type, var3889=org.jboss.logging.Logger, var3587=org.hibernate.tool.schema.ast.SqlScriptLogging, var1651=$r1, var729=$r0, var3173=$r3, var2120=$r4, var964=$r6, var3334=java.lang.Object, var3202=$r5}
; {org.hibernate.tool.schema.ast.SqlScriptParser=var3446, r7=var849, r2=var3848, null_type=var565, org.jboss.logging.Logger=var3889, org.hibernate.tool.schema.ast.SqlScriptLogging=var3587, $r1=var1651, $r0=var729, $r3=var3173, $r4=var2120, $r6=var964, java.lang.Object=var3334, $r5=var3202}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.tool.schema.ast.SqlScriptParser;	r2 := @parameter0: java.lang.String;	$r1 = <org.hibernate.tool.schema.ast.SqlScriptLogging: org.jboss.logging.Logger SCRIPT_LOGGER>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SqlScriptParser recognition warning : ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = newarray (java.lang.Object)[0];	virtualinvoke $r1.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object[])>($r6, $r5);	return
;block_num 1