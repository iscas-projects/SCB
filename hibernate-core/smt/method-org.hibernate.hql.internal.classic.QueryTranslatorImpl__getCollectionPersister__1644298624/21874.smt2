(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1609 0)
(declare-sort var959 0)
(declare-sort var3886 0)
(declare-sort var2329 0)
(declare-sort var3908 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2329-init () var2329)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var2329 String) void)
(declare-fun cast-from-var2329-to-var3908 (var2329) var3908)
(declare-const null-var1609 var1609)
(declare-const null-String String)
(declare-const null-var3886 var3886)
(declare-const var1648 var1609) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var1648 null-var1609)))
(declare-const var1545 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1545 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var373 var3886) ; Statement: $r6 := @caughtexception 
(assert (not (= var373 null-var3886)))
(define-const var2868 var2329 var2329-init) ; Statement: $r21 = new org.hibernate.QueryException 
(define-const var3466 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3466)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3466!1 String)
(assert (= var3466!1 ""))
(assert true)
(define-const var3682 String (append/672562846 var3466!1 "collection role not found: ")) ; Statement: $r9 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection role not found: ") 
(declare-const var3466!2 String)
(assert (= var3466!2 (str.++ var3466!1 "collection role not found: ")))
(assert true)
(define-const var2466 String (append/672562846 var3682 var1545)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3682!1 String)
(assert (= var3682!1 (str.++ var3682 var1545)))
(assert true)
(define-const var3086 String (toString/-2075883882 var2466)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var2868 var3086)) ; Statement: specialinvoke $r21.<org.hibernate.QueryException: void <init>(java.lang.String)>($r11) 

(declare-const var2868!1 var2329)
(declare-const var3086!1 String)
(define-const var17 var3908 (cast-from-var2329-to-var3908 var2868!1)) ; Statement: $r23 = (java.lang.Throwable) $r21 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var2329-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var2329-to-var3908=([org.hibernate.QueryException], java.lang.Throwable)}
; {var1609=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var1648=r0, var1545=r2, var959=null_type, var3886=java.lang.Exception, var373=$r6, var2329=org.hibernate.QueryException, var2868=$r21, var3466=$r20, var3682=$r9, var2466=$r10, var3086=$r11, var3908=java.lang.Throwable, var17=$r23}
; {org.hibernate.hql.internal.classic.QueryTranslatorImpl=var1609, r0=var1648, r2=var1545, null_type=var959, java.lang.Exception=var3886, $r6=var373, org.hibernate.QueryException=var2329, $r21=var2868, $r20=var3466, $r9=var3682, $r10=var2466, $r11=var3086, java.lang.Throwable=var3908, $r23=var17}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	r2 := @parameter0: java.lang.String;	$r6 := @caughtexception;	$r21 = new org.hibernate.QueryException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection role not found: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<org.hibernate.QueryException: void <init>(java.lang.String)>($r11);	$r23 = (java.lang.Throwable) $r21;	throw $r23
;block_num 2