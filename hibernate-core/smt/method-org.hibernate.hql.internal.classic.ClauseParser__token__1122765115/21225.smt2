(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3864 0)
(declare-sort var1458 0)
(declare-sort var1128 0)
(declare-sort var3437 0)
(declare-sort var1047 0)
(declare-sort var1986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var3437) String)
(declare-fun byExpected/1796589098 (var3864) Bool)
(declare-fun var1047-init () var1047)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var1047 String) void)
(declare-fun cast-from-var1047-to-var1986 (var1047) var1986)
(declare-const null-var3864 var3864)
(declare-const null-String String)
(declare-const null-var1128 var1128)
(declare-const var3437-ROOT var3437)
(declare-const var1898 var3864) ; Statement: r5 := @this: org.hibernate.hql.internal.classic.ClauseParser 
(assert (not (= var1898 null-var3864)))
(declare-const var3511 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3511 null-String)))
(declare-const var1273 var1128) ; Statement: r7 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var1273 null-var1128)))
(define-const var972 var3437 var3437-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1513 String (toLowerCase/1946809429 var3511 var972)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var2150 String "(") ; Statement: $r3 = "(" 
(assert true)
(define-const var2785 Bool (= var2150 var3511)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = ")" 
(assert (= (ite var2785 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3338 String ")") ; Statement: $r4 = ")" 
(assert true)
(define-const var3107 Bool (= var3338 var3511)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 == 0 goto $z12 = r5.<org.hibernate.hql.internal.classic.ClauseParser: boolean byExpected> 
(assert (= (ite var3107 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2356 Bool (byExpected/1796589098 var1898)) ; Statement: $z12 = r5.<org.hibernate.hql.internal.classic.ClauseParser: boolean byExpected> 
 ; Statement: if $z12 == 0 goto $i0 = r5.<org.hibernate.hql.internal.classic.ClauseParser: int parenCount> 
(assert (not (= (ite var2356 1 0) 0))) ; Negate: Cond: $z12 == 0  
(assert true)
(define-const var2326 Bool (= var1513 "by")) ; Statement: $z11 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("by") 
 ; Statement: if $z11 != 0 goto $i0 = r5.<org.hibernate.hql.internal.classic.ClauseParser: int parenCount> 
(assert (not (not (= (ite var2326 1 0) 0)))) ; Negate: Cond: $z11 != 0  
(define-const var2336 var1047 var1047-init) ; Statement: $r32 = new org.hibernate.QueryException 
(define-const var3070 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3070)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3070!1 String)
(assert (= var3070!1 ""))
(assert true)
(define-const var3304 String (append/672562846 var3070!1 "BY expected after GROUP or ORDER: ")) ; Statement: $r28 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BY expected after GROUP or ORDER: ") 
(declare-const var3070!2 String)
(assert (= var3070!2 (str.++ var3070!1 "BY expected after GROUP or ORDER: ")))
(assert true)
(define-const var3999 String (append/672562846 var3304 var3511)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3304!1 String)
(assert (= var3304!1 (str.++ var3304 var3511)))
(assert true)
(define-const var3519 String (toString/-2075883882 var3999)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var2336 var3519)) ; Statement: specialinvoke $r32.<org.hibernate.QueryException: void <init>(java.lang.String)>($r30) 

(declare-const var2336!1 var1047)
(declare-const var3519!1 String)
(define-const var2708 var1986 (cast-from-var1047-to-var1986 var2336!1)) ; Statement: $r42 = (java.lang.Throwable) $r32 
 ; Statement: throw $r42 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), byExpected/1796589098=([org.hibernate.hql.internal.classic.ClauseParser], boolean), var1047-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var1047-to-var1986=([org.hibernate.QueryException], java.lang.Throwable)}
; {var3864=org.hibernate.hql.internal.classic.ClauseParser, var1898=r5, var3511=r0, var1458=null_type, var1128=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var1273=r7, var3437=java.util.Locale, var972=$r1, var1513=r2, var2150=$r3, var2785=$z0, var3338=$r4, var3107=$z1, var2356=$z12, var2326=$z11, var1047=org.hibernate.QueryException, var2336=$r32, var3070=$r31, var3304=$r28, var3999=$r29, var3519=$r30, var1986=java.lang.Throwable, var2708=$r42}
; {org.hibernate.hql.internal.classic.ClauseParser=var3864, r5=var1898, r0=var3511, null_type=var1458, org.hibernate.hql.internal.classic.QueryTranslatorImpl=var1128, r7=var1273, java.util.Locale=var3437, $r1=var972, r2=var1513, $r3=var2150, $z0=var2785, $r4=var3338, $z1=var3107, $z12=var2356, $z11=var2326, org.hibernate.QueryException=var1047, $r32=var2336, $r31=var3070, $r28=var3304, $r29=var3999, $r30=var3519, java.lang.Throwable=var1986, $r42=var2708}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 3,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.hql.internal.classic.ClauseParser;	r0 := @parameter0: java.lang.String;	r7 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r3 = "(";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r4 = ")";	$r4 = ")";	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 == 0 goto $z12 = r5.<org.hibernate.hql.internal.classic.ClauseParser: boolean byExpected>;	$z12 = r5.<org.hibernate.hql.internal.classic.ClauseParser: boolean byExpected>;	if $z12 == 0 goto $i0 = r5.<org.hibernate.hql.internal.classic.ClauseParser: int parenCount>;	$z11 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("by");	if $z11 != 0 goto $i0 = r5.<org.hibernate.hql.internal.classic.ClauseParser: int parenCount>;	$r32 = new org.hibernate.QueryException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BY expected after GROUP or ORDER: ");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r32.<org.hibernate.QueryException: void <init>(java.lang.String)>($r30);	$r42 = (java.lang.Throwable) $r32;	throw $r42
;block_num 5