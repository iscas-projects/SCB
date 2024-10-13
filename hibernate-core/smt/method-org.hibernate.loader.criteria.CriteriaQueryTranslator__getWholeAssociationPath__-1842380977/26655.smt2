(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var837 0)
(declare-sort var550 0)
(declare-sort var856 0)
(declare-sort var2774 0)
(declare-sort var2931 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPath/-371725074 (var550) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun getParent/-1244588663 (var550) var856)
(declare-fun rootCriteria/333213257 (var837) var2774)
(declare-fun equals/-1650223740 (var2931 var2931) Bool)
(declare-fun cast-from-var856-to-var2931 (var856) var2931)
(declare-fun cast-from-var2774-to-var2931 (var2774) var2931)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun cast-from-var856-to-var550 (var856) var550)
(declare-fun getWholeAssociationPath/-1842380977 (var837 var550) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var837 var837)
(declare-const null-var550 var550)
(declare-const null-var856 var856)
(declare-const var1298 var837) ; Statement: r1 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var1298 null-var837)))
(declare-const var777 var550) ; Statement: r0 := @parameter0: org.hibernate.internal.CriteriaImpl$Subcriteria 
(assert (not (= var777 null-var550)))
(assert true)
(define-const var1524 String (getPath/-371725074 var777)) ; Statement: r14 = virtualinvoke r0.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String getPath()>() 
(define-const var2460 var856 null-var856) ; Statement: r15 = null 
(assert true)
(define-const var3945 Int (indexOf/-1037706067 var1524 46)) ; Statement: $i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if $i0 <= 0 goto (branch) 
(assert (<= var3945 0)) ; Cond: $i0 <= 0 
 ; Statement: if r15 != null goto r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unroot(java.lang.String)>(r14) 
(assert (not (not (= var2460 null-var856)))) ; Negate: Cond: r15 != null  
(assert true)
(define-const var2460!1 var856 (getParent/-1244588663 var777)) ; Statement: r15 = virtualinvoke r0.<org.hibernate.internal.CriteriaImpl$Subcriteria: org.hibernate.Criteria getParent()>() 
 ; Statement: goto [?= $r2 = r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.internal.CriteriaImpl rootCriteria>] 
(assert true) ; Non Conditional
(define-const var3132 var2774 (rootCriteria/333213257 var1298)) ; Statement: $r2 = r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.internal.CriteriaImpl rootCriteria> 
(assert true)
(define-const var2613 Bool (equals/-1650223740 (cast-from-var856-to-var2931 var2460!1) (cast-from-var2774-to-var2931 var3132))) ; Statement: $z0 = virtualinvoke r15.<java.lang.Object: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var2613 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1356 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1356)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1356!1 String)
(assert (= var1356!1 ""))
(define-const var2544 var550 (cast-from-var856-to-var550 var2460!1)) ; Statement: $r4 = (org.hibernate.internal.CriteriaImpl$Subcriteria) r15 
(assert true)
(define-const var1796 String (getWholeAssociationPath/-1842380977 var1298 var2544)) ; Statement: $r5 = specialinvoke r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getWholeAssociationPath(org.hibernate.internal.CriteriaImpl$Subcriteria)>($r4) 
(assert true)
(define-const var760 String (append/672562846 var1356!1 var1796)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1356!2 String)
(assert (= var1356!2 (str.++ var1356!1 var1796)))
(assert true)
(define-const var1302 String (append/-1166366385 var760 46)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var760!1 String)
(assert (str.prefixof var760 var760!1))
(assert true)
(define-const var2032 String (append/672562846 var1302 var1524)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var1302!1 String)
(assert (= var1302!1 (str.++ var1302 var1524)))
(assert true)
(define-const var1638 String (toString/-2075883882 var2032)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getPath/-371725074=([org.hibernate.internal.CriteriaImpl$Subcriteria], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), getParent/-1244588663=([org.hibernate.internal.CriteriaImpl$Subcriteria], org.hibernate.Criteria), rootCriteria/333213257=([org.hibernate.loader.criteria.CriteriaQueryTranslator], org.hibernate.internal.CriteriaImpl), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-var856-to-var2931=([org.hibernate.Criteria], java.lang.Object), cast-from-var2774-to-var2931=([org.hibernate.internal.CriteriaImpl], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-var856-to-var550=([org.hibernate.Criteria], org.hibernate.internal.CriteriaImpl$Subcriteria), getWholeAssociationPath/-1842380977=([org.hibernate.loader.criteria.CriteriaQueryTranslator, org.hibernate.internal.CriteriaImpl$Subcriteria], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var837=org.hibernate.loader.criteria.CriteriaQueryTranslator, var1298=r1, var550=org.hibernate.internal.CriteriaImpl$Subcriteria, var777=r0, var1524=r14, var856=org.hibernate.Criteria, var2460=r15, var3945=$i0, var2774=org.hibernate.internal.CriteriaImpl, var3132=$r2, var2931=java.lang.Object, var2613=$z0, var1356=$r3, var2544=$r4, var1796=$r5, var760=$r6, var1302=$r7, var2032=$r8, var1638=$r9}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var837, r1=var1298, org.hibernate.internal.CriteriaImpl$Subcriteria=var550, r0=var777, r14=var1524, org.hibernate.Criteria=var856, r15=var2460, $i0=var3945, org.hibernate.internal.CriteriaImpl=var2774, $r2=var3132, java.lang.Object=var2931, $z0=var2613, $r3=var1356, $r4=var2544, $r5=var1796, $r6=var760, $r7=var1302, $r8=var2032, $r9=var1638}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	r0 := @parameter0: org.hibernate.internal.CriteriaImpl$Subcriteria;	r14 = virtualinvoke r0.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String getPath()>();	r15 = null;	$i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(46);	if $i0 <= 0 goto (branch);	if r15 != null goto r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unroot(java.lang.String)>(r14);	r15 = virtualinvoke r0.<org.hibernate.internal.CriteriaImpl$Subcriteria: org.hibernate.Criteria getParent()>();	goto [?= $r2 = r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.internal.CriteriaImpl rootCriteria>];	$r2 = r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.internal.CriteriaImpl rootCriteria>;	$z0 = virtualinvoke r15.<java.lang.Object: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = (org.hibernate.internal.CriteriaImpl$Subcriteria) r15;	$r5 = specialinvoke r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getWholeAssociationPath(org.hibernate.internal.CriteriaImpl$Subcriteria)>($r4);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 5