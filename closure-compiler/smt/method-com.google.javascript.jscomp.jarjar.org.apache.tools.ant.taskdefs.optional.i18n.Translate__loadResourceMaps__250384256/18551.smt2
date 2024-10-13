(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3335 0)
(declare-sort var1223 0)
(declare-sort var2005 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1223-init () var1223)
(declare-fun bundleLanguage/965132528 (var3335) String)
(declare-fun bundleCountry/965132528 (var3335) String)
(declare-fun bundleVariant/965132528 (var3335) String)
(declare-fun <init>/492115872 (var1223 String String String) void)
(declare-fun getLanguage/1066037614 (var1223) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getCountry/-945186178 (var1223) String)
(declare-fun getVariant/1821738799 (var1223) String)
(declare-fun bundle/965132528 (var3335) String)
(declare-fun processBundle/-1320493310 (var3335 String Int Bool) void)
(declare-fun var1223_getDefault/-641693464 () var1223)
(declare-fun var2005_getProperty/258823597 (String) String)
(declare-fun bundleEncoding/965132528 (var3335) String)
(declare-const null-var3335 var3335)
(declare-const var3945 var3335) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate 
(assert (not (= var3945 null-var3335)))
(define-const var2930 var1223 var1223-init) ; Statement: $r0 = new java.util.Locale 
(define-const var1459 String (bundleLanguage/965132528 var3945)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage> 
(define-const var610 String (bundleCountry/965132528 var3945)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry> 
(define-const var3184 String (bundleVariant/965132528 var3945)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant> 
(assert true)
;(assert (<init>/492115872 var2930 var1459 var610 var3184)) ; Statement: specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2) 

(declare-const var2930!1 var1223)
(declare-const var1459!1 String)
(declare-const var610!1 String)
(declare-const var3184!1 String)
(assert true)
(define-const var420 String (getLanguage/1066037614 var2930!1)) ; Statement: $r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var3 Bool (isEmpty/-1285796103 var420)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.StringBuilder 
(assert (= (ite var3 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1650 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1650)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1650!1 String)
(assert (= var1650!1 ""))
(assert true)
(define-const var3862 String (append/672562846 var1650!1 "_")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1650!2 String)
(assert (= var1650!2 (str.++ var1650!1 "_")))
(assert true)
(define-const var480 String (getLanguage/1066037614 var2930!1)) ; Statement: $r7 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var1618 String (append/672562846 var3862 var480)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3862!1 String)
(assert (= var3862!1 (str.++ var3862 var480)))
(assert true)
(define-const var2817 String (toString/-2075883882 var1618)) ; Statement: $r74 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3338 String var2817) ; Statement: r75 = $r74 
(assert true)
(define-const var1402 String (getCountry/-945186178 var2930!1)) ; Statement: $r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var2122 Bool (isEmpty/-1285796103 var1402)) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r11 = new java.lang.StringBuilder 
(assert (= (ite var2122 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3179 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3179)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3179!1 String)
(assert (= var3179!1 ""))
(assert true)
(define-const var2314 String (append/672562846 var3179!1 "_")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3179!2 String)
(assert (= var3179!2 (str.++ var3179!1 "_")))
(assert true)
(define-const var792 String (getCountry/-945186178 var2930!1)) ; Statement: $r12 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var3432 String (append/672562846 var2314 var792)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2314!1 String)
(assert (= var2314!1 (str.++ var2314 var792)))
(assert true)
(define-const var2160 String (toString/-2075883882 var3432)) ; Statement: $r76 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var144 String var2160) ; Statement: r77 = $r76 
(assert true)
(define-const var995 String (getVariant/1821738799 var2930!1)) ; Statement: $r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var289 Bool (isEmpty/-1285796103 var995)) ; Statement: $z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (= (ite var289 1 0) 0)) ; Cond: $z2 == 0 
(define-const var883 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var883)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var883!1 String)
(assert (= var883!1 ""))
(assert true)
(define-const var1601 String (append/672562846 var883!1 "_")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var883!2 String)
(assert (= var883!2 (str.++ var883!1 "_")))
(assert true)
(define-const var897 String (getVariant/1821738799 var2930!1)) ; Statement: $r17 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var2721 String (append/672562846 var1601 var897)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1601!1 String)
(assert (= var1601!1 (str.++ var1601 var897)))
(assert true)
(define-const var1825 String (toString/-2075883882 var2721)) ; Statement: $r78 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2669 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2669)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2669!1 String)
(assert (= var2669!1 ""))
(define-const var3723 String (bundle/965132528 var3945)) ; Statement: $r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var1624 String (append/672562846 var2669!1 var3723)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2669!2 String)
(assert (= var2669!2 (str.++ var2669!1 var3723)))
(assert true)
(define-const var2101 String (append/672562846 var1624 var3338)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var1624!1 String)
(assert (= var1624!1 (str.++ var1624 var3338)))
(assert true)
(define-const var1145 String (append/672562846 var2101 var144)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var2101!1 String)
(assert (= var2101!1 (str.++ var2101 var144)))
(assert true)
(define-const var408 String (append/672562846 var1145 var1825)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78) 
(declare-const var1145!1 String)
(assert (= var1145!1 (str.++ var1145 var1825)))
(assert true)
(define-const var3428 String (toString/-2075883882 var408)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3945 var3428 0 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0) 

