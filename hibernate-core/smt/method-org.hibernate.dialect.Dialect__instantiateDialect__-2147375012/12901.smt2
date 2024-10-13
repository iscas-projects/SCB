(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var709 0)
(declare-sort var2730 0)
(declare-sort var391 0)
(declare-sort var2132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var391-init () var391)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var391 String) void)
(declare-fun cast-from-var391-to-var2132 (var391) var2132)
(declare-const null-String String)
(declare-const null-var2730 var2730)
(declare-const var2957 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2957 null-String)))
 ; Statement: if r0 != null goto $r1 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.Class classForName(java.lang.String)>(r0) 
(assert (not (not (= var2957 null-String)))) ; Negate: Cond: r0 != null  
(declare-const var2742 var2730) ; Statement: $r11 := @caughtexception 
(assert (not (= var2742 null-var2730)))
(define-const var2039 var391 var391-init) ; Statement: $r19 = new org.hibernate.HibernateException 
(define-const var3988 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3988)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3988!1 String)
(assert (= var3988!1 ""))
(assert true)
(define-const var2673 String (append/672562846 var3988!1 "Dialect class not found: ")) ; Statement: $r14 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dialect class not found: ") 
(declare-const var3988!2 String)
(assert (= var3988!2 (str.++ var3988!1 "Dialect class not found: ")))
(assert true)
(define-const var2465 String (append/672562846 var2673 var2957)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2673!1 String)
(assert (= var2673!1 (str.++ var2673 var2957)))
(assert true)
(define-const var1141 String (toString/-2075883882 var2465)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var2039 var1141)) ; Statement: specialinvoke $r19.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r16) 

(declare-const var2039!1 var391)
(declare-const var1141!1 String)
(define-const var2509 var2132 (cast-from-var391-to-var2132 var2039!1)) ; Statement: $r23 = (java.lang.Throwable) $r19 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var391-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var391-to-var2132=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2957=r0, var709=null_type, var2730=java.lang.ClassNotFoundException, var2742=$r11, var391=org.hibernate.HibernateException, var2039=$r19, var3988=$r18, var2673=$r14, var2465=$r15, var1141=$r16, var2132=java.lang.Throwable, var2509=$r23}
; {r0=var2957, null_type=var709, java.lang.ClassNotFoundException=var2730, $r11=var2742, org.hibernate.HibernateException=var391, $r19=var2039, $r18=var3988, $r14=var2673, $r15=var2465, $r16=var1141, java.lang.Throwable=var2132, $r23=var2509}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $r1 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.Class classForName(java.lang.String)>(r0);	$r11 := @caughtexception;	$r19 = new org.hibernate.HibernateException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dialect class not found: ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r16);	$r23 = (java.lang.Throwable) $r19;	throw $r23
;block_num 2