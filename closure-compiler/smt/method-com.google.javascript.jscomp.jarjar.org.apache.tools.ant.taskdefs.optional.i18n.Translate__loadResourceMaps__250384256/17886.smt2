(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1858 0)
(declare-sort var2608 0)
(declare-sort var2171 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2608-init () var2608)
(declare-fun bundleLanguage/965132528 (var1858) String)
(declare-fun bundleCountry/965132528 (var1858) String)
(declare-fun bundleVariant/965132528 (var1858) String)
(declare-fun <init>/492115872 (var2608 String String String) void)
(declare-fun getLanguage/1066037614 (var2608) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun getCountry/-945186178 (var2608) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getVariant/1821738799 (var2608) String)
(declare-fun bundle/965132528 (var1858) String)
(declare-fun processBundle/-1320493310 (var1858 String Int Bool) void)
(declare-fun var2608_getDefault/-641693464 () var2608)
(declare-fun var2171_getProperty/258823597 (String) String)
(declare-fun bundleEncoding/965132528 (var1858) String)
(declare-const null-var1858 var1858)
(declare-const var3660 var1858) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate 
(assert (not (= var3660 null-var1858)))
(define-const var2089 var2608 var2608-init) ; Statement: $r0 = new java.util.Locale 
(define-const var1438 String (bundleLanguage/965132528 var3660)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage> 
(define-const var2644 String (bundleCountry/965132528 var3660)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry> 
(define-const var639 String (bundleVariant/965132528 var3660)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant> 
(assert true)
;(assert (<init>/492115872 var2089 var1438 var2644 var639)) ; Statement: specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2) 

(declare-const var2089!1 var2608)
(declare-const var1438!1 String)
(declare-const var2644!1 String)
(declare-const var639!1 String)
(assert true)
(define-const var2648 String (getLanguage/1066037614 var2089!1)) ; Statement: $r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var962 Bool (isEmpty/-1285796103 var2648)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.StringBuilder 
(assert (not (= (ite var962 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3358 String "") ; Statement: $r74 = "" 
 ; Statement: goto [?= r75 = $r74] 
(assert true) ; Non Conditional
(define-const var2678 String var3358) ; Statement: r75 = $r74 
(assert true)
(define-const var1310 String (getCountry/-945186178 var2089!1)) ; Statement: $r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var1337 Bool (isEmpty/-1285796103 var1310)) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r11 = new java.lang.StringBuilder 
(assert (= (ite var1337 1 0) 0)) ; Cond: $z1 == 0 
(define-const var996 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var996)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var996!1 String)
(assert (= var996!1 ""))
(assert true)
(define-const var2604 String (append/672562846 var996!1 "_")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var996!2 String)
(assert (= var996!2 (str.++ var996!1 "_")))
(assert true)
(define-const var2376 String (getCountry/-945186178 var2089!1)) ; Statement: $r12 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var1011 String (append/672562846 var2604 var2376)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2604!1 String)
(assert (= var2604!1 (str.++ var2604 var2376)))
(assert true)
(define-const var2102 String (toString/-2075883882 var1011)) ; Statement: $r76 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1317 String var2102) ; Statement: r77 = $r76 
(assert true)
(define-const var3379 String (getVariant/1821738799 var2089!1)) ; Statement: $r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var3290 Bool (isEmpty/-1285796103 var3379)) ; Statement: $z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (not (= (ite var3290 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2015 String "") ; Statement: $r78 = "" 
 ; Statement: goto [?= $r20 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3959 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3959)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3959!1 String)
(assert (= var3959!1 ""))
(define-const var1536 String (bundle/965132528 var3660)) ; Statement: $r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var3696 String (append/672562846 var3959!1 var1536)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var3959!2 String)
(assert (= var3959!2 (str.++ var3959!1 var1536)))
(assert true)
(define-const var263 String (append/672562846 var3696 var2678)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var3696!1 String)
(assert (= var3696!1 (str.++ var3696 var2678)))
(assert true)
(define-const var3853 String (append/672562846 var263 var1317)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var263!1 String)
(assert (= var263!1 (str.++ var263 var1317)))
(assert true)
(define-const var241 String (append/672562846 var3853 var2015)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78) 
(declare-const var3853!1 String)
(assert (= var3853!1 (str.++ var3853 var2015)))
(assert true)
(define-const var3201 String (toString/-2075883882 var241)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3660 var3201 0 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0) 