(declare-const var3945!1 var3335)
(declare-const var3428!1 String)
(declare-const var3170 Int)
(declare-const var3170!1 Int)
(define-const var435 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var435)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var435!1 String)
(assert (= var435!1 ""))
(define-const var2091 String (bundle/965132528 var3945!1)) ; Statement: $r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var3466 String (append/672562846 var435!1 var2091)) ; Statement: $r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var435!2 String)
(assert (= var435!2 (str.++ var435!1 var2091)))
(assert true)
(define-const var1378 String (append/672562846 var3466 var3338)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var3466!1 String)
(assert (= var3466!1 (str.++ var3466 var3338)))
(assert true)
(define-const var735 String (append/672562846 var1378 var144)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var1378!1 String)
(assert (= var1378!1 (str.++ var1378 var144)))
(assert true)
(define-const var1505 String (toString/-2075883882 var735)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3945!1 var1505 1 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0) 

(declare-const var3945!2 var3335)
(declare-const var1505!1 String)
(declare-const var539 Int)
(declare-const var3170!2 Int)
(define-const var3444 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3444)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3444!1 String)
(assert (= var3444!1 ""))
(define-const var609 String (bundle/965132528 var3945!2)) ; Statement: $r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var1274 String (append/672562846 var3444!1 var609)) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var3444!2 String)
(assert (= var3444!2 (str.++ var3444!1 var609)))
(assert true)
(define-const var1046 String (append/672562846 var1274 var3338)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var1274!1 String)
(assert (= var1274!1 (str.++ var1274 var3338)))
(assert true)
(define-const var868 String (toString/-2075883882 var1046)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3945!2 var868 2 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0) 

