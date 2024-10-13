(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1795 0)
(declare-sort var3233 0)
(declare-sort var1628 0)
(declare-sort var2404 0)
(declare-sort var2747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityOrClassName/-46788054 (var1795) String)
(declare-fun rootAlias/-46788054 (var1795) String)
(declare-fun subcriteriaList/-46788054 (var1795) var1628)
(declare-fun toString/-522406933 (var2404) String)
(declare-fun cast-from-var1628-to-var2404 (var1628) var2404)
(declare-fun criterionEntries/-46788054 (var1795) var1628)
(declare-fun projection/-46788054 (var1795) var2747)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1795 var1795)
(declare-const null-String String)
(declare-const null-var2747 var2747)
(declare-const var67 var1795) ; Statement: r1 := @this: org.hibernate.internal.CriteriaImpl 
(assert (not (= var67 null-var1795)))
(define-const var1456 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1456)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1456!1 String)
(assert (= var1456!1 ""))
(assert true)
(define-const var1424 String (append/672562846 var1456!1 "CriteriaImpl(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CriteriaImpl(") 
(declare-const var1456!2 String)
(assert (= var1456!2 (str.++ var1456!1 "CriteriaImpl(")))
(define-const var1819 String (entityOrClassName/-46788054 var67)) ; Statement: $r2 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String entityOrClassName> 
(assert true)
(define-const var1047 String (append/672562846 var1424 var1819)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1424!1 String)
(assert (= var1424!1 (str.++ var1424 var1819)))
(assert true)
(define-const var1973 String (append/672562846 var1047 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1047!1 String)
(assert (= var1047!1 (str.++ var1047 ":")))
(define-const var3102 String (rootAlias/-46788054 var67)) ; Statement: $r5 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias> 
 ; Statement: if $r5 != null goto $r19 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias> 
(assert (not (= var3102 null-String))) ; Cond: $r5 != null 
(define-const var2033 String (rootAlias/-46788054 var67)) ; Statement: $r19 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias> 
(assert true) ; Non Conditional
(assert true)
(define-const var1051 String (append/672562846 var1973 var2033)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1973!1 String)
(assert (= var1973!1 (str.++ var1973 var2033)))
(define-const var2307 var1628 (subcriteriaList/-46788054 var67)) ; Statement: $r7 = r1.<org.hibernate.internal.CriteriaImpl: java.util.List subcriteriaList> 
(assert true)
(define-const var257 String (toString/-522406933 (cast-from-var1628-to-var2404 var2307))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2134 String (append/672562846 var1051 var257)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1051!1 String)
(assert (= var1051!1 (str.++ var1051 var257)))
(define-const var891 var1628 (criterionEntries/-46788054 var67)) ; Statement: $r10 = r1.<org.hibernate.internal.CriteriaImpl: java.util.List criterionEntries> 
(assert true)
(define-const var1768 String (toString/-522406933 (cast-from-var1628-to-var2404 var891))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1473 String (append/672562846 var2134 var1768)) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2134!1 String)
(assert (= var2134!1 (str.++ var2134 var1768)))
(define-const var1408 var2747 (projection/-46788054 var67)) ; Statement: $r13 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection> 
 ; Statement: if $r13 != null goto $r14 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection> 
(assert (not (not (= var1408 null-var2747)))) ; Negate: Cond: $r13 != null  
(define-const var2379 String "") ; Statement: $r20 = "" 
 ; Statement: goto [?= $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3002 String (append/672562846 var1473 var2379)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1473!1 String)
(assert (= var1473!1 (str.++ var1473 var2379)))
(assert true)
(define-const var1366 String (append/-1166366385 var3002 41)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3002!1 String)
(assert (str.prefixof var3002 var3002!1))
(assert true)
(define-const var1049 String (toString/-2075883882 var1366)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityOrClassName/-46788054=([org.hibernate.internal.CriteriaImpl], java.lang.String), rootAlias/-46788054=([org.hibernate.internal.CriteriaImpl], java.lang.String), subcriteriaList/-46788054=([org.hibernate.internal.CriteriaImpl], java.util.List), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1628-to-var2404=([java.util.List], java.lang.Object), criterionEntries/-46788054=([org.hibernate.internal.CriteriaImpl], java.util.List), projection/-46788054=([org.hibernate.internal.CriteriaImpl], org.hibernate.criterion.Projection), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1795=org.hibernate.internal.CriteriaImpl, var67=r1, var1456=$r0, var1424=$r3, var1819=$r2, var1047=$r4, var1973=$r6, var3102=$r5, var3233=null_type, var2033=$r19, var1051=$r9, var1628=java.util.List, var2307=$r7, var2404=java.lang.Object, var257=$r8, var2134=$r12, var891=$r10, var1768=$r11, var1473=$r15, var2747=org.hibernate.criterion.Projection, var1408=$r13, var2379=$r20, var3002=$r16, var1366=$r17, var1049=$r18}
; {org.hibernate.internal.CriteriaImpl=var1795, r1=var67, $r0=var1456, $r3=var1424, $r2=var1819, $r4=var1047, $r6=var1973, $r5=var3102, null_type=var3233, $r19=var2033, $r9=var1051, java.util.List=var1628, $r7=var2307, java.lang.Object=var2404, $r8=var257, $r12=var2134, $r10=var891, $r11=var1768, $r15=var1473, org.hibernate.criterion.Projection=var2747, $r13=var1408, $r20=var2379, $r16=var3002, $r17=var1366, $r18=var1049}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.internal.CriteriaImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CriteriaImpl(");	$r2 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String entityOrClassName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias>;	if $r5 != null goto $r19 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias>;	$r19 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias>;	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r7 = r1.<org.hibernate.internal.CriteriaImpl: java.util.List subcriteriaList>;	$r8 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>();	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = r1.<org.hibernate.internal.CriteriaImpl: java.util.List criterionEntries>;	$r11 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>();	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection>;	if $r13 != null goto $r14 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection>;	$r20 = "";	goto [?= $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)];	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 5