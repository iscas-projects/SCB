(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2704 0)
(declare-sort var485 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2704 var2704)
(declare-const null-String String)
(declare-const var1155 var2704) ; Statement: r9 := @this: org.hibernate.dialect.identity.H2FinalTableIdentityColumnSupport 
(assert (not (= var1155 null-var2704)))
(declare-const var957 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var957 null-String)))
(declare-const var1855 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1855 null-String)))
(define-const var947 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var947)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var947!1 String)
(assert (= var947!1 ""))
(assert true)
(define-const var3738 String (append/672562846 var947!1 "select ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var947!2 String)
(assert (= var947!2 (str.++ var947!1 "select ")))
(assert true)
(define-const var1610 String (append/672562846 var3738 var957)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3738!1 String)
(assert (= var3738!1 (str.++ var3738 var957)))
(assert true)
(define-const var3145 String (append/672562846 var1610 " from final table ( ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from final table ( ") 
(declare-const var1610!1 String)
(assert (= var1610!1 (str.++ var1610 " from final table ( ")))
(assert true)
(define-const var3384 String (append/672562846 var3145 var1855)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3145!1 String)
(assert (= var3145!1 (str.++ var3145 var1855)))
(assert true)
(define-const var2191 String (append/672562846 var3384 " )")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )") 
(declare-const var3384!1 String)
(assert (= var3384!1 (str.++ var3384 " )")))
(assert true)
(define-const var3597 String (toString/-2075883882 var2191)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2704=org.hibernate.dialect.identity.H2FinalTableIdentityColumnSupport, var1155=r9, var957=r1, var485=null_type, var1855=r4, var947=$r0, var3738=$r2, var1610=$r3, var3145=$r5, var3384=$r6, var2191=$r7, var3597=$r8}
; {org.hibernate.dialect.identity.H2FinalTableIdentityColumnSupport=var2704, r9=var1155, r1=var957, null_type=var485, r4=var1855, $r0=var947, $r2=var3738, $r3=var1610, $r5=var3145, $r6=var3384, $r7=var2191, $r8=var3597}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.dialect.identity.H2FinalTableIdentityColumnSupport;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from final table ( ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1