(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2515 0)
(declare-sort var3617 0)
(declare-sort var961 0)
(declare-sort var2786 0)
(declare-sort var2429 0)
(declare-sort var826 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namedParameters/916737798 (var2515) var961)
(declare-fun var961_get/1088891777 (var961 var2786) var2786)
(declare-fun cast-from-String-to-var2786 (String) var2786)
(declare-fun var2429-init () var2429)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun queryString/916737798 (var2515) String)
(declare-fun <init>/-829781272 (var2429 String String) void)
(declare-fun cast-from-var2429-to-var826 (var2429) var826)
(declare-const null-var2515 var2515)
(declare-const null-String String)
(declare-const null-var2786 var2786)
(declare-const var2011 var2515) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var2011 null-var2515)))
(declare-const var3944 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3944 null-String)))
(define-const var1940 var961 (namedParameters/916737798 var2011)) ; Statement: $r2 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.Map namedParameters> 
(define-const var1299 var2786 (var961_get/1088891777 var1940 (cast-from-String-to-var2786 var3944))) ; Statement: r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
 ; Statement: if r3 != null goto $z0 = r3 instanceof java.lang.Integer 
(assert (not (not (= var1299 null-var2786)))) ; Negate: Cond: r3 != null  
(define-const var2179 var2429 var2429-init) ; Statement: $r15 = new org.hibernate.QueryException 
(define-const var2440 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2440)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2440!1 String)
(assert (= var2440!1 ""))
(assert true)
(define-const var3791 String (append/672562846 var2440!1 "Named parameter does not appear in Query: ")) ; Statement: $r10 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Named parameter does not appear in Query: ") 
(declare-const var2440!2 String)
(assert (= var2440!2 (str.++ var2440!1 "Named parameter does not appear in Query: ")))
(assert true)
(define-const var1141 String (append/672562846 var3791 var3944)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3791!1 String)
(assert (= var3791!1 (str.++ var3791 var3944)))
(assert true)
(define-const var3123 String (toString/-2075883882 var1141)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2158 String (queryString/916737798 var2011)) ; Statement: $r12 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.lang.String queryString> 
(assert true)
;(assert (<init>/-829781272 var2179 var3123 var2158)) ; Statement: specialinvoke $r15.<org.hibernate.QueryException: void <init>(java.lang.String,java.lang.String)>($r13, $r12) 

(declare-const var2179!1 var2429)
(declare-const var3123!1 String)
(declare-const var2158!1 String)
(define-const var943 var826 (cast-from-var2429-to-var826 var2179!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {namedParameters/916737798=([org.hibernate.hql.internal.classic.QueryTranslatorImpl], java.util.Map), var961_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2786=([java.lang.String], java.lang.Object), var2429-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), queryString/916737798=([org.hibernate.hql.internal.classic.QueryTranslatorImpl], java.lang.String), <init>/-829781272=([org.hibernate.QueryException, java.lang.String, java.lang.String], void), cast-from-var2429-to-var826=([org.hibernate.QueryException], java.lang.Throwable)}
; {var2515=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var2011=r0, var3944=r1, var3617=null_type, var961=java.util.Map, var1940=$r2, var2786=java.lang.Object, var1299=r3, var2429=org.hibernate.QueryException, var2179=$r15, var2440=$r14, var3791=$r10, var1141=$r11, var3123=$r13, var2158=$r12, var826=java.lang.Throwable, var943=$r16}
; {org.hibernate.hql.internal.classic.QueryTranslatorImpl=var2515, r0=var2011, r1=var3944, null_type=var3617, java.util.Map=var961, $r2=var1940, java.lang.Object=var2786, r3=var1299, org.hibernate.QueryException=var2429, $r15=var2179, $r14=var2440, $r10=var3791, $r11=var1141, $r13=var3123, $r12=var2158, java.lang.Throwable=var826, $r16=var943}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.util.Map namedParameters>;	r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	if r3 != null goto $z0 = r3 instanceof java.lang.Integer;	$r15 = new org.hibernate.QueryException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Named parameter does not appear in Query: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.lang.String queryString>;	specialinvoke $r15.<org.hibernate.QueryException: void <init>(java.lang.String,java.lang.String)>($r13, $r12);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 2