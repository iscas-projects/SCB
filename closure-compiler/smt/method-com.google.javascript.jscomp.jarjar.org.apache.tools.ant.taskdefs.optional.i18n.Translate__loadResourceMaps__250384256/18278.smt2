(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1929 0)
(declare-sort var1555 0)
(declare-sort var880 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1555-init () var1555)
(declare-fun bundleLanguage/965132528 (var1929) String)
(declare-fun bundleCountry/965132528 (var1929) String)
(declare-fun bundleVariant/965132528 (var1929) String)
(declare-fun <init>/492115872 (var1555 String String String) void)
(declare-fun getLanguage/1066037614 (var1555) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getCountry/-945186178 (var1555) String)
(declare-fun getVariant/1821738799 (var1555) String)
(declare-fun bundle/965132528 (var1929) String)
(declare-fun processBundle/-1320493310 (var1929 String Int Bool) void)
(declare-fun var1555_getDefault/-641693464 () var1555)
(declare-fun var880_getProperty/258823597 (String) String)
(declare-fun bundleEncoding/965132528 (var1929) String)
(declare-const null-var1929 var1929)
(declare-const var1101 var1929) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate 
(assert (not (= var1101 null-var1929)))
(define-const var94 var1555 var1555-init) ; Statement: $r0 = new java.util.Locale 
(define-const var2454 String (bundleLanguage/965132528 var1101)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage> 
(define-const var489 String (bundleCountry/965132528 var1101)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry> 
(define-const var890 String (bundleVariant/965132528 var1101)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant> 
(assert true)
;(assert (<init>/492115872 var94 var2454 var489 var890)) ; Statement: specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2) 

(declare-const var94!1 var1555)
(declare-const var2454!1 String)
(declare-const var489!1 String)
(declare-const var890!1 String)
(assert true)
(define-const var2000 String (getLanguage/1066037614 var94!1)) ; Statement: $r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var3691 Bool (isEmpty/-1285796103 var2000)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.StringBuilder 
(assert (= (ite var3691 1 0) 0)) ; Cond: $z0 == 0 
(define-const var857 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var857)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var857!1 String)
(assert (= var857!1 ""))
(assert true)
(define-const var870 String (append/672562846 var857!1 "_")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var857!2 String)
(assert (= var857!2 (str.++ var857!1 "_")))
(assert true)
(define-const var2728 String (getLanguage/1066037614 var94!1)) ; Statement: $r7 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var303 String (append/672562846 var870 var2728)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var870!1 String)
(assert (= var870!1 (str.++ var870 var2728)))
(assert true)
(define-const var3408 String (toString/-2075883882 var303)) ; Statement: $r74 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3502 String var3408) ; Statement: r75 = $r74 
(assert true)
(define-const var3053 String (getCountry/-945186178 var94!1)) ; Statement: $r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var3136 Bool (isEmpty/-1285796103 var3053)) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r11 = new java.lang.StringBuilder 
(assert (not (= (ite var3136 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2132 String "") ; Statement: $r76 = "" 
 ; Statement: goto [?= r77 = $r76] 
(assert true) ; Non Conditional
(define-const var3784 String var2132) ; Statement: r77 = $r76 
(assert true)
(define-const var616 String (getVariant/1821738799 var94!1)) ; Statement: $r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var214 Bool (isEmpty/-1285796103 var616)) ; Statement: $z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (= (ite var214 1 0) 0)) ; Cond: $z2 == 0 
(define-const var378 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var378)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var378!1 String)
(assert (= var378!1 ""))
(assert true)
(define-const var1700 String (append/672562846 var378!1 "_")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var378!2 String)
(assert (= var378!2 (str.++ var378!1 "_")))
(assert true)
(define-const var2667 String (getVariant/1821738799 var94!1)) ; Statement: $r17 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var448 String (append/672562846 var1700 var2667)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1700!1 String)
(assert (= var1700!1 (str.++ var1700 var2667)))
(assert true)
(define-const var3572 String (toString/-2075883882 var448)) ; Statement: $r78 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2746 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2746)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2746!1 String)
(assert (= var2746!1 ""))
(define-const var368 String (bundle/965132528 var1101)) ; Statement: $r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var1353 String (append/672562846 var2746!1 var368)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2746!2 String)
(assert (= var2746!2 (str.++ var2746!1 var368)))
(assert true)
(define-const var3418 String (append/672562846 var1353 var3502)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var1353!1 String)
(assert (= var1353!1 (str.++ var1353 var3502)))
(assert true)
(define-const var2321 String (append/672562846 var3418 var3784)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var3418!1 String)
(assert (= var3418!1 (str.++ var3418 var3784)))
(assert true)
(define-const var3654 String (append/672562846 var2321 var3572)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78) 
(declare-const var2321!1 String)
(assert (= var2321!1 (str.++ var2321 var3572)))
(assert true)
(define-const var2080 String (toString/-2075883882 var3654)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1101 var2080 0 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0) 

