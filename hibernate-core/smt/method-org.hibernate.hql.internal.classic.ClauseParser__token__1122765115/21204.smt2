(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3118 0)
(declare-sort var1270 0)
(declare-sort var2894 0)
(declare-sort var1107 0)
(declare-sort var122 0)
(declare-sort var319 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var1107) String)
(declare-fun parenCount/1796589098 (var3118) Int)
(declare-fun byExpected/1796589098 (var3118) Bool)
(declare-fun var122-init () var122)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var122 String) void)
(declare-fun cast-from-var122-to-var319 (var122) var319)
(declare-const null-var3118 var3118)
(declare-const null-String String)
(declare-const null-var2894 var2894)
(declare-const var1107-ROOT var1107)
(declare-const var1758 var3118) ; Statement: r5 := @this: org.hibernate.hql.internal.classic.ClauseParser 
(assert (not (= var1758 null-var3118)))
(declare-const var760 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var760 null-String)))
(declare-const var2284 var2894) ; Statement: r7 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var2284 null-var2894)))
(define-const var2646 var1107 var1107-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3313 String (toLowerCase/1946809429 var760 var2646)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var912 String "(") ; Statement: $r3 = "(" 
(assert true)
(define-const var3577 Bool (= var912 var760)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = ")" 
(assert (not (= (ite var3577 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1977 Int (parenCount/1796589098 var1758)) ; Statement: $i3 = r5.<org.hibernate.hql.internal.classic.ClauseParser: int parenCount> 
(define-const var785 Int (+ var1977 1)) ; Statement: $i4 = $i3 + 1 
(declare-const var1758!1 var3118)
(assert (not (= var1758!1 null-var3118)))
(assert (= (parenCount/1796589098 var1758!1) var785)) ; Statement: r5.<org.hibernate.hql.internal.classic.ClauseParser: int parenCount> = $i4 
 ; Statement: goto [?= $z12 = r5.<org.hibernate.hql.internal.classic.ClauseParser: boolean byExpected>] 
(assert true) ; Non Conditional
(define-const var1548 Bool (byExpected/1796589098 var1758!1)) ; Statement: $z12 = r5.<org.hibernate.hql.internal.classic.ClauseParser: boolean byExpected> 
 ; Statement: if $z12 == 0 goto $i0 = r5.<org.hibernate.hql.internal.classic.ClauseParser: int parenCount> 
(assert (not (= (ite var1548 1 0) 0))) ; Negate: Cond: $z12 == 0  
(assert true)
(define-const var419 Bool (= var3313 "by")) ; Statement: $z11 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("by") 
 ; Statement: if $z11 != 0 goto $i0 = r5.<org.hibernate.hql.internal.classic.ClauseParser: int parenCount> 
(assert (not (not (= (ite var419 1 0) 0)))) ; Negate: Cond: $z11 != 0  
(define-const var3929 var122 var122-init) ; Statement: $r32 = new org.hibernate.QueryException 
(define-const var2675 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2675)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2675!1 String)
(assert (= var2675!1 ""))
(assert true)
(define-const var2368 String (append/672562846 var2675!1 "BY expected after GROUP or ORDER: ")) ; Statement: $r28 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BY expected after GROUP or ORDER: ") 
(declare-const var2675!2 String)
(assert (= var2675!2 (str.++ var2675!1 "BY expected after GROUP or ORDER: ")))
(assert true)
(define-const var484 String (append/672562846 var2368 var760)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2368!1 String)
(assert (= var2368!1 (str.++ var2368 var760)))
(assert true)
(define-const var3775 String (toString/-2075883882 var484)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var3929 var3775)) ; Statement: specialinvoke $r32.<org.hibernate.QueryException: void <init>(java.lang.String)>($r30) 

(declare-const var3929!1 var122)
(declare-const var3775!1 String)
(define-const var868 var319 (cast-from-var122-to-var319 var3929!1)) ; Statement: $r42 = (java.lang.Throwable) $r32 
 ; Statement: throw $r42 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), parenCount/1796589098=([org.hibernate.hql.internal.classic.ClauseParser], int), byExpected/1796589098=([org.hibernate.hql.internal.classic.ClauseParser], boolean), var122-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var122-to-var319=([org.hibernate.QueryException], java.lang.Throwable)}
; {var3118=org.hibernate.hql.internal.classic.ClauseParser, var1758=r5, var760=r0, var1270=null_type, var2894=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var2284=r7, var1107=java.util.Locale, var2646=$r1, var3313=r2, var912=$r3, var3577=$z0, var1977=$i3, var785=$i4, var1548=$z12, var419=$z11, var122=org.hibernate.QueryException, var3929=$r32, var2675=$r31, var2368=$r28, var484=$r29, var3775=$r30, var319=java.lang.Throwable, var868=$r42}
; {org.hibernate.hql.internal.classic.ClauseParser=var3118, r5=var1758, r0=var760, null_type=var1270, org.hibernate.hql.internal.classic.QueryTranslatorImpl=var2894, r7=var2284, java.util.Locale=var1107, $r1=var2646, r2=var3313, $r3=var912, $z0=var3577, $i3=var1977, $i4=var785, $z12=var1548, $z11=var419, org.hibernate.QueryException=var122, $r32=var3929, $r31=var2675, $r28=var2368, $r29=var484, $r30=var3775, java.lang.Throwable=var319, $r42=var868}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.hql.internal.classic.ClauseParser;	r0 := @parameter0: java.lang.String;	r7 := @parameter1: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r3 = "(";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r4 = ")";	$i3 = r5.<org.hibernate.hql.internal.classic.ClauseParser: int parenCount>;	$i4 = $i3 + 1;	r5.<org.hibernate.hql.internal.classic.ClauseParser: int parenCount> = $i4;	goto [?= $z12 = r5.<org.hibernate.hql.internal.classic.ClauseParser: boolean byExpected>];	$z12 = r5.<org.hibernate.hql.internal.classic.ClauseParser: boolean byExpected>;	if $z12 == 0 goto $i0 = r5.<org.hibernate.hql.internal.classic.ClauseParser: int parenCount>;	$z11 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("by");	if $z11 != 0 goto $i0 = r5.<org.hibernate.hql.internal.classic.ClauseParser: int parenCount>;	$r32 = new org.hibernate.QueryException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BY expected after GROUP or ORDER: ");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r32.<org.hibernate.QueryException: void <init>(java.lang.String)>($r30);	$r42 = (java.lang.Throwable) $r32;	throw $r42
;block_num 5