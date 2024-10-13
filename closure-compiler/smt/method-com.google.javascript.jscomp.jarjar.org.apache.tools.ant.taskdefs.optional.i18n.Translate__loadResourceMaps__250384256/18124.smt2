(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2146 0)
(declare-sort var3494 0)
(declare-sort var1247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3494-init () var3494)
(declare-fun bundleLanguage/965132528 (var2146) String)
(declare-fun bundleCountry/965132528 (var2146) String)
(declare-fun bundleVariant/965132528 (var2146) String)
(declare-fun <init>/492115872 (var3494 String String String) void)
(declare-fun getLanguage/1066037614 (var3494) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getCountry/-945186178 (var3494) String)
(declare-fun getVariant/1821738799 (var3494) String)
(declare-fun bundle/965132528 (var2146) String)
(declare-fun processBundle/-1320493310 (var2146 String Int Bool) void)
(declare-fun var3494_getDefault/-641693464 () var3494)
(declare-fun var1247_getProperty/258823597 (String) String)
(declare-fun bundleEncoding/965132528 (var2146) String)
(declare-const null-var2146 var2146)
(declare-const var1421 var2146) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate 
(assert (not (= var1421 null-var2146)))
(define-const var2153 var3494 var3494-init) ; Statement: $r0 = new java.util.Locale 
(define-const var645 String (bundleLanguage/965132528 var1421)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage> 
(define-const var606 String (bundleCountry/965132528 var1421)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry> 
(define-const var1852 String (bundleVariant/965132528 var1421)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant> 
(assert true)
;(assert (<init>/492115872 var2153 var645 var606 var1852)) ; Statement: specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2) 

(declare-const var2153!1 var3494)
(declare-const var645!1 String)
(declare-const var606!1 String)
(declare-const var1852!1 String)
(assert true)
(define-const var3181 String (getLanguage/1066037614 var2153!1)) ; Statement: $r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var3753 Bool (isEmpty/-1285796103 var3181)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.StringBuilder 
(assert (= (ite var3753 1 0) 0)) ; Cond: $z0 == 0 
(define-const var49 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var49)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var49!1 String)
(assert (= var49!1 ""))
(assert true)
(define-const var2530 String (append/672562846 var49!1 "_")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var49!2 String)
(assert (= var49!2 (str.++ var49!1 "_")))
(assert true)
(define-const var3793 String (getLanguage/1066037614 var2153!1)) ; Statement: $r7 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var2986 String (append/672562846 var2530 var3793)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2530!1 String)
(assert (= var2530!1 (str.++ var2530 var3793)))
(assert true)
(define-const var1889 String (toString/-2075883882 var2986)) ; Statement: $r74 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var630 String var1889) ; Statement: r75 = $r74 
(assert true)
(define-const var3509 String (getCountry/-945186178 var2153!1)) ; Statement: $r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var3721 Bool (isEmpty/-1285796103 var3509)) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r11 = new java.lang.StringBuilder 
(assert (not (= (ite var3721 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3423 String "") ; Statement: $r76 = "" 
 ; Statement: goto [?= r77 = $r76] 
(assert true) ; Non Conditional
(define-const var3552 String var3423) ; Statement: r77 = $r76 
(assert true)
(define-const var2120 String (getVariant/1821738799 var2153!1)) ; Statement: $r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var442 Bool (isEmpty/-1285796103 var2120)) ; Statement: $z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (not (= (ite var442 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1848 String "") ; Statement: $r78 = "" 
 ; Statement: goto [?= $r20 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1197 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1197)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1197!1 String)
(assert (= var1197!1 ""))
(define-const var3445 String (bundle/965132528 var1421)) ; Statement: $r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var3030 String (append/672562846 var1197!1 var3445)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1197!2 String)
(assert (= var1197!2 (str.++ var1197!1 var3445)))
(assert true)
(define-const var3632 String (append/672562846 var3030 var630)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var3030!1 String)
(assert (= var3030!1 (str.++ var3030 var630)))
(assert true)
(define-const var3660 String (append/672562846 var3632 var3552)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var3632!1 String)
(assert (= var3632!1 (str.++ var3632 var3552)))
(assert true)
(define-const var3836 String (append/672562846 var3660 var1848)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78) 
(declare-const var3660!1 String)
(assert (= var3660!1 (str.++ var3660 var1848)))
(assert true)
(define-const var1191 String (toString/-2075883882 var3836)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1421 var1191 0 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0) 

(declare-const var1421!1 var2146)
(declare-const var1191!1 String)
(declare-const var533 Int)
(declare-const var533!1 Int)
(define-const var3300 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3300)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3300!1 String)
(assert (= var3300!1 ""))
(define-const var2233 String (bundle/965132528 var1421!1)) ; Statement: $r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var776 String (append/672562846 var3300!1 var2233)) ; Statement: $r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var3300!2 String)
(assert (= var3300!2 (str.++ var3300!1 var2233)))
(assert true)
(define-const var2637 String (append/672562846 var776 var630)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var776!1 String)
(assert (= var776!1 (str.++ var776 var630)))
(assert true)
(define-const var1456 String (append/672562846 var2637 var3552)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var2637!1 String)
(assert (= var2637!1 (str.++ var2637 var3552)))
(assert true)
(define-const var970 String (toString/-2075883882 var1456)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1421!1 var970 1 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0) 

