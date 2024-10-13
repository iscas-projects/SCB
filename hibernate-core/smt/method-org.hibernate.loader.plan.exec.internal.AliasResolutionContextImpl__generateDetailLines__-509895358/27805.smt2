(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2882 0)
(declare-sort var1089 0)
(declare-sort var2892 0)
(declare-sort var1308 0)
(declare-sort var1038 0)
(declare-sort var173 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun generateNodePrefix/1551097630 (var1308 Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1089_getUid/-1971155046 (var1089) String)
(declare-fun extractDetails/2099918858 (var2882 var1089) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var2892 String) void)
(declare-fun resolveSqlTableAliasFromQuerySpaceUid/1597065216 (var2882 String) String)
(declare-fun resolveEntityReferenceAliases/1561594228 (var2882 String) var1038)
(declare-fun resolveCollectionReferenceAliases/-524808706 (var2882 String) var173)
(declare-const null-var2882 var2882)
(declare-const null-var1089 var1089)
(declare-const null-Int Int)
(declare-const null-var2892 var2892)
(declare-const var1308-INSTANCE var1308)
(declare-const null-var1038 var1038)
(declare-const null-var173 var173)
(declare-const var1949 var2882) ; Statement: r8 := @this: org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl 
(assert (not (= var1949 null-var2882)))
(declare-const var1321 var1089) ; Statement: r4 := @parameter0: org.hibernate.loader.plan.spi.QuerySpace 
(assert (not (= var1321 null-var1089)))
(declare-const var1453 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1453 null-Int)))
(declare-const var2642 var2892) ; Statement: r0 := @parameter2: java.io.PrintWriter 
(assert (not (= var2642 null-var2892)))
(define-const var2016 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2016)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2016!1 String)
(assert (= var2016!1 ""))
(define-const var3130 var1308 var1308-INSTANCE) ; Statement: $r2 = <org.hibernate.loader.plan.build.spi.TreePrinterHelper: org.hibernate.loader.plan.build.spi.TreePrinterHelper INSTANCE> 
(assert true)
(define-const var2540 String (generateNodePrefix/1551097630 var3130 var1453)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.loader.plan.build.spi.TreePrinterHelper: java.lang.String generateNodePrefix(int)>(i0) 
(assert true)
(define-const var3733 String (append/672562846 var2016!1 var2540)) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2016!2 String)
(assert (= var2016!2 (str.++ var2016!1 var2540)))
(define-const var2181 String (var1089_getUid/-1971155046 var1321)) ; Statement: $r5 = interfaceinvoke r4.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>() 
(assert true)
(define-const var3667 String (append/672562846 var3733 var2181)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3733!1 String)
(assert (= var3733!1 (str.++ var3733 var2181)))
(assert true)
(define-const var3989 String (append/672562846 var3667 " -> ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var3667!1 String)
(assert (= var3667!1 (str.++ var3667 " -> ")))
(assert true)
(define-const var1277 String (extractDetails/2099918858 var1949 var1321)) ; Statement: $r9 = specialinvoke r8.<org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl: java.lang.String extractDetails(org.hibernate.loader.plan.spi.QuerySpace)>(r4) 
(assert true)
(define-const var503 String (append/672562846 var3989 var1277)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3989!1 String)
(assert (= var3989!1 (str.++ var3989 var1277)))
(assert true)
(define-const var775 String (toString/-2075883882 var503)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var2642 var775)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r12) 

(declare-const var2642!1 var2892)
(declare-const var775!1 String)
(define-const var2795 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2795)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2795!1 String)
(assert (= var2795!1 ""))
(define-const var1344 var1308 var1308-INSTANCE) ; Statement: $r14 = <org.hibernate.loader.plan.build.spi.TreePrinterHelper: org.hibernate.loader.plan.build.spi.TreePrinterHelper INSTANCE> 
(define-const var630 Int (+ var1453 3)) ; Statement: $i1 = i0 + 3 
(assert true)
(define-const var1219 String (generateNodePrefix/1551097630 var1344 var630)) ; Statement: $r15 = virtualinvoke $r14.<org.hibernate.loader.plan.build.spi.TreePrinterHelper: java.lang.String generateNodePrefix(int)>($i1) 
(assert true)
(define-const var1644 String (append/672562846 var2795!1 var1219)) ; Statement: $r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2795!2 String)
(assert (= var2795!2 (str.++ var2795!1 var1219)))
(assert true)
(define-const var497 String (append/672562846 var1644 "SQL table alias mapping - ")) ; Statement: $r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SQL table alias mapping - ") 
(declare-const var1644!1 String)
(assert (= var1644!1 (str.++ var1644 "SQL table alias mapping - ")))
(define-const var2479 String (var1089_getUid/-1971155046 var1321)) ; Statement: $r17 = interfaceinvoke r4.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>() 
(assert true)
(define-const var1137 String (resolveSqlTableAliasFromQuerySpaceUid/1597065216 var1949 var2479)) ; Statement: $r18 = virtualinvoke r8.<org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl: java.lang.String resolveSqlTableAliasFromQuerySpaceUid(java.lang.String)>($r17) 
(assert true)
(define-const var1304 String (append/672562846 var497 var1137)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var497!1 String)
(assert (= var497!1 (str.++ var497 var1137)))
(assert true)
(define-const var2094 String (toString/-2075883882 var1304)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var2642!1 var2094)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r21) 

