(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var544 0)
(declare-sort var627 0)
(declare-sort var1716 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var627-init () var627)
(declare-fun bundleLanguage/965132528 (var544) String)
(declare-fun bundleCountry/965132528 (var544) String)
(declare-fun bundleVariant/965132528 (var544) String)
(declare-fun <init>/492115872 (var627 String String String) void)
(declare-fun getLanguage/1066037614 (var627) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun getCountry/-945186178 (var627) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getVariant/1821738799 (var627) String)
(declare-fun bundle/965132528 (var544) String)
(declare-fun processBundle/-1320493310 (var544 String Int Bool) void)
(declare-fun var627_getDefault/-641693464 () var627)
(declare-fun var1716_getProperty/258823597 (String) String)
(declare-fun bundleEncoding/965132528 (var544) String)
(declare-const null-var544 var544)
(declare-const var2271 var544) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate 
(assert (not (= var2271 null-var544)))
(define-const var1874 var627 var627-init) ; Statement: $r0 = new java.util.Locale 
(define-const var3053 String (bundleLanguage/965132528 var2271)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage> 
(define-const var253 String (bundleCountry/965132528 var2271)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry> 
(define-const var2465 String (bundleVariant/965132528 var2271)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant> 
(assert true)
;(assert (<init>/492115872 var1874 var3053 var253 var2465)) ; Statement: specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2) 

(declare-const var1874!1 var627)
(declare-const var3053!1 String)
(declare-const var253!1 String)
(declare-const var2465!1 String)
(assert true)
(define-const var912 String (getLanguage/1066037614 var1874!1)) ; Statement: $r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var2985 Bool (isEmpty/-1285796103 var912)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.StringBuilder 
(assert (not (= (ite var2985 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2710 String "") ; Statement: $r74 = "" 
 ; Statement: goto [?= r75 = $r74] 
(assert true) ; Non Conditional
(define-const var365 String var2710) ; Statement: r75 = $r74 
(assert true)
(define-const var862 String (getCountry/-945186178 var1874!1)) ; Statement: $r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var2833 Bool (isEmpty/-1285796103 var862)) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r11 = new java.lang.StringBuilder 
(assert (= (ite var2833 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2751 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2751)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2751!1 String)
(assert (= var2751!1 ""))
(assert true)
(define-const var2629 String (append/672562846 var2751!1 "_")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2751!2 String)
(assert (= var2751!2 (str.++ var2751!1 "_")))
(assert true)
(define-const var265 String (getCountry/-945186178 var1874!1)) ; Statement: $r12 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var2258 String (append/672562846 var2629 var265)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2629!1 String)
(assert (= var2629!1 (str.++ var2629 var265)))
(assert true)
(define-const var3845 String (toString/-2075883882 var2258)) ; Statement: $r76 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var418 String var3845) ; Statement: r77 = $r76 
(assert true)
(define-const var3432 String (getVariant/1821738799 var1874!1)) ; Statement: $r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var1899 Bool (isEmpty/-1285796103 var3432)) ; Statement: $z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (= (ite var1899 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3038 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3038)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3038!1 String)
(assert (= var3038!1 ""))
(assert true)
(define-const var3056 String (append/672562846 var3038!1 "_")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3038!2 String)
(assert (= var3038!2 (str.++ var3038!1 "_")))
(assert true)
(define-const var3969 String (getVariant/1821738799 var1874!1)) ; Statement: $r17 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var481 String (append/672562846 var3056 var3969)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3056!1 String)
(assert (= var3056!1 (str.++ var3056 var3969)))
(assert true)
(define-const var1145 String (toString/-2075883882 var481)) ; Statement: $r78 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var470 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var470)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var470!1 String)
(assert (= var470!1 ""))
(define-const var2694 String (bundle/965132528 var2271)) ; Statement: $r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var1233 String (append/672562846 var470!1 var2694)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var470!2 String)
(assert (= var470!2 (str.++ var470!1 var2694)))
(assert true)
(define-const var2558 String (append/672562846 var1233 var365)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var1233!1 String)
(assert (= var1233!1 (str.++ var1233 var365)))
(assert true)
(define-const var2170 String (append/672562846 var2558 var418)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var2558!1 String)
(assert (= var2558!1 (str.++ var2558 var418)))
(assert true)
(define-const var1614 String (append/672562846 var2170 var1145)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78) 
(declare-const var2170!1 String)
(assert (= var2170!1 (str.++ var2170 var1145)))
(assert true)
(define-const var1341 String (toString/-2075883882 var1614)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var2271 var1341 0 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0) 

