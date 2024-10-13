(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2490 0)
(declare-sort var217 0)
(declare-sort var981 0)
(declare-sort var408 0)
(declare-sort var2322 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityOrClassName/-46788054 (var2490) String)
(declare-fun rootAlias/-46788054 (var2490) String)
(declare-fun subcriteriaList/-46788054 (var2490) var981)
(declare-fun toString/-522406933 (var408) String)
(declare-fun cast-from-var981-to-var408 (var981) var408)
(declare-fun criterionEntries/-46788054 (var2490) var981)
(declare-fun projection/-46788054 (var2490) var2322)
(declare-fun cast-from-var2322-to-var408 (var2322) var408)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2490 var2490)
(declare-const null-String String)
(declare-const null-var2322 var2322)
(declare-const var2131 var2490) ; Statement: r1 := @this: org.hibernate.internal.CriteriaImpl 
(assert (not (= var2131 null-var2490)))
(define-const var2235 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2235)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2235!1 String)
(assert (= var2235!1 ""))
(assert true)
(define-const var3926 String (append/672562846 var2235!1 "CriteriaImpl(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CriteriaImpl(") 
(declare-const var2235!2 String)
(assert (= var2235!2 (str.++ var2235!1 "CriteriaImpl(")))
(define-const var2123 String (entityOrClassName/-46788054 var2131)) ; Statement: $r2 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String entityOrClassName> 
(assert true)
(define-const var3048 String (append/672562846 var3926 var2123)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3926!1 String)
(assert (= var3926!1 (str.++ var3926 var2123)))
(assert true)
(define-const var1188 String (append/672562846 var3048 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3048!1 String)
(assert (= var3048!1 (str.++ var3048 ":")))
(define-const var1807 String (rootAlias/-46788054 var2131)) ; Statement: $r5 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias> 
 ; Statement: if $r5 != null goto $r19 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias> 
(assert (not (= var1807 null-String))) ; Cond: $r5 != null 
(define-const var422 String (rootAlias/-46788054 var2131)) ; Statement: $r19 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias> 
(assert true) ; Non Conditional
(assert true)
(define-const var3274 String (append/672562846 var1188 var422)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1188!1 String)
(assert (= var1188!1 (str.++ var1188 var422)))
(define-const var3824 var981 (subcriteriaList/-46788054 var2131)) ; Statement: $r7 = r1.<org.hibernate.internal.CriteriaImpl: java.util.List subcriteriaList> 
(assert true)
(define-const var1455 String (toString/-522406933 (cast-from-var981-to-var408 var3824))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2338 String (append/672562846 var3274 var1455)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3274!1 String)
(assert (= var3274!1 (str.++ var3274 var1455)))
(define-const var2284 var981 (criterionEntries/-46788054 var2131)) ; Statement: $r10 = r1.<org.hibernate.internal.CriteriaImpl: java.util.List criterionEntries> 
(assert true)
(define-const var2885 String (toString/-522406933 (cast-from-var981-to-var408 var2284))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1513 String (append/672562846 var2338 var2885)) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2338!1 String)
(assert (= var2338!1 (str.++ var2338 var2885)))
(define-const var53 var2322 (projection/-46788054 var2131)) ; Statement: $r13 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection> 
 ; Statement: if $r13 != null goto $r14 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection> 
(assert (not (= var53 null-var2322))) ; Cond: $r13 != null 
(define-const var1615 var2322 (projection/-46788054 var2131)) ; Statement: $r14 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection> 
(assert true)
(define-const var2681 String (toString/-522406933 (cast-from-var2322-to-var408 var1615))) ; Statement: $r20 = virtualinvoke $r14.<java.lang.Object: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var265 String (append/672562846 var1513 var2681)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1513!1 String)
(assert (= var1513!1 (str.++ var1513 var2681)))
(assert true)
(define-const var2592 String (append/-1166366385 var265 41)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var265!1 String)
(assert (str.prefixof var265 var265!1))
(assert true)
(define-const var899 String (toString/-2075883882 var2592)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityOrClassName/-46788054=([org.hibernate.internal.CriteriaImpl], java.lang.String), rootAlias/-46788054=([org.hibernate.internal.CriteriaImpl], java.lang.String), subcriteriaList/-46788054=([org.hibernate.internal.CriteriaImpl], java.util.List), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var981-to-var408=([java.util.List], java.lang.Object), criterionEntries/-46788054=([org.hibernate.internal.CriteriaImpl], java.util.List), projection/-46788054=([org.hibernate.internal.CriteriaImpl], org.hibernate.criterion.Projection), cast-from-var2322-to-var408=([org.hibernate.criterion.Projection], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2490=org.hibernate.internal.CriteriaImpl, var2131=r1, var2235=$r0, var3926=$r3, var2123=$r2, var3048=$r4, var1188=$r6, var1807=$r5, var217=null_type, var422=$r19, var3274=$r9, var981=java.util.List, var3824=$r7, var408=java.lang.Object, var1455=$r8, var2338=$r12, var2284=$r10, var2885=$r11, var1513=$r15, var2322=org.hibernate.criterion.Projection, var53=$r13, var1615=$r14, var2681=$r20, var265=$r16, var2592=$r17, var899=$r18}
; {org.hibernate.internal.CriteriaImpl=var2490, r1=var2131, $r0=var2235, $r3=var3926, $r2=var2123, $r4=var3048, $r6=var1188, $r5=var1807, null_type=var217, $r19=var422, $r9=var3274, java.util.List=var981, $r7=var3824, java.lang.Object=var408, $r8=var1455, $r12=var2338, $r10=var2284, $r11=var2885, $r15=var1513, org.hibernate.criterion.Projection=var2322, $r13=var53, $r14=var1615, $r20=var2681, $r16=var265, $r17=var2592, $r18=var899}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.internal.CriteriaImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CriteriaImpl(");	$r2 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String entityOrClassName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r5 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias>;	if $r5 != null goto $r19 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias>;	$r19 = r1.<org.hibernate.internal.CriteriaImpl: java.lang.String rootAlias>;	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r7 = r1.<org.hibernate.internal.CriteriaImpl: java.util.List subcriteriaList>;	$r8 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>();	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = r1.<org.hibernate.internal.CriteriaImpl: java.util.List criterionEntries>;	$r11 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>();	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection>;	if $r13 != null goto $r14 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection>;	$r14 = r1.<org.hibernate.internal.CriteriaImpl: org.hibernate.criterion.Projection projection>;	$r20 = virtualinvoke $r14.<java.lang.Object: java.lang.String toString()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 5