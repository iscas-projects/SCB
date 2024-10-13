(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var622 0)
(declare-sort var2498 0)
(declare-sort var1857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1857_root/-814075225 (String) String)
(declare-fun getAliasName/2027875658 (var622 String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var622 var622)
(declare-const null-String String)
(declare-const var613 var622) ; Statement: r2 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var613 null-var622)))
(declare-const var528 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var528 null-String)))
(define-const var961 String (var1857_root/-814075225 var528)) ; Statement: r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String root(java.lang.String)>(r0) 
(assert true)
(define-const var1584 String (getAliasName/2027875658 var613 var961)) ; Statement: r3 = virtualinvoke r2.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.lang.String getAliasName(java.lang.String)>(r1) 
 ; Statement: if r3 == null goto return r0 
(assert (not (= var1584 null-String))) ; Negate: Cond: r3 == null  
(define-const var1578 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1578)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1578!1 String)
(assert (= var1578!1 ""))
(assert true)
(define-const var3537 String (append/672562846 var1578!1 var1584)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1578!2 String)
(assert (= var1578!2 (str.++ var1578!1 var1584)))
(assert true)
(define-const var2945 Int (length/-134980193 var961)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (and true (and (>= var2945 0) (>= (str.len var528) var2945))))
(define-const var3567 String (substring/850833817 var528 var2945)) ; Statement: $r5 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0) 
(assert true)
(define-const var1525 String (append/672562846 var3537 var3567)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3537!1 String)
(assert (= var3537!1 (str.++ var3537 var3567)))
(assert true)
(define-const var3979 String (toString/-2075883882 var1525)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1857_root/-814075225=([java.lang.String], java.lang.String), getAliasName/2027875658=([org.hibernate.hql.internal.classic.QueryTranslatorImpl, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var622=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var613=r2, var528=r0, var2498=null_type, var1857=org.hibernate.internal.util.StringHelper, var961=r1, var1584=r3, var1578=$r4, var3537=$r6, var2945=$i0, var3567=$r5, var1525=$r7, var3979=$r8}
; {org.hibernate.hql.internal.classic.QueryTranslatorImpl=var622, r2=var613, r0=var528, null_type=var2498, org.hibernate.internal.util.StringHelper=var1857, r1=var961, r3=var1584, $r4=var1578, $r6=var3537, $i0=var2945, $r5=var3567, $r7=var1525, $r8=var3979}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	r0 := @parameter0: java.lang.String;	r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String root(java.lang.String)>(r0);	r3 = virtualinvoke r2.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: java.lang.String getAliasName(java.lang.String)>(r1);	if r3 == null goto return r0;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$r5 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2