(declare-const var1101!1 var1929)
(declare-const var2080!1 String)
(declare-const var2459 Int)
(declare-const var2459!1 Int)
(define-const var311 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var311)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var311!1 String)
(assert (= var311!1 ""))
(define-const var1774 String (bundle/965132528 var1101!1)) ; Statement: $r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var1477 String (append/672562846 var311!1 var1774)) ; Statement: $r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var311!2 String)
(assert (= var311!2 (str.++ var311!1 var1774)))
(assert true)
(define-const var3575 String (append/672562846 var1477 var3502)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var1477!1 String)
(assert (= var1477!1 (str.++ var1477 var3502)))
(assert true)
(define-const var3437 String (append/672562846 var3575 var3784)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var3575!1 String)
(assert (= var3575!1 (str.++ var3575 var3784)))
(assert true)
(define-const var3772 String (toString/-2075883882 var3437)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1101!1 var3772 1 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0) 

(declare-const var1101!2 var1929)
(declare-const var3772!1 String)
(declare-const var1594 Int)
(declare-const var2459!2 Int)
(define-const var3225 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3225)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3225!1 String)
(assert (= var3225!1 ""))
(define-const var547 String (bundle/965132528 var1101!2)) ; Statement: $r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var11 String (append/672562846 var3225!1 var547)) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var3225!2 String)
(assert (= var3225!2 (str.++ var3225!1 var547)))
(assert true)
(define-const var3340 String (append/672562846 var11 var3502)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var11!1 String)
(assert (= var11!1 (str.++ var11 var3502)))
(assert true)
(define-const var270 String (toString/-2075883882 var3340)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1101!2 var270 2 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0) 

(declare-const var1101!3 var1929)
(declare-const var270!1 String)
(declare-const var2288 Int)
(declare-const var2459!3 Int)
(define-const var2682 String (bundle/965132528 var1101!3)) ; Statement: $r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
;(assert (processBundle/-1320493310 var1101!3 var2682 3 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0) 

(declare-const var1101!4 var1929)
(declare-const var2682!1 String)
(declare-const var2009 Int)
(declare-const var2459!4 Int)
(define-const var1097 var1555 var1555_getDefault/-641693464) ; Statement: $r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert true)
(define-const var1973 String (getLanguage/1066037614 var1097)) ; Statement: $r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var889 Bool (isEmpty/-1285796103 var1973)) ; Statement: $z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z3 == 0 goto $r40 = new java.lang.StringBuilder 
(assert (not (= (ite var889 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var3683 String "") ; Statement: $r79 = "" 
 ; Statement: goto [?= r80 = $r79] 
(assert true) ; Non Conditional
(define-const var3601 String var3683) ; Statement: r80 = $r79 
(assert true)
(define-const var3959 String (getCountry/-945186178 var1097)) ; Statement: $r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var366 Bool (isEmpty/-1285796103 var3959)) ; Statement: $z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z4 == 0 goto $r45 = new java.lang.StringBuilder 
(assert (not (= (ite var366 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var3909 String "") ; Statement: $r81 = "" 
 ; Statement: goto [?= r82 = $r81] 
(assert true) ; Non Conditional
(define-const var834 String var3909) ; Statement: r82 = $r81 
(assert true)
(define-const var573 String (getVariant/1821738799 var1097)) ; Statement: $r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var3174 Bool (isEmpty/-1285796103 var573)) ; Statement: $z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z5 == 0 goto $r50 = new java.lang.StringBuilder 
(assert (= (ite var3174 1 0) 0)) ; Cond: $z5 == 0 
(define-const var2314 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2314)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2314!1 String)
(assert (= var2314!1 ""))
(assert true)
(define-const var2482 String (append/672562846 var2314!1 "_")) ; Statement: $r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2314!2 String)
(assert (= var2314!2 (str.++ var2314!1 "_")))
(assert true)
(define-const var1366 String (getVariant/1821738799 var1097)) ; Statement: $r51 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var1155 String (append/672562846 var2482 var1366)) ; Statement: $r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r51) 
(declare-const var2482!1 String)
(assert (= var2482!1 (str.++ var2482 var1366)))
(assert true)
(define-const var1116 String (toString/-2075883882 var1155)) ; Statement: $r83 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1407 String (var880_getProperty/258823597 "file.encoding")) ; Statement: $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding") 
(declare-const var1101!5 var1929)
(assert (not (= var1101!5 null-var1929)))
(assert (= (bundleEncoding/965132528 var1101!5) var1407)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54 
(define-const var522 String String-init) ; Statement: $r55 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var522)) ; Statement: specialinvoke $r55.<java.lang.StringBuilder: void <init>()>() 
(declare-const var522!1 String)
(assert (= var522!1 ""))
(define-const var4 String (bundle/965132528 var1101!5)) ; Statement: $r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var3854 String (append/672562846 var522!1 var4)) ; Statement: $r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var522!2 String)
(assert (= var522!2 (str.++ var522!1 var4)))
(assert true)
(define-const var2351 String (append/672562846 var3854 var3601)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var3854!1 String)
(assert (= var3854!1 (str.++ var3854 var3601)))
(assert true)
(define-const var3624 String (append/672562846 var2351 var834)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var2351!1 String)
(assert (= var2351!1 (str.++ var2351 var834)))
(assert true)
(define-const var2433 String (append/672562846 var3624 var1116)) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83) 
(declare-const var3624!1 String)
(assert (= var3624!1 (str.++ var3624 var1116)))
(assert true)
(define-const var3481 String (toString/-2075883882 var2433)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1101!5 var3481 4 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0) 