(declare-const var1421!2 var2146)
(declare-const var970!1 String)
(declare-const var1694 Int)
(declare-const var533!2 Int)
(define-const var3858 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3858)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3858!1 String)
(assert (= var3858!1 ""))
(define-const var2442 String (bundle/965132528 var1421!2)) ; Statement: $r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var802 String (append/672562846 var3858!1 var2442)) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var3858!2 String)
(assert (= var3858!2 (str.++ var3858!1 var2442)))
(assert true)
(define-const var1145 String (append/672562846 var802 var630)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var802!1 String)
(assert (= var802!1 (str.++ var802 var630)))
(assert true)
(define-const var1747 String (toString/-2075883882 var1145)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1421!2 var1747 2 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0) 

(declare-const var1421!3 var2146)
(declare-const var1747!1 String)
(declare-const var1671 Int)
(declare-const var533!3 Int)
(define-const var2011 String (bundle/965132528 var1421!3)) ; Statement: $r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
;(assert (processBundle/-1320493310 var1421!3 var2011 3 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0) 

(declare-const var1421!4 var2146)
(declare-const var2011!1 String)
(declare-const var2791 Int)
(declare-const var533!4 Int)
(define-const var1210 var3494 var3494_getDefault/-641693464) ; Statement: $r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert true)
(define-const var1299 String (getLanguage/1066037614 var1210)) ; Statement: $r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var3968 Bool (isEmpty/-1285796103 var1299)) ; Statement: $z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z3 == 0 goto $r40 = new java.lang.StringBuilder 
(assert (not (= (ite var3968 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var956 String "") ; Statement: $r79 = "" 
 ; Statement: goto [?= r80 = $r79] 
(assert true) ; Non Conditional
(define-const var2013 String var956) ; Statement: r80 = $r79 
(assert true)
(define-const var2680 String (getCountry/-945186178 var1210)) ; Statement: $r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var3819 Bool (isEmpty/-1285796103 var2680)) ; Statement: $z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z4 == 0 goto $r45 = new java.lang.StringBuilder 
(assert (not (= (ite var3819 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var113 String "") ; Statement: $r81 = "" 
 ; Statement: goto [?= r82 = $r81] 
(assert true) ; Non Conditional
(define-const var3725 String var113) ; Statement: r82 = $r81 
(assert true)
(define-const var2793 String (getVariant/1821738799 var1210)) ; Statement: $r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var60 Bool (isEmpty/-1285796103 var2793)) ; Statement: $z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z5 == 0 goto $r50 = new java.lang.StringBuilder 
(assert (not (= (ite var60 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var3103 String "") ; Statement: $r83 = "" 
 ; Statement: goto [?= $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding")] 
(assert true) ; Non Conditional
(define-const var965 String (var1247_getProperty/258823597 "file.encoding")) ; Statement: $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding") 
(declare-const var1421!5 var2146)
(assert (not (= var1421!5 null-var2146)))
(assert (= (bundleEncoding/965132528 var1421!5) var965)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54 
(define-const var914 String String-init) ; Statement: $r55 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var914)) ; Statement: specialinvoke $r55.<java.lang.StringBuilder: void <init>()>() 
(declare-const var914!1 String)
(assert (= var914!1 ""))
(define-const var1377 String (bundle/965132528 var1421!5)) ; Statement: $r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var3804 String (append/672562846 var914!1 var1377)) ; Statement: $r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var914!2 String)
(assert (= var914!2 (str.++ var914!1 var1377)))
(assert true)
(define-const var3663 String (append/672562846 var3804 var2013)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var3804!1 String)
(assert (= var3804!1 (str.++ var3804 var2013)))
(assert true)
(define-const var625 String (append/672562846 var3663 var3725)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var3663!1 String)
(assert (= var3663!1 (str.++ var3663 var3725)))
(assert true)
(define-const var169 String (append/672562846 var625 var3103)) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83) 
(declare-const var625!1 String)
(assert (= var625!1 (str.++ var625 var3103)))
(assert true)
(define-const var2251 String (toString/-2075883882 var169)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1421!5 var2251 4 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0) 

(declare-const var1421!6 var2146)
(declare-const var2251!1 String)
(declare-const var2631 Int)
(declare-const var533!5 Int)
(define-const var735 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var735)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var735!1 String)
(assert (= var735!1 ""))
(define-const var2034 String (bundle/965132528 var1421!6)) ; Statement: $r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var962 String (append/672562846 var735!1 var2034)) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var735!2 String)
(assert (= var735!2 (str.++ var735!1 var2034)))
(assert true)
(define-const var288 String (append/672562846 var962 var2013)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var962!1 String)
(assert (= var962!1 (str.++ var962 var2013)))
(assert true)
(define-const var3426 String (append/672562846 var288 var3725)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var288!1 String)
(assert (= var288!1 (str.++ var288 var3725)))
(assert true)
(define-const var3901 String (toString/-2075883882 var3426)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1421!6 var3901 5 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0) 

(declare-const var1421!7 var2146)
(declare-const var3901!1 String)
(declare-const var242 Int)
(declare-const var533!6 Int)
(define-const var2042 String String-init) ; Statement: $r68 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2042)) ; Statement: specialinvoke $r68.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2042!1 String)
(assert (= var2042!1 ""))
(define-const var2161 String (bundle/965132528 var1421!7)) ; Statement: $r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var3607 String (append/672562846 var2042!1 var2161)) ; Statement: $r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69) 
(declare-const var2042!2 String)
(assert (= var2042!2 (str.++ var2042!1 var2161)))
(assert true)
(define-const var2836 String (append/672562846 var3607 var2013)) ; Statement: $r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var3607!1 String)
(assert (= var3607!1 (str.++ var3607 var2013)))
(assert true)
(define-const var52 String (toString/-2075883882 var2836)) ; Statement: $r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1421!7 var52 6 (ite (= 1 1) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1) 