(declare-const var3945!3 var3335)
(declare-const var868!1 String)
(declare-const var33 Int)
(declare-const var3170!3 Int)
(define-const var1569 String (bundle/965132528 var3945!3)) ; Statement: $r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
;(assert (processBundle/-1320493310 var3945!3 var1569 3 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0) 

(declare-const var3945!4 var3335)
(declare-const var1569!1 String)
(declare-const var170 Int)
(declare-const var3170!4 Int)
(define-const var1196 var1223 var1223_getDefault/-641693464) ; Statement: $r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert true)
(define-const var3056 String (getLanguage/1066037614 var1196)) ; Statement: $r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var2090 Bool (isEmpty/-1285796103 var3056)) ; Statement: $z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z3 == 0 goto $r40 = new java.lang.StringBuilder 
(assert (not (= (ite var2090 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var3774 String "") ; Statement: $r79 = "" 
 ; Statement: goto [?= r80 = $r79] 
(assert true) ; Non Conditional
(define-const var188 String var3774) ; Statement: r80 = $r79 
(assert true)
(define-const var520 String (getCountry/-945186178 var1196)) ; Statement: $r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var7 Bool (isEmpty/-1285796103 var520)) ; Statement: $z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z4 == 0 goto $r45 = new java.lang.StringBuilder 
(assert (not (= (ite var7 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var3970 String "") ; Statement: $r81 = "" 
 ; Statement: goto [?= r82 = $r81] 
(assert true) ; Non Conditional
(define-const var3146 String var3970) ; Statement: r82 = $r81 
(assert true)
(define-const var2644 String (getVariant/1821738799 var1196)) ; Statement: $r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var293 Bool (isEmpty/-1285796103 var2644)) ; Statement: $z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z5 == 0 goto $r50 = new java.lang.StringBuilder 
(assert (not (= (ite var293 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var3795 String "") ; Statement: $r83 = "" 
 ; Statement: goto [?= $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding")] 
(assert true) ; Non Conditional
(define-const var3765 String (var2005_getProperty/258823597 "file.encoding")) ; Statement: $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding") 
(declare-const var3945!5 var3335)
(assert (not (= var3945!5 null-var3335)))
(assert (= (bundleEncoding/965132528 var3945!5) var3765)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54 
(define-const var1760 String String-init) ; Statement: $r55 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1760)) ; Statement: specialinvoke $r55.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1760!1 String)
(assert (= var1760!1 ""))
(define-const var1973 String (bundle/965132528 var3945!5)) ; Statement: $r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var3291 String (append/672562846 var1760!1 var1973)) ; Statement: $r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var1760!2 String)
(assert (= var1760!2 (str.++ var1760!1 var1973)))
(assert true)
(define-const var1199 String (append/672562846 var3291 var188)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var3291!1 String)
(assert (= var3291!1 (str.++ var3291 var188)))
(assert true)
(define-const var1185 String (append/672562846 var1199 var3146)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var1199!1 String)
(assert (= var1199!1 (str.++ var1199 var3146)))
(assert true)
(define-const var1428 String (append/672562846 var1185 var3795)) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83) 
(declare-const var1185!1 String)
(assert (= var1185!1 (str.++ var1185 var3795)))
(assert true)
(define-const var597 String (toString/-2075883882 var1428)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3945!5 var597 4 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0) 

(declare-const var3945!6 var3335)
(declare-const var597!1 String)
(declare-const var901 Int)
(declare-const var3170!5 Int)
(define-const var1028 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1028)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1028!1 String)
(assert (= var1028!1 ""))
(define-const var3053 String (bundle/965132528 var3945!6)) ; Statement: $r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var2002 String (append/672562846 var1028!1 var3053)) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var1028!2 String)
(assert (= var1028!2 (str.++ var1028!1 var3053)))
(assert true)
(define-const var489 String (append/672562846 var2002 var188)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var2002!1 String)
(assert (= var2002!1 (str.++ var2002 var188)))
(assert true)
(define-const var1576 String (append/672562846 var489 var3146)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var489!1 String)
(assert (= var489!1 (str.++ var489 var3146)))
(assert true)
(define-const var1158 String (toString/-2075883882 var1576)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3945!6 var1158 5 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0) 

(declare-const var3945!7 var3335)
(declare-const var1158!1 String)
(declare-const var1673 Int)
(declare-const var3170!6 Int)
(define-const var1224 String String-init) ; Statement: $r68 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1224)) ; Statement: specialinvoke $r68.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1224!1 String)
(assert (= var1224!1 ""))
(define-const var1714 String (bundle/965132528 var3945!7)) ; Statement: $r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var1103 String (append/672562846 var1224!1 var1714)) ; Statement: $r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69) 
(declare-const var1224!2 String)
(assert (= var1224!2 (str.++ var1224!1 var1714)))
(assert true)
(define-const var1876 String (append/672562846 var1103 var188)) ; Statement: $r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var1103!1 String)
(assert (= var1103!1 (str.++ var1103 var188)))
(assert true)
(define-const var637 String (toString/-2075883882 var1876)) ; Statement: $r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3945!7 var637 6 (ite (= 1 1) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1) 