(declare-const var3660!1 var1858)
(declare-const var3201!1 String)
(declare-const var1934 Int)
(declare-const var1934!1 Int)
(define-const var3192 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3192)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3192!1 String)
(assert (= var3192!1 ""))
(define-const var2191 String (bundle/965132528 var3660!1)) ; Statement: $r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var314 String (append/672562846 var3192!1 var2191)) ; Statement: $r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var3192!2 String)
(assert (= var3192!2 (str.++ var3192!1 var2191)))
(assert true)
(define-const var2159 String (append/672562846 var314 var2678)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var314!1 String)
(assert (= var314!1 (str.++ var314 var2678)))
(assert true)
(define-const var3367 String (append/672562846 var2159 var1317)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var2159!1 String)
(assert (= var2159!1 (str.++ var2159 var1317)))
(assert true)
(define-const var2069 String (toString/-2075883882 var3367)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3660!1 var2069 1 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0) 

(declare-const var3660!2 var1858)
(declare-const var2069!1 String)
(declare-const var1736 Int)
(declare-const var1934!2 Int)
(define-const var1917 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1917)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1917!1 String)
(assert (= var1917!1 ""))
(define-const var1263 String (bundle/965132528 var3660!2)) ; Statement: $r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var1345 String (append/672562846 var1917!1 var1263)) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var1917!2 String)
(assert (= var1917!2 (str.++ var1917!1 var1263)))
(assert true)
(define-const var2230 String (append/672562846 var1345 var2678)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var1345!1 String)
(assert (= var1345!1 (str.++ var1345 var2678)))
(assert true)
(define-const var1458 String (toString/-2075883882 var2230)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3660!2 var1458 2 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0) 

(declare-const var3660!3 var1858)
(declare-const var1458!1 String)
(declare-const var14 Int)
(declare-const var1934!3 Int)
(define-const var2133 String (bundle/965132528 var3660!3)) ; Statement: $r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
;(assert (processBundle/-1320493310 var3660!3 var2133 3 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0) 

(declare-const var3660!4 var1858)
(declare-const var2133!1 String)
(declare-const var1742 Int)
(declare-const var1934!4 Int)
(define-const var1662 var2608 var2608_getDefault/-641693464) ; Statement: $r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert true)
(define-const var1380 String (getLanguage/1066037614 var1662)) ; Statement: $r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var1873 Bool (isEmpty/-1285796103 var1380)) ; Statement: $z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z3 == 0 goto $r40 = new java.lang.StringBuilder 
(assert (= (ite var1873 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3070 String String-init) ; Statement: $r40 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3070)) ; Statement: specialinvoke $r40.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3070!1 String)
(assert (= var3070!1 ""))
(assert true)
(define-const var1730 String (append/672562846 var3070!1 "_")) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3070!2 String)
(assert (= var3070!2 (str.++ var3070!1 "_")))
(assert true)
(define-const var1941 String (getLanguage/1066037614 var1662)) ; Statement: $r41 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var2640 String (append/672562846 var1730 var1941)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1730!1 String)
(assert (= var1730!1 (str.++ var1730 var1941)))
(assert true)
(define-const var1658 String (toString/-2075883882 var2640)) ; Statement: $r79 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var806 String var1658) ; Statement: r80 = $r79 
(assert true)
(define-const var176 String (getCountry/-945186178 var1662)) ; Statement: $r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var870 Bool (isEmpty/-1285796103 var176)) ; Statement: $z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z4 == 0 goto $r45 = new java.lang.StringBuilder 
(assert (not (= (ite var870 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var574 String "") ; Statement: $r81 = "" 
 ; Statement: goto [?= r82 = $r81] 
(assert true) ; Non Conditional
(define-const var3324 String var574) ; Statement: r82 = $r81 
(assert true)
(define-const var1058 String (getVariant/1821738799 var1662)) ; Statement: $r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var2646 Bool (isEmpty/-1285796103 var1058)) ; Statement: $z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z5 == 0 goto $r50 = new java.lang.StringBuilder 
(assert (= (ite var2646 1 0) 0)) ; Cond: $z5 == 0 
(define-const var2863 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2863)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2863!1 String)
(assert (= var2863!1 ""))
(assert true)
(define-const var800 String (append/672562846 var2863!1 "_")) ; Statement: $r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2863!2 String)
(assert (= var2863!2 (str.++ var2863!1 "_")))
(assert true)
(define-const var3839 String (getVariant/1821738799 var1662)) ; Statement: $r51 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var1157 String (append/672562846 var800 var3839)) ; Statement: $r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r51) 
(declare-const var800!1 String)
(assert (= var800!1 (str.++ var800 var3839)))
(assert true)
(define-const var3130 String (toString/-2075883882 var1157)) ; Statement: $r83 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3891 String (var2171_getProperty/258823597 "file.encoding")) ; Statement: $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding") 
(declare-const var3660!5 var1858)
(assert (not (= var3660!5 null-var1858)))
(assert (= (bundleEncoding/965132528 var3660!5) var3891)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54 
(define-const var1705 String String-init) ; Statement: $r55 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1705)) ; Statement: specialinvoke $r55.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1705!1 String)
(assert (= var1705!1 ""))
(define-const var1813 String (bundle/965132528 var3660!5)) ; Statement: $r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var1823 String (append/672562846 var1705!1 var1813)) ; Statement: $r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var1705!2 String)
(assert (= var1705!2 (str.++ var1705!1 var1813)))
(assert true)
(define-const var1467 String (append/672562846 var1823 var806)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var1823!1 String)
(assert (= var1823!1 (str.++ var1823 var806)))
(assert true)
(define-const var1952 String (append/672562846 var1467 var3324)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var1467!1 String)
(assert (= var1467!1 (str.++ var1467 var3324)))
(assert true)
(define-const var3282 String (append/672562846 var1952 var3130)) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83) 
(declare-const var1952!1 String)
(assert (= var1952!1 (str.++ var1952 var3130)))
(assert true)
(define-const var1903 String (toString/-2075883882 var3282)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3660!5 var1903 4 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0) 

