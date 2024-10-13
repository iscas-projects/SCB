(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1997 0)
(declare-sort var10 0)
(declare-sort var3201 0)
(declare-sort var2530 0)
(declare-sort var2206 0)
(declare-sort var3496 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPath/-371725074 (var10) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var2530_unroot/945050158 (String) String)
(declare-fun rootCriteria/333213257 (var1997) var2206)
(declare-fun equals/-1650223740 (var3496 var3496) Bool)
(declare-fun cast-from-var3201-to-var3496 (var3201) var3496)
(declare-fun cast-from-var2206-to-var3496 (var2206) var3496)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun cast-from-var3201-to-var10 (var3201) var10)
(declare-fun getWholeAssociationPath/-1842380977 (var1997 var10) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1997 var1997)
(declare-const null-var10 var10)
(declare-const null-var3201 var3201)
(declare-const var376 var1997) ; Statement: r1 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var376 null-var1997)))
(declare-const var416 var10) ; Statement: r0 := @parameter0: org.hibernate.internal.CriteriaImpl$Subcriteria 
(assert (not (= var416 null-var10)))
(assert true)
(define-const var3243 String (getPath/-371725074 var416)) ; Statement: r14 = virtualinvoke r0.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String getPath()>() 
(define-const var1690 var3201 null-var3201) ; Statement: r15 = null 
(assert true)
(define-const var1639 Int (indexOf/-1037706067 var3243 46)) ; Statement: $i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if $i0 <= 0 goto (branch) 
(assert (<= var1639 0)) ; Cond: $i0 <= 0 
 ; Statement: if r15 != null goto r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unroot(java.lang.String)>(r14) 
(assert (not (= var1690 null-var3201))) ; Cond: r15 != null 
(define-const var3243!1 String (var2530_unroot/945050158 var3243)) ; Statement: r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unroot(java.lang.String)>(r14) 
(assert true) ; Non Conditional
(define-const var1015 var2206 (rootCriteria/333213257 var376)) ; Statement: $r2 = r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.internal.CriteriaImpl rootCriteria> 
(assert true)
(define-const var867 Bool (equals/-1650223740 (cast-from-var3201-to-var3496 var1690) (cast-from-var2206-to-var3496 var1015))) ; Statement: $z0 = virtualinvoke r15.<java.lang.Object: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var867 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1112 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1112)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1112!1 String)
(assert (= var1112!1 ""))
(define-const var341 var10 (cast-from-var3201-to-var10 var1690)) ; Statement: $r4 = (org.hibernate.internal.CriteriaImpl$Subcriteria) r15 
(assert true)
(define-const var3634 String (getWholeAssociationPath/-1842380977 var376 var341)) ; Statement: $r5 = specialinvoke r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getWholeAssociationPath(org.hibernate.internal.CriteriaImpl$Subcriteria)>($r4) 
(assert true)
(define-const var2200 String (append/672562846 var1112!1 var3634)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1112!2 String)
(assert (= var1112!2 (str.++ var1112!1 var3634)))
(assert true)
(define-const var669 String (append/-1166366385 var2200 46)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2200!1 String)
(assert (str.prefixof var2200 var2200!1))
(assert true)
(define-const var3268 String (append/672562846 var669 var3243!1)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var669!1 String)
(assert (= var669!1 (str.++ var669 var3243!1)))
(assert true)
(define-const var3143 String (toString/-2075883882 var3268)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getPath/-371725074=([org.hibernate.internal.CriteriaImpl$Subcriteria], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), var2530_unroot/945050158=([java.lang.String], java.lang.String), rootCriteria/333213257=([org.hibernate.loader.criteria.CriteriaQueryTranslator], org.hibernate.internal.CriteriaImpl), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-var3201-to-var3496=([org.hibernate.Criteria], java.lang.Object), cast-from-var2206-to-var3496=([org.hibernate.internal.CriteriaImpl], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-var3201-to-var10=([org.hibernate.Criteria], org.hibernate.internal.CriteriaImpl$Subcriteria), getWholeAssociationPath/-1842380977=([org.hibernate.loader.criteria.CriteriaQueryTranslator, org.hibernate.internal.CriteriaImpl$Subcriteria], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1997=org.hibernate.loader.criteria.CriteriaQueryTranslator, var376=r1, var10=org.hibernate.internal.CriteriaImpl$Subcriteria, var416=r0, var3243=r14, var3201=org.hibernate.Criteria, var1690=r15, var1639=$i0, var2530=org.hibernate.internal.util.StringHelper, var2206=org.hibernate.internal.CriteriaImpl, var1015=$r2, var3496=java.lang.Object, var867=$z0, var1112=$r3, var341=$r4, var3634=$r5, var2200=$r6, var669=$r7, var3268=$r8, var3143=$r9}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var1997, r1=var376, org.hibernate.internal.CriteriaImpl$Subcriteria=var10, r0=var416, r14=var3243, org.hibernate.Criteria=var3201, r15=var1690, $i0=var1639, org.hibernate.internal.util.StringHelper=var2530, org.hibernate.internal.CriteriaImpl=var2206, $r2=var1015, java.lang.Object=var3496, $z0=var867, $r3=var1112, $r4=var341, $r5=var3634, $r6=var2200, $r7=var669, $r8=var3268, $r9=var3143}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	r0 := @parameter0: org.hibernate.internal.CriteriaImpl$Subcriteria;	r14 = virtualinvoke r0.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String getPath()>();	r15 = null;	$i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(46);	if $i0 <= 0 goto (branch);	if r15 != null goto r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unroot(java.lang.String)>(r14);	r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unroot(java.lang.String)>(r14);	$r2 = r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.internal.CriteriaImpl rootCriteria>;	$z0 = virtualinvoke r15.<java.lang.Object: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = (org.hibernate.internal.CriteriaImpl$Subcriteria) r15;	$r5 = specialinvoke r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getWholeAssociationPath(org.hibernate.internal.CriteriaImpl$Subcriteria)>($r4);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 5