(declare-const var2271!1 var544)
(declare-const var1341!1 String)
(declare-const var3951 Int)
(declare-const var3951!1 Int)
(define-const var2268 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2268)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2268!1 String)
(assert (= var2268!1 ""))
(define-const var774 String (bundle/965132528 var2271!1)) ; Statement: $r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var1579 String (append/672562846 var2268!1 var774)) ; Statement: $r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var2268!2 String)
(assert (= var2268!2 (str.++ var2268!1 var774)))
(assert true)
(define-const var2372 String (append/672562846 var1579 var365)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var1579!1 String)
(assert (= var1579!1 (str.++ var1579 var365)))
(assert true)
(define-const var3342 String (append/672562846 var2372 var418)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var2372!1 String)
(assert (= var2372!1 (str.++ var2372 var418)))
(assert true)
(define-const var3706 String (toString/-2075883882 var3342)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var2271!1 var3706 1 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0) 

(declare-const var2271!2 var544)
(declare-const var3706!1 String)
(declare-const var2720 Int)
(declare-const var3951!2 Int)
(define-const var11 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var11)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var11!1 String)
(assert (= var11!1 ""))
(define-const var1248 String (bundle/965132528 var2271!2)) ; Statement: $r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var2954 String (append/672562846 var11!1 var1248)) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var11!2 String)
(assert (= var11!2 (str.++ var11!1 var1248)))
(assert true)
(define-const var901 String (append/672562846 var2954 var365)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var2954!1 String)
(assert (= var2954!1 (str.++ var2954 var365)))
(assert true)
(define-const var671 String (toString/-2075883882 var901)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var2271!2 var671 2 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0) 

(declare-const var2271!3 var544)
(declare-const var671!1 String)
(declare-const var3924 Int)
(declare-const var3951!3 Int)
(define-const var117 String (bundle/965132528 var2271!3)) ; Statement: $r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
;(assert (processBundle/-1320493310 var2271!3 var117 3 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0) 

(declare-const var2271!4 var544)
(declare-const var117!1 String)
(declare-const var37 Int)
(declare-const var3951!4 Int)
(define-const var3079 var627 var627_getDefault/-641693464) ; Statement: $r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert true)
(define-const var254 String (getLanguage/1066037614 var3079)) ; Statement: $r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var15 Bool (isEmpty/-1285796103 var254)) ; Statement: $z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z3 == 0 goto $r40 = new java.lang.StringBuilder 
(assert (not (= (ite var15 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var3235 String "") ; Statement: $r79 = "" 
 ; Statement: goto [?= r80 = $r79] 
(assert true) ; Non Conditional
(define-const var2408 String var3235) ; Statement: r80 = $r79 
(assert true)
(define-const var3488 String (getCountry/-945186178 var3079)) ; Statement: $r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var688 Bool (isEmpty/-1285796103 var3488)) ; Statement: $z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z4 == 0 goto $r45 = new java.lang.StringBuilder 
(assert (= (ite var688 1 0) 0)) ; Cond: $z4 == 0 
(define-const var54 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var54)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var54!1 String)
(assert (= var54!1 ""))
(assert true)
(define-const var2441 String (append/672562846 var54!1 "_")) ; Statement: $r47 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var54!2 String)
(assert (= var54!2 (str.++ var54!1 "_")))
(assert true)
(define-const var1447 String (getCountry/-945186178 var3079)) ; Statement: $r46 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var3726 String (append/672562846 var2441 var1447)) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r46) 
(declare-const var2441!1 String)
(assert (= var2441!1 (str.++ var2441 var1447)))
(assert true)
(define-const var491 String (toString/-2075883882 var3726)) ; Statement: $r81 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var566 String var491) ; Statement: r82 = $r81 
(assert true)
(define-const var2160 String (getVariant/1821738799 var3079)) ; Statement: $r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var1385 Bool (isEmpty/-1285796103 var2160)) ; Statement: $z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z5 == 0 goto $r50 = new java.lang.StringBuilder 
(assert (not (= (ite var1385 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var1503 String "") ; Statement: $r83 = "" 
 ; Statement: goto [?= $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding")] 
(assert true) ; Non Conditional
(define-const var987 String (var1716_getProperty/258823597 "file.encoding")) ; Statement: $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding") 
(declare-const var2271!5 var544)
(assert (not (= var2271!5 null-var544)))
(assert (= (bundleEncoding/965132528 var2271!5) var987)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54 
(define-const var3991 String String-init) ; Statement: $r55 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3991)) ; Statement: specialinvoke $r55.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3991!1 String)
(assert (= var3991!1 ""))
(define-const var20 String (bundle/965132528 var2271!5)) ; Statement: $r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var3997 String (append/672562846 var3991!1 var20)) ; Statement: $r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var3991!2 String)
(assert (= var3991!2 (str.++ var3991!1 var20)))
(assert true)
(define-const var2078 String (append/672562846 var3997 var2408)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var3997!1 String)
(assert (= var3997!1 (str.++ var3997 var2408)))
(assert true)
(define-const var1782 String (append/672562846 var2078 var566)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var2078!1 String)
(assert (= var2078!1 (str.++ var2078 var566)))
(assert true)
(define-const var1755 String (append/672562846 var1782 var1503)) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83) 
(declare-const var1782!1 String)
(assert (= var1782!1 (str.++ var1782 var1503)))
(assert true)
(define-const var3923 String (toString/-2075883882 var1755)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var2271!5 var3923 4 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0) 

