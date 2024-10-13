(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2003 0)
(declare-sort var207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentProperty/2096745176 (var2003) String)
(declare-fun componentPath/2096745176 (var2003) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2003 var2003)
(declare-const null-String String)
(declare-const var2446 var2003) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser 
(assert (not (= var2446 null-var2003)))
(define-const var7 String (currentProperty/2096745176 var2446)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentProperty> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath> 
(assert (not (= var7 null-String))) ; Cond: $r1 != null 
(define-const var2963 String (componentPath/2096745176 var2446)) ; Statement: $r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath> 
(assert true)
(define-const var789 Int (length/-171891354 var2963)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $r3 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentProperty> 
(assert (not (<= var789 0))) ; Negate: Cond: $i0 <= 0  
(define-const var1845 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1845)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1845!1 String)
(assert (= var1845!1 ""))
(define-const var2846 String (currentProperty/2096745176 var2446)) ; Statement: $r5 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentProperty> 
(assert true)
(define-const var142 String (append/672562846 var1845!1 var2846)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1845!2 String)
(assert (= var1845!2 (str.++ var1845!1 var2846)))
(assert true)
(define-const var2802 String (append/-1166366385 var142 46)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var142!1 String)
(assert (str.prefixof var142 var142!1))
(define-const var2296 String (componentPath/2096745176 var2446)) ; Statement: $r7 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath> 
(assert true)
(define-const var1502 String (toString/-2075883882 var2296)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1438 String (append/672562846 var2802 var1502)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2802!1 String)
(assert (= var2802!1 (str.++ var2802 var1502)))
(assert true)
(define-const var2733 String (toString/-2075883882 var1438)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {currentProperty/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), componentPath/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2003=org.hibernate.hql.internal.classic.PathExpressionParser, var2446=r0, var7=$r1, var207=null_type, var2963=$r2, var789=$i0, var1845=$r4, var2846=$r5, var142=$r6, var2802=$r9, var2296=$r7, var1502=$r8, var1438=$r10, var2733=$r11}
; {org.hibernate.hql.internal.classic.PathExpressionParser=var2003, r0=var2446, $r1=var7, null_type=var207, $r2=var2963, $i0=var789, $r4=var1845, $r5=var2846, $r6=var142, $r9=var2802, $r7=var2296, $r8=var1502, $r10=var1438, $r11=var2733}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser;	$r1 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentProperty>;	if $r1 != null goto $r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath>;	$r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath>;	$i0 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $r3 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentProperty>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentProperty>;	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder componentPath>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 3