(declare-const var3660!6 var1858)
(declare-const var1903!1 String)
(declare-const var1741 Int)
(declare-const var1934!5 Int)
(define-const var597 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var597)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var597!1 String)
(assert (= var597!1 ""))
(define-const var2870 String (bundle/965132528 var3660!6)) ; Statement: $r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var665 String (append/672562846 var597!1 var2870)) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var597!2 String)
(assert (= var597!2 (str.++ var597!1 var2870)))
(assert true)
(define-const var3567 String (append/672562846 var665 var806)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var665!1 String)
(assert (= var665!1 (str.++ var665 var806)))
(assert true)
(define-const var1242 String (append/672562846 var3567 var3324)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var3567!1 String)
(assert (= var3567!1 (str.++ var3567 var3324)))
(assert true)
(define-const var41 String (toString/-2075883882 var1242)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3660!6 var41 5 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0) 

(declare-const var3660!7 var1858)
(declare-const var41!1 String)
(declare-const var1793 Int)
(declare-const var1934!6 Int)
(define-const var3610 String String-init) ; Statement: $r68 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3610)) ; Statement: specialinvoke $r68.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3610!1 String)
(assert (= var3610!1 ""))
(define-const var2937 String (bundle/965132528 var3660!7)) ; Statement: $r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var2426 String (append/672562846 var3610!1 var2937)) ; Statement: $r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69) 
(declare-const var3610!2 String)
(assert (= var3610!2 (str.++ var3610!1 var2937)))
(assert true)
(define-const var163 String (append/672562846 var2426 var806)) ; Statement: $r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var2426!1 String)
(assert (= var2426!1 (str.++ var2426 var806)))
(assert true)
(define-const var3659 String (toString/-2075883882 var163)) ; Statement: $r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3660!7 var3659 6 (ite (= 1 1) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1) 

