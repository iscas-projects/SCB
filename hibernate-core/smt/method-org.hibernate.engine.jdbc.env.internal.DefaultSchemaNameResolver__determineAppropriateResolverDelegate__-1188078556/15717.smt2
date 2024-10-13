(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1258 0)
(declare-sort var3243 0)
(declare-sort var2190 0)
(declare-sort var3608 0)
(declare-sort var3335 0)
(declare-sort var312 0)
(declare-sort var873 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3335) String)
(declare-fun cast-from-var2190-to-var3335 (var2190) var3335)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var312-init () (Array Int var312))
(declare-fun debugf/766413606 (var3608 String (Array Int var312)) void)
(declare-const null-var1258 var1258)
(declare-const null-var3243 var3243)
(declare-const null-var2190 var2190)
(declare-const var1258-log var3608)
(declare-const var873-INSTANCE var873)
(declare-const var945 var1258) ; Statement: r21 := @this: org.hibernate.engine.jdbc.env.internal.DefaultSchemaNameResolver 
(assert (not (= var945 null-var1258)))
(declare-const var1105 var3243) ; Statement: r0 := @parameter0: java.sql.Connection 
(assert (not (= var1105 null-var3243)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var104 var2190) ; Statement: $r8 := @caughtexception 
(assert (not (= var104 null-var2190)))
(define-const var1424 var3608 var1258-log) ; Statement: $r10 = <org.hibernate.engine.jdbc.env.internal.DefaultSchemaNameResolver: org.jboss.logging.Logger log> 
(define-const var2302 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2302)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2302!1 String)
(assert (= var2302!1 ""))
(assert true)
(define-const var1529 String (append/672562846 var2302!1 "Unable to use Java 1.7 Connection#getSchema : An error occurred trying to resolve the connection default schema resolver: ")) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to use Java 1.7 Connection#getSchema : An error occurred trying to resolve the connection default schema resolver: ") 
(declare-const var2302!2 String)
(assert (= var2302!2 (str.++ var2302!1 "Unable to use Java 1.7 Connection#getSchema : An error occurred trying to resolve the connection default schema resolver: ")))
(assert true)
(define-const var428 String (getMessage/849299655 (cast-from-var2190-to-var3335 var104))) ; Statement: $r11 = virtualinvoke $r8.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var932 String (append/672562846 var1529 var428)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1529!1 String)
(assert (= var1529!1 (str.++ var1529 var428)))
(assert true)
(define-const var2429 String (toString/-2075883882 var932)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1933 (Array Int var312) arr-var312-init) ; Statement: $r14 = newarray (java.lang.Object)[0] 
(assert true)
;(assert (debugf/766413606 var1424 var2429 var1933)) ; Statement: virtualinvoke $r10.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object[])>($r15, $r14) 

(declare-const var1424!1 var3608)
(declare-const var2429!1 String)
(declare-const var1933!1 (Array Int var312))
(define-const var129 var873 var873-INSTANCE) ; Statement: $r16 = <org.hibernate.engine.jdbc.env.internal.DefaultSchemaNameResolver$SchemaNameResolverFallbackDelegate: org.hibernate.engine.jdbc.env.internal.DefaultSchemaNameResolver$SchemaNameResolverFallbackDelegate INSTANCE> 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2190-to-var3335=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var312-init=([], java.lang.Object[]), debugf/766413606=([org.jboss.logging.Logger, java.lang.String, java.lang.Object[]], void)}
; {var1258=org.hibernate.engine.jdbc.env.internal.DefaultSchemaNameResolver, var945=r21, var3243=java.sql.Connection, var1105=r0, var2190=java.lang.Exception, var104=$r8, var3608=org.jboss.logging.Logger, var1424=$r10, var2302=$r9, var1529=$r12, var3335=java.lang.Throwable, var428=$r11, var932=$r13, var2429=$r15, var312=java.lang.Object, var1933=$r14, var873=org.hibernate.engine.jdbc.env.internal.DefaultSchemaNameResolver$SchemaNameResolverFallbackDelegate, var129=$r16}
; {org.hibernate.engine.jdbc.env.internal.DefaultSchemaNameResolver=var1258, r21=var945, java.sql.Connection=var3243, r0=var1105, java.lang.Exception=var2190, $r8=var104, org.jboss.logging.Logger=var3608, $r10=var1424, $r9=var2302, $r12=var1529, java.lang.Throwable=var3335, $r11=var428, $r13=var932, $r15=var2429, java.lang.Object=var312, $r14=var1933, org.hibernate.engine.jdbc.env.internal.DefaultSchemaNameResolver$SchemaNameResolverFallbackDelegate=var873, $r16=var129}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r21 := @this: org.hibernate.engine.jdbc.env.internal.DefaultSchemaNameResolver;	r0 := @parameter0: java.sql.Connection;	$r8 := @caughtexception;	$r10 = <org.hibernate.engine.jdbc.env.internal.DefaultSchemaNameResolver: org.jboss.logging.Logger log>;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to use Java 1.7 Connection#getSchema : An error occurred trying to resolve the connection default schema resolver: ");	$r11 = virtualinvoke $r8.<java.lang.Exception: java.lang.String getMessage()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = newarray (java.lang.Object)[0];	virtualinvoke $r10.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object[])>($r15, $r14);	$r16 = <org.hibernate.engine.jdbc.env.internal.DefaultSchemaNameResolver$SchemaNameResolverFallbackDelegate: org.hibernate.engine.jdbc.env.internal.DefaultSchemaNameResolver$SchemaNameResolverFallbackDelegate INSTANCE>;	return $r16
;block_num 2