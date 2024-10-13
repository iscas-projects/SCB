(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1939 0)
(declare-sort var3686 0)
(declare-sort var2973 0)
(declare-sort var1853 0)
(declare-sort var866 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2973-init () var2973)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1853) ClassObject)
(declare-fun cast-from-var1939-to-var1853 (var1939) var1853)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var2973 String) void)
(declare-fun cast-from-var2973-to-var866 (var2973) var866)
(declare-const null-var1939 var1939)
(declare-const null-String String)
(declare-const var3438 var1939) ; Statement: r2 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var3438 null-var1939)))
(declare-const var698 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var698 null-String)))
(define-const var1681 var2973 var2973-init) ; Statement: $r10 = new org.hibernate.MappingException 
(define-const var1753 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1753)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1753!1 String)
(assert (= var1753!1 ""))
(assert true)
(define-const var2255 ClassObject (getClass/1258963082 (cast-from-var1939-to-var1853 var3438))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2785 String (getName/-1958580599 var2255)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3401 String (append/672562846 var1753!1 var2785)) ; Statement: $r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1753!2 String)
(assert (= var1753!2 (str.++ var1753!1 var2785)))
(assert true)
(define-const var3761 String (append/672562846 var3401 " does not support sequences")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support sequences") 
(declare-const var3401!1 String)
(assert (= var3401!1 (str.++ var3401 " does not support sequences")))
(assert true)
(define-const var1046 String (toString/-2075883882 var3761)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var1681 var1046)) ; Statement: specialinvoke $r10.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7) 

(declare-const var1681!1 var2973)
(declare-const var1046!1 String)
(define-const var157 var866 (cast-from-var2973-to-var866 var1681!1)) ; Statement: $r11 = (java.lang.Throwable) $r10 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2973-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1939-to-var1853=([org.hibernate.dialect.Dialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var2973-to-var866=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1939=org.hibernate.dialect.Dialect, var3438=r2, var698=r8, var3686=null_type, var2973=org.hibernate.MappingException, var1681=$r10, var1753=$r9, var1853=java.lang.Object, var2255=$r3, var2785=$r4, var3401=$r5, var3761=$r6, var1046=$r7, var866=java.lang.Throwable, var157=$r11}
; {org.hibernate.dialect.Dialect=var1939, r2=var3438, r8=var698, null_type=var3686, org.hibernate.MappingException=var2973, $r10=var1681, $r9=var1753, java.lang.Object=var1853, $r3=var2255, $r4=var2785, $r5=var3401, $r6=var3761, $r7=var1046, java.lang.Throwable=var866, $r11=var157}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.Dialect;	r8 := @parameter0: java.lang.String;	$r10 = new org.hibernate.MappingException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support sequences");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7);	$r11 = (java.lang.Throwable) $r10;	throw $r11
;block_num 1