(declare-const var2642!2 var2892)
(declare-const var2094!1 String)
(define-const var862 String (var1089_getUid/-1971155046 var1321)) ; Statement: $r22 = interfaceinvoke r4.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>() 
(assert true)
(define-const var3431 var1038 (resolveEntityReferenceAliases/1561594228 var1949 var862)) ; Statement: r23 = virtualinvoke r8.<org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl: org.hibernate.loader.plan.exec.spi.EntityReferenceAliases resolveEntityReferenceAliases(java.lang.String)>($r22) 
(define-const var3160 String (var1089_getUid/-1971155046 var1321)) ; Statement: $r24 = interfaceinvoke r4.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>() 
(assert true)
(define-const var1525 var173 (resolveCollectionReferenceAliases/-524808706 var1949 var3160)) ; Statement: r25 = virtualinvoke r8.<org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl: org.hibernate.loader.plan.exec.spi.CollectionReferenceAliases resolveCollectionReferenceAliases(java.lang.String)>($r24) 
 ; Statement: if r23 == null goto (branch) 
(assert (= var3431 null-var1038)) ; Cond: r23 == null 
 ; Statement: if r25 == null goto return 
(assert (= var1525 null-var173)) ; Cond: r25 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), generateNodePrefix/1551097630=([org.hibernate.loader.plan.build.spi.TreePrinterHelper, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1089_getUid/-1971155046=([org.hibernate.loader.plan.spi.QuerySpace], java.lang.String), extractDetails/2099918858=([org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl, org.hibernate.loader.plan.spi.QuerySpace], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), resolveSqlTableAliasFromQuerySpaceUid/1597065216=([org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl, java.lang.String], java.lang.String), resolveEntityReferenceAliases/1561594228=([org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl, java.lang.String], org.hibernate.loader.plan.exec.spi.EntityReferenceAliases), resolveCollectionReferenceAliases/-524808706=([org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl, java.lang.String], org.hibernate.loader.plan.exec.spi.CollectionReferenceAliases)}
; {var2882=org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl, var1949=r8, var1089=org.hibernate.loader.plan.spi.QuerySpace, var1321=r4, var1453=i0, var2892=java.io.PrintWriter, var2642=r0, var2016=$r1, var1308=org.hibernate.loader.plan.build.spi.TreePrinterHelper, var3130=$r2, var2540=$r3, var3733=$r6, var2181=$r5, var3667=$r7, var3989=$r10, var1277=$r9, var503=$r11, var775=$r12, var2795=$r13, var1344=$r14, var630=$i1, var1219=$r15, var1644=$r16, var497=$r19, var2479=$r17, var1137=$r18, var1304=$r20, var2094=$r21, var862=$r22, var1038=org.hibernate.loader.plan.exec.spi.EntityReferenceAliases, var3431=r23, var3160=$r24, var173=org.hibernate.loader.plan.exec.spi.CollectionReferenceAliases, var1525=r25}
; {org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl=var2882, r8=var1949, org.hibernate.loader.plan.spi.QuerySpace=var1089, r4=var1321, i0=var1453, java.io.PrintWriter=var2892, r0=var2642, $r1=var2016, org.hibernate.loader.plan.build.spi.TreePrinterHelper=var1308, $r2=var3130, $r3=var2540, $r6=var3733, $r5=var2181, $r7=var3667, $r10=var3989, $r9=var1277, $r11=var503, $r12=var775, $r13=var2795, $r14=var1344, $i1=var630, $r15=var1219, $r16=var1644, $r19=var497, $r17=var2479, $r18=var1137, $r20=var1304, $r21=var2094, $r22=var862, org.hibernate.loader.plan.exec.spi.EntityReferenceAliases=var1038, r23=var3431, $r24=var3160, org.hibernate.loader.plan.exec.spi.CollectionReferenceAliases=var173, r25=var1525}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r8 := @this: org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl;	r4 := @parameter0: org.hibernate.loader.plan.spi.QuerySpace;	i0 := @parameter1: int;	r0 := @parameter2: java.io.PrintWriter;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = <org.hibernate.loader.plan.build.spi.TreePrinterHelper: org.hibernate.loader.plan.build.spi.TreePrinterHelper INSTANCE>;	$r3 = virtualinvoke $r2.<org.hibernate.loader.plan.build.spi.TreePrinterHelper: java.lang.String generateNodePrefix(int)>(i0);	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = interfaceinvoke r4.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r9 = specialinvoke r8.<org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl: java.lang.String extractDetails(org.hibernate.loader.plan.spi.QuerySpace)>(r4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r12);	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = <org.hibernate.loader.plan.build.spi.TreePrinterHelper: org.hibernate.loader.plan.build.spi.TreePrinterHelper INSTANCE>;	$i1 = i0 + 3;	$r15 = virtualinvoke $r14.<org.hibernate.loader.plan.build.spi.TreePrinterHelper: java.lang.String generateNodePrefix(int)>($i1);	$r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SQL table alias mapping - ");	$r17 = interfaceinvoke r4.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>();	$r18 = virtualinvoke r8.<org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl: java.lang.String resolveSqlTableAliasFromQuerySpaceUid(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r21);	$r22 = interfaceinvoke r4.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>();	r23 = virtualinvoke r8.<org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl: org.hibernate.loader.plan.exec.spi.EntityReferenceAliases resolveEntityReferenceAliases(java.lang.String)>($r22);	$r24 = interfaceinvoke r4.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>();	r25 = virtualinvoke r8.<org.hibernate.loader.plan.exec.internal.AliasResolutionContextImpl: org.hibernate.loader.plan.exec.spi.CollectionReferenceAliases resolveCollectionReferenceAliases(java.lang.String)>($r24);	if r23 == null goto (branch);	if r25 == null goto return;	return
;block_num 3