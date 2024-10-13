(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3037 0)
(declare-sort var1944 0)
(declare-sort var210 0)
(declare-sort var638 0)
(declare-sort var1992 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityOrClassName/-46788054 (var3037) String)
(declare-fun rootAlias/-46788054 (var3037) String)
(declare-fun subcriteriaList/-46788054 (var3037) var210)
(declare-fun toString/-522406933 (var638) String)
(declare-fun cast-from-var210-to-var638 (var210) var638)
(declare-fun criterionEntries/-46788054 (var3037) var210)
(declare-fun projection/-46788054 (var3037) var1992)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3037 var3037)
(declare-const null-String String)
(declare-const null-var1992 var1992)
(declare-const var3906 var3037) ; Statement: r1 := @this: org.hibernate.internal.CriteriaImpl 
(assert (not (= var3906 null-var3037)))
(define-const var3186 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3186)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3186!1 String)
(assert (= var3186!1 ""))
(assert true)
(define-const var1942 String (append/672562846 var3186!1 "CriteriaImpl(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CriteriaImpl(") 
(declare-const var3186!2 String)
(assert (= var3186!2 (str.++ var3186!1 "CriteriaImpl(")))
(define-const var2927 String (entityOrClassName/-46788054 var3906)) ; Statement: $r2 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String entityOrClassName> 
(assert true)
(define-const var3871 String (append/672562846 var1942 var2927)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1942!1 String)
(assert (= var1942!1 (str.++ var1942 var2927)))
(assert true)
(define-const var1479 String (append/672562846 var3871 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3871!1 String)
(assert (= var3871!1 (str.++ var3871 ":")))
(define-const var3511 String (rootAlias/-46788054 var3906)) ; Statement: $r5 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias> 
 ; Statement: if $r5 != null goto $r19 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias> 
(assert (not (not (= var3511 null-String)))) ; Negate: Cond: $r5 != null  
(define-const var2270 String "") ; Statement: $r19 = "" 
 ; Statement: goto [?= $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)] 
(assert true) ; Non Conditional
(assert true)
(define-const var14 String (append/672562846 var1479 var2270)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1479!1 String)
(assert (= var1479!1 (str.++ var1479 var2270)))
(define-const var2987 var210 (subcriteriaList/-46788054 var3906)) ; Statement: $r7 = r1.<org.hibernate.internal.CriteriaImpl: java.util.List subcriteriaList> 
(assert true)
(define-const var446 String (toString/-522406933 (cast-from-var210-to-var638 var2987))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1894 String (append/672562846 var14 var446)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var14!1 String)
(assert (= var14!1 (str.++ var14 var446)))
(define-const var283 var210 (criterionEntries/-46788054 var3906)) ; Statement: $r10 = r1.<org.hibernate.internal.CriteriaImpl: java.util.List criterionEntries> 
(assert true)
(define-const var2336 String (toString/-522406933 (cast-from-var210-to-var638 var283))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3383 String (append/672562846 var1894 var2336)) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1894!1 String)
(assert (= var1894!1 (str.++ var1894 var2336)))
(define-const var1687 var1992 (projection/-46788054 var3906)) ; Statement: $r13 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection> 
 ; Statement: if $r13 != null goto $r14 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection> 
(assert (not (not (= var1687 null-var1992)))) ; Negate: Cond: $r13 != null  
(define-const var372 String "") ; Statement: $r20 = "" 
 ; Statement: goto [?= $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2088 String (append/672562846 var3383 var372)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var3383!1 String)
(assert (= var3383!1 (str.++ var3383 var372)))
(assert true)
(define-const var2938 String (append/-1166366385 var2088 41)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2088!1 String)
(assert (str.prefixof var2088 var2088!1))
(assert true)
(define-const var1202 String (toString/-2075883882 var2938)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityOrClassName/-46788054=([org.hibernate.internal.CriteriaImpl], java.lang.String), rootAlias/-46788054=([org.hibernate.internal.CriteriaImpl], java.lang.String), subcriteriaList/-46788054=([org.hibernate.internal.CriteriaImpl], java.util.List), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var210-to-var638=([java.util.List], java.lang.Object), criterionEntries/-46788054=([org.hibernate.internal.CriteriaImpl], java.util.List), projection/-46788054=([org.hibernate.internal.CriteriaImpl], org.hibernate.criterion.Projection), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3037=org.hibernate.internal.CriteriaImpl, var3906=r1, var3186=$r0, var1942=$r3, var2927=$r2, var3871=$r4, var1479=$r6, var3511=$r5, var1944=null_type, var2270=$r19, var14=$r9, var210=java.util.List, var2987=$r7, var638=java.lang.Object, var446=$r8, var1894=$r12, var283=$r10, var2336=$r11, var3383=$r15, var1992=org.hibernate.criterion.Projection, var1687=$r13, var372=$r20, var2088=$r16, var2938=$r17, var1202=$r18}
; {org.hibernate.internal.CriteriaImpl=var3037, r1=var3906, $r0=var3186, $r3=var1942, $r2=var2927, $r4=var3871, $r6=var1479, $r5=var3511, null_type=var1944, $r19=var2270, $r9=var14, java.util.List=var210, $r7=var2987, java.lang.Object=var638, $r8=var446, $r12=var1894, $r10=var283, $r11=var2336, $r15=var3383, org.hibernate.criterion.Projection=var1992, $r13=var1687, $r20=var372, $r16=var2088, $r17=var2938, $r18=var1202}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.internal.CriteriaImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CriteriaImpl(");	$r2 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String entityOrClassName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias>;	if $r5 != null goto $r19 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias>;	$r19 = "";	goto [?= $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)];	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r7 = r1.<org.hibernate.internal.CriteriaImpl: java.util.List subcriteriaList>;	$r8 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>();	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = r1.<org.hibernate.internal.CriteriaImpl: java.util.List criterionEntries>;	$r11 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>();	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection>;	if $r13 != null goto $r14 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection>;	$r20 = "";	goto [?= $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)];	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 5