(declare-const var3945!8 var3335)
(declare-const var637!1 String)
(declare-const var95 Int)
(declare-const var539!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1223-init=([], java.util.Locale), bundleLanguage/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleCountry/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleVariant/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), <init>/492115872=([java.util.Locale, java.lang.String, java.lang.String, java.lang.String], void), getLanguage/1066037614=([java.util.Locale], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getCountry/-945186178=([java.util.Locale], java.lang.String), getVariant/1821738799=([java.util.Locale], java.lang.String), bundle/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), processBundle/-1320493310=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, java.lang.String, int, boolean], void), var1223_getDefault/-641693464=([], java.util.Locale), var2005_getProperty/258823597=([java.lang.String], java.lang.String), bundleEncoding/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String)}
; {var3335=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, var3945=r1, var1223=java.util.Locale, var2930=$r0, var1459=$r4, var610=$r3, var3184=$r2, var420=$r5, var3=$z0, var1650=$r6, var3862=$r8, var480=$r7, var1618=$r9, var2817=$r74, var3338=r75, var1402=$r10, var2122=$z1, var3179=$r11, var2314=$r13, var792=$r12, var3432=$r14, var2160=$r76, var144=r77, var995=$r15, var289=$z2, var883=$r16, var1601=$r18, var897=$r17, var2721=$r19, var1825=$r78, var2669=$r20, var3723=$r21, var1624=$r22, var2101=$r23, var1145=$r24, var408=$r25, var3428=$r26, var3170=0, var435=$r27, var2091=$r28, var3466=$r29, var1378=$r30, var735=$r31, var1505=$r32, var539=1, var3444=$r33, var609=$r34, var1274=$r35, var1046=$r36, var868=$r37, var33=2, var1569=$r38, var170=3, var1196=$r73, var3056=$r39, var2090=$z3, var3774=$r79, var188=r80, var520=$r44, var7=$z4, var3970=$r81, var3146=r82, var2644=$r49, var293=$z5, var3795=$r83, var2005=java.lang.System, var3765=$r54, var1760=$r55, var1973=$r56, var3291=$r57, var1199=$r58, var1185=$r59, var1428=$r60, var597=$r61, var901=4, var1028=$r62, var3053=$r63, var2002=$r64, var489=$r65, var1576=$r66, var1158=$r67, var1673=5, var1224=$r68, var1714=$r69, var1103=$r70, var1876=$r71, var637=$r72, var95=6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate=var3335, r1=var3945, java.util.Locale=var1223, $r0=var2930, $r4=var1459, $r3=var610, $r2=var3184, $r5=var420, $z0=var3, $r6=var1650, $r8=var3862, $r7=var480, $r9=var1618, $r74=var2817, r75=var3338, $r10=var1402, $z1=var2122, $r11=var3179, $r13=var2314, $r12=var792, $r14=var3432, $r76=var2160, r77=var144, $r15=var995, $z2=var289, $r16=var883, $r18=var1601, $r17=var897, $r19=var2721, $r78=var1825, $r20=var2669, $r21=var3723, $r22=var1624, $r23=var2101, $r24=var1145, $r25=var408, $r26=var3428, 0=var3170, $r27=var435, $r28=var2091, $r29=var3466, $r30=var1378, $r31=var735, $r32=var1505, 1=var539, $r33=var3444, $r34=var609, $r35=var1274, $r36=var1046, $r37=var868, 2=var33, $r38=var1569, 3=var170, $r73=var1196, $r39=var3056, $z3=var2090, $r79=var3774, r80=var188, $r44=var520, $z4=var7, $r81=var3970, r82=var3146, $r49=var2644, $z5=var293, $r83=var3795, java.lang.System=var2005, $r54=var3765, $r55=var1760, $r56=var1973, $r57=var3291, $r58=var1199, $r59=var1185, $r60=var1428, $r61=var597, 4=var901, $r62=var1028, $r63=var3053, $r64=var2002, $r65=var489, $r66=var1576, $r67=var1158, 5=var1673, $r68=var1224, $r69=var1714, $r70=var1103, $r71=var1876, $r72=var637, 6=var95}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 6,"<java.lang.StringBuilder: void <init>()>": 9,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 24,"<java.lang.StringBuilder: java.lang.String toString()>": 9}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate;	$r0 = new java.util.Locale;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry>;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant>;	specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2);	$r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r7 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r74 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r75 = $r74;	$r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $r11 = new java.lang.StringBuilder;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r12 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r76 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	r77 = $r76;	$r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>();	$z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r17 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r78 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0);	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0);	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0);	$r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0);	$r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>();	$z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>();	if $z3 == 0 goto $r40 = new java.lang.StringBuilder;	$r79 = "";	goto [?= r80 = $r79];	r80 = $r79;	$r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>();	$z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>();	if $z4 == 0 goto $r45 = new java.lang.StringBuilder;	$r81 = "";	goto [?= r82 = $r81];	r82 = $r81;	$r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>();	$z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>();	if $z5 == 0 goto $r50 = new java.lang.StringBuilder;	$r83 = "";	goto [?= $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding")];	$r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding");	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54;	$r55 = new java.lang.StringBuilder;	specialinvoke $r55.<java.lang.StringBuilder: void <init>()>();	$r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83);	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0);	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0);	$r68 = new java.lang.StringBuilder;	specialinvoke $r68.<java.lang.StringBuilder: void <init>()>();	$r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69);	$r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1);	return
;block_num 13