(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var304 0)
(declare-sort var1505 0)
(declare-sort var810 0)
(declare-sort var2155 0)
(declare-sort var955 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityOrClassName/-46788054 (var304) String)
(declare-fun rootAlias/-46788054 (var304) String)
(declare-fun subcriteriaList/-46788054 (var304) var810)
(declare-fun toString/-522406933 (var2155) String)
(declare-fun cast-from-var810-to-var2155 (var810) var2155)
(declare-fun criterionEntries/-46788054 (var304) var810)
(declare-fun projection/-46788054 (var304) var955)
(declare-fun cast-from-var955-to-var2155 (var955) var2155)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var304 var304)
(declare-const null-String String)
(declare-const null-var955 var955)
(declare-const var3115 var304) ; Statement: r1 := @this: org.hibernate.internal.CriteriaImpl 
(assert (not (= var3115 null-var304)))
(define-const var2704 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2704)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2704!1 String)
(assert (= var2704!1 ""))
(assert true)
(define-const var2855 String (append/672562846 var2704!1 "CriteriaImpl(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CriteriaImpl(") 
(declare-const var2704!2 String)
(assert (= var2704!2 (str.++ var2704!1 "CriteriaImpl(")))
(define-const var744 String (entityOrClassName/-46788054 var3115)) ; Statement: $r2 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String entityOrClassName> 
(assert true)
(define-const var1976 String (append/672562846 var2855 var744)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2855!1 String)
(assert (= var2855!1 (str.++ var2855 var744)))
(assert true)
(define-const var1624 String (append/672562846 var1976 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1976!1 String)
(assert (= var1976!1 (str.++ var1976 ":")))
(define-const var1512 String (rootAlias/-46788054 var3115)) ; Statement: $r5 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias> 
 ; Statement: if $r5 != null goto $r19 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias> 
(assert (not (not (= var1512 null-String)))) ; Negate: Cond: $r5 != null  
(define-const var3584 String "") ; Statement: $r19 = "" 
 ; Statement: goto [?= $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1360 String (append/672562846 var1624 var3584)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1624!1 String)
(assert (= var1624!1 (str.++ var1624 var3584)))
(define-const var2124 var810 (subcriteriaList/-46788054 var3115)) ; Statement: $r7 = r1.<org.hibernate.internal.CriteriaImpl: java.util.List subcriteriaList> 
(assert true)
(define-const var3156 String (toString/-522406933 (cast-from-var810-to-var2155 var2124))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1788 String (append/672562846 var1360 var3156)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1360!1 String)
(assert (= var1360!1 (str.++ var1360 var3156)))
(define-const var2013 var810 (criterionEntries/-46788054 var3115)) ; Statement: $r10 = r1.<org.hibernate.internal.CriteriaImpl: java.util.List criterionEntries> 
(assert true)
(define-const var3095 String (toString/-522406933 (cast-from-var810-to-var2155 var2013))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1967 String (append/672562846 var1788 var3095)) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1788!1 String)
(assert (= var1788!1 (str.++ var1788 var3095)))
(define-const var2211 var955 (projection/-46788054 var3115)) ; Statement: $r13 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection> 
 ; Statement: if $r13 != null goto $r14 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection> 
(assert (not (= var2211 null-var955))) ; Cond: $r13 != null 
(define-const var2906 var955 (projection/-46788054 var3115)) ; Statement: $r14 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection> 
(assert true)
(define-const var3174 String (toString/-522406933 (cast-from-var955-to-var2155 var2906))) ; Statement: $r20 = virtualinvoke $r14.<java.lang.Object: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3949 String (append/672562846 var1967 var3174)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1967!1 String)
(assert (= var1967!1 (str.++ var1967 var3174)))
(assert true)
(define-const var1585 String (append/-1166366385 var3949 41)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3949!1 String)
(assert (str.prefixof var3949 var3949!1))
(assert true)
(define-const var961 String (toString/-2075883882 var1585)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityOrClassName/-46788054=([org.hibernate.internal.CriteriaImpl], java.lang.String), rootAlias/-46788054=([org.hibernate.internal.CriteriaImpl], java.lang.String), subcriteriaList/-46788054=([org.hibernate.internal.CriteriaImpl], java.util.List), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var810-to-var2155=([java.util.List], java.lang.Object), criterionEntries/-46788054=([org.hibernate.internal.CriteriaImpl], java.util.List), projection/-46788054=([org.hibernate.internal.CriteriaImpl], org.hibernate.criterion.Projection), cast-from-var955-to-var2155=([org.hibernate.criterion.Projection], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var304=org.hibernate.internal.CriteriaImpl, var3115=r1, var2704=$r0, var2855=$r3, var744=$r2, var1976=$r4, var1624=$r6, var1512=$r5, var1505=null_type, var3584=$r19, var1360=$r9, var810=java.util.List, var2124=$r7, var2155=java.lang.Object, var3156=$r8, var1788=$r12, var2013=$r10, var3095=$r11, var1967=$r15, var955=org.hibernate.criterion.Projection, var2211=$r13, var2906=$r14, var3174=$r20, var3949=$r16, var1585=$r17, var961=$r18}
; {org.hibernate.internal.CriteriaImpl=var304, r1=var3115, $r0=var2704, $r3=var2855, $r2=var744, $r4=var1976, $r6=var1624, $r5=var1512, null_type=var1505, $r19=var3584, $r9=var1360, java.util.List=var810, $r7=var2124, java.lang.Object=var2155, $r8=var3156, $r12=var1788, $r10=var2013, $r11=var3095, $r15=var1967, org.hibernate.criterion.Projection=var955, $r13=var2211, $r14=var2906, $r20=var3174, $r16=var3949, $r17=var1585, $r18=var961}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.internal.CriteriaImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CriteriaImpl(");	$r2 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String entityOrClassName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias>;	if $r5 != null goto $r19 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias>;	$r19 = "";	goto [?= $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)];	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r7 = r1.<org.hibernate.internal.CriteriaImpl: java.util.List subcriteriaList>;	$r8 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>();	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = r1.<org.hibernate.internal.CriteriaImpl: java.util.List criterionEntries>;	$r11 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>();	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection>;	if $r13 != null goto $r14 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection>;	$r14 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection>;	$r20 = virtualinvoke $r14.<java.lang.Object: java.lang.String toString()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 5