(declare-const var2271!6 var544)
(declare-const var3923!1 String)
(declare-const var1381 Int)
(declare-const var3951!5 Int)
(define-const var3101 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3101)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3101!1 String)
(assert (= var3101!1 ""))
(define-const var200 String (bundle/965132528 var2271!6)) ; Statement: $r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var2273 String (append/672562846 var3101!1 var200)) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var3101!2 String)
(assert (= var3101!2 (str.++ var3101!1 var200)))
(assert true)
(define-const var3421 String (append/672562846 var2273 var2408)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var2273!1 String)
(assert (= var2273!1 (str.++ var2273 var2408)))
(assert true)
(define-const var676 String (append/672562846 var3421 var566)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var3421!1 String)
(assert (= var3421!1 (str.++ var3421 var566)))
(assert true)
(define-const var3055 String (toString/-2075883882 var676)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var2271!6 var3055 5 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0) 

(declare-const var2271!7 var544)
(declare-const var3055!1 String)
(declare-const var2778 Int)
(declare-const var3951!6 Int)
(define-const var2529 String String-init) ; Statement: $r68 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2529)) ; Statement: specialinvoke $r68.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2529!1 String)
(assert (= var2529!1 ""))
(define-const var583 String (bundle/965132528 var2271!7)) ; Statement: $r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var3864 String (append/672562846 var2529!1 var583)) ; Statement: $r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69) 
(declare-const var2529!2 String)
(assert (= var2529!2 (str.++ var2529!1 var583)))
(assert true)
(define-const var3739 String (append/672562846 var3864 var2408)) ; Statement: $r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var3864!1 String)
(assert (= var3864!1 (str.++ var3864 var2408)))
(assert true)
(define-const var647 String (toString/-2075883882 var3739)) ; Statement: $r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var2271!7 var647 6 (ite (= 1 1) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1) 

