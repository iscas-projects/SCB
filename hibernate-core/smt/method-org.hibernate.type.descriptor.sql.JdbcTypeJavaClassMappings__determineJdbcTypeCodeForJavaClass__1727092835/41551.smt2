(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3196 0)
(declare-sort var2509 0)
(declare-sort var3969 0)
(declare-sort var102 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun javaClassToJdbcTypeCodeMap/-32455755 (var3196) var2509)
(declare-fun get/791961573 (var2509 var3969) var3969)
(declare-fun cast-from-ClassObject-to-var3969 (ClassObject) var3969)
(declare-fun cast-from-var3969-to-Int (var3969) Int)
(declare-fun hashCode/1739917532 (var3969) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun debug/-1936492793 (var102 var3969) void)
(declare-fun cast-from-String-to-var3969 (String) var3969)
(declare-const null-var3196 var3196)
(declare-const null-ClassObject ClassObject)
(declare-const null-Int Int)
(declare-const var3196-log var102)
(declare-const var2399 var3196) ; Statement: r0 := @this: org.hibernate.type.descriptor.sql.JdbcTypeJavaClassMappings 
(assert (not (= var2399 null-var3196)))
(declare-const var2560 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2560 null-ClassObject)))
(define-const var187 var2509 (javaClassToJdbcTypeCodeMap/-32455755 var2399)) ; Statement: $r2 = r0.<org.hibernate.type.descriptor.sql.JdbcTypeJavaClassMappings: java.util.concurrent.ConcurrentHashMap javaClassToJdbcTypeCodeMap> 
(assert true)
(define-const var1066 var3969 (get/791961573 var187 (cast-from-ClassObject-to-var3969 var2560))) ; Statement: $r3 = virtualinvoke $r2.<java.util.concurrent.ConcurrentHashMap: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var520 Int (cast-from-var3969-to-Int var1066)) ; Statement: r4 = (java.lang.Integer) $r3 
 ; Statement: if r4 == null goto i0 = virtualinvoke r1.<java.lang.Object: int hashCode()>() 
(assert (= var520 null-Int)) ; Cond: r4 == null 
(assert true)
(define-const var972 Int (hashCode/1739917532 (cast-from-ClassObject-to-var3969 var2560))) ; Statement: i0 = virtualinvoke r1.<java.lang.Object: int hashCode()>() 
(define-const var56 var102 var3196-log) ; Statement: $r6 = <org.hibernate.type.descriptor.sql.JdbcTypeJavaClassMappings: org.jboss.logging.Logger log> 
(define-const var2263 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2263)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2263!1 String)
(assert (= var2263!1 ""))
(assert true)
(define-const var1515 String (append/672562846 var2263!1 "JDBC type code mapping not known for class [")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JDBC type code mapping not known for class [") 
(declare-const var2263!2 String)
(assert (= var2263!2 (str.++ var2263!1 "JDBC type code mapping not known for class [")))
(assert true)
(define-const var1024 String (getName/-1958580599 var2560)) ; Statement: $r7 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1004 String (append/672562846 var1515 var1024)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1515!1 String)
(assert (= var1515!1 (str.++ var1515 var1024)))
(assert true)
(define-const var1376 String (append/672562846 var1004 "]; using custom code [")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]; using custom code [") 
(declare-const var1004!1 String)
(assert (= var1004!1 (str.++ var1004 "]; using custom code [")))
(assert true)
(define-const var3548 String (append/-1001720160 var1376 var972)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1376!1 String)
(assert (str.prefixof var1376 var1376!1))
(assert true)
(define-const var2829 String (append/672562846 var3548 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3548!1 String)
(assert (= var3548!1 (str.++ var3548 "]")))
(assert true)
(define-const var1160 String (toString/-2075883882 var2829)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (debug/-1936492793 var56 (cast-from-String-to-var3969 var1160))) ; Statement: virtualinvoke $r6.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r13) 

(declare-const var56!1 var102)
(declare-const var1160!1 String)
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {javaClassToJdbcTypeCodeMap/-32455755=([org.hibernate.type.descriptor.sql.JdbcTypeJavaClassMappings], java.util.concurrent.ConcurrentHashMap), get/791961573=([java.util.concurrent.ConcurrentHashMap, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var3969=([java.lang.Class], java.lang.Object), cast-from-var3969-to-Int=([java.lang.Object], java.lang.Integer), hashCode/1739917532=([java.lang.Object], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), debug/-1936492793=([org.jboss.logging.Logger, java.lang.Object], void), cast-from-String-to-var3969=([java.lang.String], java.lang.Object)}
; {var3196=org.hibernate.type.descriptor.sql.JdbcTypeJavaClassMappings, var2399=r0, var2560=r1, var2509=java.util.concurrent.ConcurrentHashMap, var187=$r2, var3969=java.lang.Object, var1066=$r3, var520=r4, var972=i0, var102=org.jboss.logging.Logger, var56=$r6, var2263=$r5, var1515=$r8, var1024=$r7, var1004=$r9, var1376=$r10, var3548=$r11, var2829=$r12, var1160=$r13}
; {org.hibernate.type.descriptor.sql.JdbcTypeJavaClassMappings=var3196, r0=var2399, r1=var2560, java.util.concurrent.ConcurrentHashMap=var2509, $r2=var187, java.lang.Object=var3969, $r3=var1066, r4=var520, i0=var972, org.jboss.logging.Logger=var102, $r6=var56, $r5=var2263, $r8=var1515, $r7=var1024, $r9=var1004, $r10=var1376, $r11=var3548, $r12=var2829, $r13=var1160}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.type.descriptor.sql.JdbcTypeJavaClassMappings;	r1 := @parameter0: java.lang.Class;	$r2 = r0.<org.hibernate.type.descriptor.sql.JdbcTypeJavaClassMappings: java.util.concurrent.ConcurrentHashMap javaClassToJdbcTypeCodeMap>;	$r3 = virtualinvoke $r2.<java.util.concurrent.ConcurrentHashMap: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Integer) $r3;	if r4 == null goto i0 = virtualinvoke r1.<java.lang.Object: int hashCode()>();	i0 = virtualinvoke r1.<java.lang.Object: int hashCode()>();	$r6 = <org.hibernate.type.descriptor.sql.JdbcTypeJavaClassMappings: org.jboss.logging.Logger log>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JDBC type code mapping not known for class [");	$r7 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]; using custom code [");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r6.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r13);	return i0
;block_num 2