(declare-const var1101!6 var1929)
(declare-const var3481!1 String)
(declare-const var3191 Int)
(declare-const var2459!5 Int)
(define-const var3748 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3748)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3748!1 String)
(assert (= var3748!1 ""))
(define-const var1125 String (bundle/965132528 var1101!6)) ; Statement: $r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var3687 String (append/672562846 var3748!1 var1125)) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var3748!2 String)
(assert (= var3748!2 (str.++ var3748!1 var1125)))
(assert true)
(define-const var3782 String (append/672562846 var3687 var3601)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var3687!1 String)
(assert (= var3687!1 (str.++ var3687 var3601)))
(assert true)
(define-const var1376 String (append/672562846 var3782 var834)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var3782!1 String)
(assert (= var3782!1 (str.++ var3782 var834)))
(assert true)
(define-const var2663 String (toString/-2075883882 var1376)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1101!6 var2663 5 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0) 

(declare-const var1101!7 var1929)
(declare-const var2663!1 String)
(declare-const var352 Int)
(declare-const var2459!6 Int)
(define-const var1588 String String-init) ; Statement: $r68 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1588)) ; Statement: specialinvoke $r68.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1588!1 String)
(assert (= var1588!1 ""))
(define-const var1801 String (bundle/965132528 var1101!7)) ; Statement: $r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var2151 String (append/672562846 var1588!1 var1801)) ; Statement: $r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69) 
(declare-const var1588!2 String)
(assert (= var1588!2 (str.++ var1588!1 var1801)))
(assert true)
(define-const var1289 String (append/672562846 var2151 var3601)) ; Statement: $r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var2151!1 String)
(assert (= var2151!1 (str.++ var2151 var3601)))
(assert true)
(define-const var2182 String (toString/-2075883882 var1289)) ; Statement: $r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1101!7 var2182 6 (ite (= 1 1) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1) 