(declare-const var1421!8 var2146)
(declare-const var52!1 String)
(declare-const var1168 Int)
(declare-const var1694!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3494-init=([], java.util.Locale), bundleLanguage/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleCountry/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleVariant/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), <init>/492115872=([java.util.Locale, java.lang.String, java.lang.String, java.lang.String], void), getLanguage/1066037614=([java.util.Locale], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getCountry/-945186178=([java.util.Locale], java.lang.String), getVariant/1821738799=([java.util.Locale], java.lang.String), bundle/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), processBundle/-1320493310=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, java.lang.String, int, boolean], void), var3494_getDefault/-641693464=([], java.util.Locale), var1247_getProperty/258823597=([java.lang.String], java.lang.String), bundleEncoding/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String)}
; {var2146=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, var1421=r1, var3494=java.util.Locale, var2153=$r0, var645=$r4, var606=$r3, var1852=$r2, var3181=$r5, var3753=$z0, var49=$r6, var2530=$r8, var3793=$r7, var2986=$r9, var1889=$r74, var630=r75, var3509=$r10, var3721=$z1, var3423=$r76, var3552=r77, var2120=$r15, var442=$z2, var1848=$r78, var1197=$r20, var3445=$r21, var3030=$r22, var3632=$r23, var3660=$r24, var3836=$r25, var1191=$r26, var533=0, var3300=$r27, var2233=$r28, var776=$r29, var2637=$r30, var1456=$r31, var970=$r32, var1694=1, var3858=$r33, var2442=$r34, var802=$r35, var1145=$r36, var1747=$r37, var1671=2, var2011=$r38, var2791=3, var1210=$r73, var1299=$r39, var3968=$z3, var956=$r79, var2013=r80, var2680=$r44, var3819=$z4, var113=$r81, var3725=r82, var2793=$r49, var60=$z5, var3103=$r83, var1247=java.lang.System, var965=$r54, var914=$r55, var1377=$r56, var3804=$r57, var3663=$r58, var625=$r59, var169=$r60, var2251=$r61, var2631=4, var735=$r62, var2034=$r63, var962=$r64, var288=$r65, var3426=$r66, var3901=$r67, var242=5, var2042=$r68, var2161=$r69, var3607=$r70, var2836=$r71, var52=$r72, var1168=6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate=var2146, r1=var1421, java.util.Locale=var3494, $r0=var2153, $r4=var645, $r3=var606, $r2=var1852, $r5=var3181, $z0=var3753, $r6=var49, $r8=var2530, $r7=var3793, $r9=var2986, $r74=var1889, r75=var630, $r10=var3509, $z1=var3721, $r76=var3423, r77=var3552, $r15=var2120, $z2=var442, $r78=var1848, $r20=var1197, $r21=var3445, $r22=var3030, $r23=var3632, $r24=var3660, $r25=var3836, $r26=var1191, 0=var533, $r27=var3300, $r28=var2233, $r29=var776, $r30=var2637, $r31=var1456, $r32=var970, 1=var1694, $r33=var3858, $r34=var2442, $r35=var802, $r36=var1145, $r37=var1747, 2=var1671, $r38=var2011, 3=var2791, $r73=var1210, $r39=var1299, $z3=var3968, $r79=var956, r80=var2013, $r44=var2680, $z4=var3819, $r81=var113, r82=var3725, $r49=var2793, $z5=var60, $r83=var3103, java.lang.System=var1247, $r54=var965, $r55=var914, $r56=var1377, $r57=var3804, $r58=var3663, $r59=var625, $r60=var169, $r61=var2251, 4=var2631, $r62=var735, $r63=var2034, $r64=var962, $r65=var288, $r66=var3426, $r67=var3901, 5=var242, $r68=var2042, $r69=var2161, $r70=var3607, $r71=var2836, $r72=var52, 6=var1168}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 6,"<java.lang.StringBuilder: void <init>()>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 20,"<java.lang.StringBuilder: java.lang.String toString()>": 7}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate;	$r0 = new java.util.Locale;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry>;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant>;	specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2);	$r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r7 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r74 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r75 = $r74;	$r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $r11 = new java.lang.StringBuilder;	$r76 = "";	goto [?= r77 = $r76];	r77 = $r76;	$r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>();	$z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r16 = new java.lang.StringBuilder;	$r78 = "";	goto [?= $r20 = new java.lang.StringBuilder];	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0);	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0);	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0);	$r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0);	$r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>();	$z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>();	if $z3 == 0 goto $r40 = new java.lang.StringBuilder;	$r79 = "";	goto [?= r80 = $r79];	r80 = $r79;	$r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>();	$z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>();	if $z4 == 0 goto $r45 = new java.lang.StringBuilder;	$r81 = "";	goto [?= r82 = $r81];	r82 = $r81;	$r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>();	$z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>();	if $z5 == 0 goto $r50 = new java.lang.StringBuilder;	$r83 = "";	goto [?= $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding")];	$r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding");	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54;	$r55 = new java.lang.StringBuilder;	specialinvoke $r55.<java.lang.StringBuilder: void <init>()>();	$r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83);	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0);	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0);	$r68 = new java.lang.StringBuilder;	specialinvoke $r68.<java.lang.StringBuilder: void <init>()>();	$r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69);	$r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1);	return
;block_num 13