(declare-const var3660!8 var1858)
(declare-const var3659!1 String)
(declare-const var1508 Int)
(declare-const var1736!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2608-init=([], java.util.Locale), bundleLanguage/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleCountry/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleVariant/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), <init>/492115872=([java.util.Locale, java.lang.String, java.lang.String, java.lang.String], void), getLanguage/1066037614=([java.util.Locale], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), getCountry/-945186178=([java.util.Locale], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getVariant/1821738799=([java.util.Locale], java.lang.String), bundle/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), processBundle/-1320493310=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, java.lang.String, int, boolean], void), var2608_getDefault/-641693464=([], java.util.Locale), var2171_getProperty/258823597=([java.lang.String], java.lang.String), bundleEncoding/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String)}
; {var1858=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, var3660=r1, var2608=java.util.Locale, var2089=$r0, var1438=$r4, var2644=$r3, var639=$r2, var2648=$r5, var962=$z0, var3358=$r74, var2678=r75, var1310=$r10, var1337=$z1, var996=$r11, var2604=$r13, var2376=$r12, var1011=$r14, var2102=$r76, var1317=r77, var3379=$r15, var3290=$z2, var2015=$r78, var3959=$r20, var1536=$r21, var3696=$r22, var263=$r23, var3853=$r24, var241=$r25, var3201=$r26, var1934=0, var3192=$r27, var2191=$r28, var314=$r29, var2159=$r30, var3367=$r31, var2069=$r32, var1736=1, var1917=$r33, var1263=$r34, var1345=$r35, var2230=$r36, var1458=$r37, var14=2, var2133=$r38, var1742=3, var1662=$r73, var1380=$r39, var1873=$z3, var3070=$r40, var1730=$r42, var1941=$r41, var2640=$r43, var1658=$r79, var806=r80, var176=$r44, var870=$z4, var574=$r81, var3324=r82, var1058=$r49, var2646=$z5, var2863=$r50, var800=$r52, var3839=$r51, var1157=$r53, var3130=$r83, var2171=java.lang.System, var3891=$r54, var1705=$r55, var1813=$r56, var1823=$r57, var1467=$r58, var1952=$r59, var3282=$r60, var1903=$r61, var1741=4, var597=$r62, var2870=$r63, var665=$r64, var3567=$r65, var1242=$r66, var41=$r67, var1793=5, var3610=$r68, var2937=$r69, var2426=$r70, var163=$r71, var3659=$r72, var1508=6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate=var1858, r1=var3660, java.util.Locale=var2608, $r0=var2089, $r4=var1438, $r3=var2644, $r2=var639, $r5=var2648, $z0=var962, $r74=var3358, r75=var2678, $r10=var1310, $z1=var1337, $r11=var996, $r13=var2604, $r12=var2376, $r14=var1011, $r76=var2102, r77=var1317, $r15=var3379, $z2=var3290, $r78=var2015, $r20=var3959, $r21=var1536, $r22=var3696, $r23=var263, $r24=var3853, $r25=var241, $r26=var3201, 0=var1934, $r27=var3192, $r28=var2191, $r29=var314, $r30=var2159, $r31=var3367, $r32=var2069, 1=var1736, $r33=var1917, $r34=var1263, $r35=var1345, $r36=var2230, $r37=var1458, 2=var14, $r38=var2133, 3=var1742, $r73=var1662, $r39=var1380, $z3=var1873, $r40=var3070, $r42=var1730, $r41=var1941, $r43=var2640, $r79=var1658, r80=var806, $r44=var176, $z4=var870, $r81=var574, r82=var3324, $r49=var1058, $z5=var2646, $r50=var2863, $r52=var800, $r51=var3839, $r53=var1157, $r83=var3130, java.lang.System=var2171, $r54=var3891, $r55=var1705, $r56=var1813, $r57=var1823, $r58=var1467, $r59=var1952, $r60=var3282, $r61=var1903, 4=var1741, $r62=var597, $r63=var2870, $r64=var665, $r65=var3567, $r66=var1242, $r67=var41, 5=var1793, $r68=var3610, $r69=var2937, $r70=var2426, $r71=var163, $r72=var3659, 6=var1508}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 6,"<java.lang.StringBuilder: void <init>()>": 9,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 24,"<java.lang.StringBuilder: java.lang.String toString()>": 9}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate;	$r0 = new java.util.Locale;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry>;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant>;	specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2);	$r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r6 = new java.lang.StringBuilder;	$r74 = "";	goto [?= r75 = $r74];	r75 = $r74;	$r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $r11 = new java.lang.StringBuilder;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r12 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r76 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	r77 = $r76;	$r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>();	$z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r16 = new java.lang.StringBuilder;	$r78 = "";	goto [?= $r20 = new java.lang.StringBuilder];	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0);	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0);	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0);	$r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0);	$r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>();	$z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>();	if $z3 == 0 goto $r40 = new java.lang.StringBuilder;	$r40 = new java.lang.StringBuilder;	specialinvoke $r40.<java.lang.StringBuilder: void <init>()>();	$r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r41 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>();	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r79 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>();	r80 = $r79;	$r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>();	$z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>();	if $z4 == 0 goto $r45 = new java.lang.StringBuilder;	$r81 = "";	goto [?= r82 = $r81];	r82 = $r81;	$r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>();	$z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>();	if $z5 == 0 goto $r50 = new java.lang.StringBuilder;	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r51 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>();	$r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r51);	$r83 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.String toString()>();	$r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding");	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54;	$r55 = new java.lang.StringBuilder;	specialinvoke $r55.<java.lang.StringBuilder: void <init>()>();	$r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83);	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0);	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0);	$r68 = new java.lang.StringBuilder;	specialinvoke $r68.<java.lang.StringBuilder: void <init>()>();	$r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69);	$r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1);	return
;block_num 13