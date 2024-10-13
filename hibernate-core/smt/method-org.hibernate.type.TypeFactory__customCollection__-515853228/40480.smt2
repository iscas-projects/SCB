(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3487 0)
(declare-sort var1535 0)
(declare-sort var3553 0)
(declare-sort var1253 0)
(declare-sort var675 0)
(declare-sort var1048 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var675-init () var675)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/796187277 (var675 String var1048) void)
(declare-fun cast-from-var1253-to-var1048 (var1253) var1048)
(declare-fun cast-from-var675-to-var1048 (var675) var1048)
(declare-const null-var3487 var3487)
(declare-const null-String String)
(declare-const null-var3553 var3553)
(declare-const null-var1253 var1253)
(declare-const var2132 var3487) ; Statement: r13 := @this: org.hibernate.type.TypeFactory 
(assert (not (= var2132 null-var3487)))
(declare-const var1825 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1825 null-String)))
(declare-const var1828 var3553) ; Statement: r5 := @parameter1: java.util.Properties 
(assert (not (= var1828 null-var3553)))
(declare-const var938 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var938 null-String)))
(declare-const var2934 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var2934 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1602 var1253) ; Statement: $r7 := @caughtexception 
(assert (not (= var1602 null-var1253)))
(define-const var902 var675 var675-init) ; Statement: $r15 = new org.hibernate.MappingException 
(define-const var2197 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2197)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2197!1 String)
(assert (= var2197!1 ""))
(assert true)
(define-const var3993 String (append/672562846 var2197!1 "user collection type class not found: ")) ; Statement: $r10 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("user collection type class not found: ") 
(declare-const var2197!2 String)
(assert (= var2197!2 (str.++ var2197!1 "user collection type class not found: ")))
(assert true)
(define-const var3267 String (append/672562846 var3993 var1825)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3993!1 String)
(assert (= var3993!1 (str.++ var3993 var1825)))
(assert true)
(define-const var211 String (toString/-2075883882 var3267)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/796187277 var902 var211 (cast-from-var1253-to-var1048 var1602))) ; Statement: specialinvoke $r15.<org.hibernate.MappingException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r7) 

(declare-const var902!1 var675)
(declare-const var211!1 String)
(declare-const var1602!1 var1253)
(define-const var736 var1048 (cast-from-var675-to-var1048 var902!1)) ; Statement: $r17 = (java.lang.Throwable) $r15 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var675-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/796187277=([org.hibernate.MappingException, java.lang.String, java.lang.Throwable], void), cast-from-var1253-to-var1048=([java.lang.ClassNotFoundException], java.lang.Throwable), cast-from-var675-to-var1048=([org.hibernate.MappingException], java.lang.Throwable)}
; {var3487=org.hibernate.type.TypeFactory, var2132=r13, var1825=r0, var1535=null_type, var3553=java.util.Properties, var1828=r5, var938=r3, var2934=r4, var1253=java.lang.ClassNotFoundException, var1602=$r7, var675=org.hibernate.MappingException, var902=$r15, var2197=$r14, var3993=$r10, var3267=$r11, var211=$r12, var1048=java.lang.Throwable, var736=$r17}
; {org.hibernate.type.TypeFactory=var3487, r13=var2132, r0=var1825, null_type=var1535, java.util.Properties=var3553, r5=var1828, r3=var938, r4=var2934, java.lang.ClassNotFoundException=var1253, $r7=var1602, org.hibernate.MappingException=var675, $r15=var902, $r14=var2197, $r10=var3993, $r11=var3267, $r12=var211, java.lang.Throwable=var1048, $r17=var736}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: org.hibernate.type.TypeFactory;	r0 := @parameter0: java.lang.String;	r5 := @parameter1: java.util.Properties;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String;	$r7 := @caughtexception;	$r15 = new org.hibernate.MappingException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("user collection type class not found: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.MappingException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r7);	$r17 = (java.lang.Throwable) $r15;	throw $r17
;block_num 2