(declare-const var1101!8 var1929)
(declare-const var2182!1 String)
(declare-const var3178 Int)
(declare-const var1594!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1555-init=([], java.util.Locale), bundleLanguage/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleCountry/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleVariant/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), <init>/492115872=([java.util.Locale, java.lang.String, java.lang.String, java.lang.String], void), getLanguage/1066037614=([java.util.Locale], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getCountry/-945186178=([java.util.Locale], java.lang.String), getVariant/1821738799=([java.util.Locale], java.lang.String), bundle/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), processBundle/-1320493310=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, java.lang.String, int, boolean], void), var1555_getDefault/-641693464=([], java.util.Locale), var880_getProperty/258823597=([java.lang.String], java.lang.String), bundleEncoding/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String)}
; {var1929=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, var1101=r1, var1555=java.util.Locale, var94=$r0, var2454=$r4, var489=$r3, var890=$r2, var2000=$r5, var3691=$z0, var857=$r6, var870=$r8, var2728=$r7, var303=$r9, var3408=$r74, var3502=r75, var3053=$r10, var3136=$z1, var2132=$r76, var3784=r77, var616=$r15, var214=$z2, var378=$r16, var1700=$r18, var2667=$r17, var448=$r19, var3572=$r78, var2746=$r20, var368=$r21, var1353=$r22, var3418=$r23, var2321=$r24, var3654=$r25, var2080=$r26, var2459=0, var311=$r27, var1774=$r28, var1477=$r29, var3575=$r30, var3437=$r31, var3772=$r32, var1594=1, var3225=$r33, var547=$r34, var11=$r35, var3340=$r36, var270=$r37, var2288=2, var2682=$r38, var2009=3, var1097=$r73, var1973=$r39, var889=$z3, var3683=$r79, var3601=r80, var3959=$r44, var366=$z4, var3909=$r81, var834=r82, var573=$r49, var3174=$z5, var2314=$r50, var2482=$r52, var1366=$r51, var1155=$r53, var1116=$r83, var880=java.lang.System, var1407=$r54, var522=$r55, var4=$r56, var3854=$r57, var2351=$r58, var3624=$r59, var2433=$r60, var3481=$r61, var3191=4, var3748=$r62, var1125=$r63, var3687=$r64, var3782=$r65, var1376=$r66, var2663=$r67, var352=5, var1588=$r68, var1801=$r69, var2151=$r70, var1289=$r71, var2182=$r72, var3178=6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate=var1929, r1=var1101, java.util.Locale=var1555, $r0=var94, $r4=var2454, $r3=var489, $r2=var890, $r5=var2000, $z0=var3691, $r6=var857, $r8=var870, $r7=var2728, $r9=var303, $r74=var3408, r75=var3502, $r10=var3053, $z1=var3136, $r76=var2132, r77=var3784, $r15=var616, $z2=var214, $r16=var378, $r18=var1700, $r17=var2667, $r19=var448, $r78=var3572, $r20=var2746, $r21=var368, $r22=var1353, $r23=var3418, $r24=var2321, $r25=var3654, $r26=var2080, 0=var2459, $r27=var311, $r28=var1774, $r29=var1477, $r30=var3575, $r31=var3437, $r32=var3772, 1=var1594, $r33=var3225, $r34=var547, $r35=var11, $r36=var3340, $r37=var270, 2=var2288, $r38=var2682, 3=var2009, $r73=var1097, $r39=var1973, $z3=var889, $r79=var3683, r80=var3601, $r44=var3959, $z4=var366, $r81=var3909, r82=var834, $r49=var573, $z5=var3174, $r50=var2314, $r52=var2482, $r51=var1366, $r53=var1155, $r83=var1116, java.lang.System=var880, $r54=var1407, $r55=var522, $r56=var4, $r57=var3854, $r58=var2351, $r59=var3624, $r60=var2433, $r61=var3481, 4=var3191, $r62=var3748, $r63=var1125, $r64=var3687, $r65=var3782, $r66=var1376, $r67=var2663, 5=var352, $r68=var1588, $r69=var1801, $r70=var2151, $r71=var1289, $r72=var2182, 6=var3178}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 6,"<java.lang.StringBuilder: void <init>()>": 9,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 24,"<java.lang.StringBuilder: java.lang.String toString()>": 9}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate;	$r0 = new java.util.Locale;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry>;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant>;	specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2);	$r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r7 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r74 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r75 = $r74;	$r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $r11 = new java.lang.StringBuilder;	$r76 = "";	goto [?= r77 = $r76];	r77 = $r76;	$r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>();	$z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r17 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r78 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0);	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0);	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0);	$r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0);	$r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>();	$z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>();	if $z3 == 0 goto $r40 = new java.lang.StringBuilder;	$r79 = "";	goto [?= r80 = $r79];	r80 = $r79;	$r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>();	$z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>();	if $z4 == 0 goto $r45 = new java.lang.StringBuilder;	$r81 = "";	goto [?= r82 = $r81];	r82 = $r81;	$r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>();	$z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>();	if $z5 == 0 goto $r50 = new java.lang.StringBuilder;	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r51 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>();	$r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r51);	$r83 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.String toString()>();	$r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding");	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54;	$r55 = new java.lang.StringBuilder;	specialinvoke $r55.<java.lang.StringBuilder: void <init>()>();	$r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83);	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0);	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0);	$r68 = new java.lang.StringBuilder;	specialinvoke $r68.<java.lang.StringBuilder: void <init>()>();	$r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69);	$r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1);	return
;block_num 13