(declare-const var2271!8 var544)
(declare-const var647!1 String)
(declare-const var2999 Int)
(declare-const var2720!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var627-init=([], java.util.Locale), bundleLanguage/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleCountry/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleVariant/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), <init>/492115872=([java.util.Locale, java.lang.String, java.lang.String, java.lang.String], void), getLanguage/1066037614=([java.util.Locale], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), getCountry/-945186178=([java.util.Locale], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getVariant/1821738799=([java.util.Locale], java.lang.String), bundle/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), processBundle/-1320493310=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, java.lang.String, int, boolean], void), var627_getDefault/-641693464=([], java.util.Locale), var1716_getProperty/258823597=([java.lang.String], java.lang.String), bundleEncoding/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String)}
; {var544=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, var2271=r1, var627=java.util.Locale, var1874=$r0, var3053=$r4, var253=$r3, var2465=$r2, var912=$r5, var2985=$z0, var2710=$r74, var365=r75, var862=$r10, var2833=$z1, var2751=$r11, var2629=$r13, var265=$r12, var2258=$r14, var3845=$r76, var418=r77, var3432=$r15, var1899=$z2, var3038=$r16, var3056=$r18, var3969=$r17, var481=$r19, var1145=$r78, var470=$r20, var2694=$r21, var1233=$r22, var2558=$r23, var2170=$r24, var1614=$r25, var1341=$r26, var3951=0, var2268=$r27, var774=$r28, var1579=$r29, var2372=$r30, var3342=$r31, var3706=$r32, var2720=1, var11=$r33, var1248=$r34, var2954=$r35, var901=$r36, var671=$r37, var3924=2, var117=$r38, var37=3, var3079=$r73, var254=$r39, var15=$z3, var3235=$r79, var2408=r80, var3488=$r44, var688=$z4, var54=$r45, var2441=$r47, var1447=$r46, var3726=$r48, var491=$r81, var566=r82, var2160=$r49, var1385=$z5, var1503=$r83, var1716=java.lang.System, var987=$r54, var3991=$r55, var20=$r56, var3997=$r57, var2078=$r58, var1782=$r59, var1755=$r60, var3923=$r61, var1381=4, var3101=$r62, var200=$r63, var2273=$r64, var3421=$r65, var676=$r66, var3055=$r67, var2778=5, var2529=$r68, var583=$r69, var3864=$r70, var3739=$r71, var647=$r72, var2999=6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate=var544, r1=var2271, java.util.Locale=var627, $r0=var1874, $r4=var3053, $r3=var253, $r2=var2465, $r5=var912, $z0=var2985, $r74=var2710, r75=var365, $r10=var862, $z1=var2833, $r11=var2751, $r13=var2629, $r12=var265, $r14=var2258, $r76=var3845, r77=var418, $r15=var3432, $z2=var1899, $r16=var3038, $r18=var3056, $r17=var3969, $r19=var481, $r78=var1145, $r20=var470, $r21=var2694, $r22=var1233, $r23=var2558, $r24=var2170, $r25=var1614, $r26=var1341, 0=var3951, $r27=var2268, $r28=var774, $r29=var1579, $r30=var2372, $r31=var3342, $r32=var3706, 1=var2720, $r33=var11, $r34=var1248, $r35=var2954, $r36=var901, $r37=var671, 2=var3924, $r38=var117, 3=var37, $r73=var3079, $r39=var254, $z3=var15, $r79=var3235, r80=var2408, $r44=var3488, $z4=var688, $r45=var54, $r47=var2441, $r46=var1447, $r48=var3726, $r81=var491, r82=var566, $r49=var2160, $z5=var1385, $r83=var1503, java.lang.System=var1716, $r54=var987, $r55=var3991, $r56=var20, $r57=var3997, $r58=var2078, $r59=var1782, $r60=var1755, $r61=var3923, 4=var1381, $r62=var3101, $r63=var200, $r64=var2273, $r65=var3421, $r66=var676, $r67=var3055, 5=var2778, $r68=var2529, $r69=var583, $r70=var3864, $r71=var3739, $r72=var647, 6=var2999}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 6,"<java.lang.StringBuilder: void <init>()>": 9,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 24,"<java.lang.StringBuilder: java.lang.String toString()>": 9}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate;	$r0 = new java.util.Locale;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry>;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant>;	specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2);	$r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r6 = new java.lang.StringBuilder;	$r74 = "";	goto [?= r75 = $r74];	r75 = $r74;	$r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $r11 = new java.lang.StringBuilder;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r12 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r76 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	r77 = $r76;	$r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>();	$z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r17 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r78 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0);	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0);	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0);	$r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0);	$r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>();	$z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>();	if $z3 == 0 goto $r40 = new java.lang.StringBuilder;	$r79 = "";	goto [?= r80 = $r79];	r80 = $r79;	$r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>();	$z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>();	if $z4 == 0 goto $r45 = new java.lang.StringBuilder;	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r47 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r46 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>();	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r46);	$r81 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.String toString()>();	r82 = $r81;	$r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>();	$z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>();	if $z5 == 0 goto $r50 = new java.lang.StringBuilder;	$r83 = "";	goto [?= $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding")];	$r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding");	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54;	$r55 = new java.lang.StringBuilder;	specialinvoke $r55.<java.lang.StringBuilder: void <init>()>();	$r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83);	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0);	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0);	$r68 = new java.lang.StringBuilder;	specialinvoke $r68.<java.lang.StringBuilder: void <init>()>();	$r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69);	$r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1);	return
;block_num 13