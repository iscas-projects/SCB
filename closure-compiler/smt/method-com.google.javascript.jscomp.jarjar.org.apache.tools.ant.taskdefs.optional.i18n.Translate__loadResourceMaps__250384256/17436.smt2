(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2829 0)
(declare-sort var1106 0)
(declare-sort var3556 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1106-init () var1106)
(declare-fun bundleLanguage/965132528 (var2829) String)
(declare-fun bundleCountry/965132528 (var2829) String)
(declare-fun bundleVariant/965132528 (var2829) String)
(declare-fun <init>/492115872 (var1106 String String String) void)
(declare-fun getLanguage/1066037614 (var1106) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun getCountry/-945186178 (var1106) String)
(declare-fun getVariant/1821738799 (var1106) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun bundle/965132528 (var2829) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun processBundle/-1320493310 (var2829 String Int Bool) void)
(declare-fun var1106_getDefault/-641693464 () var1106)
(declare-fun var3556_getProperty/258823597 (String) String)
(declare-fun bundleEncoding/965132528 (var2829) String)
(declare-const null-var2829 var2829)
(declare-const var2060 var2829) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate 
(assert (not (= var2060 null-var2829)))
(define-const var1713 var1106 var1106-init) ; Statement: $r0 = new java.util.Locale 
(define-const var907 String (bundleLanguage/965132528 var2060)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage> 
(define-const var2933 String (bundleCountry/965132528 var2060)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry> 
(define-const var926 String (bundleVariant/965132528 var2060)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant> 
(assert true)
;(assert (<init>/492115872 var1713 var907 var2933 var926)) ; Statement: specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2) 

(declare-const var1713!1 var1106)
(declare-const var907!1 String)
(declare-const var2933!1 String)
(declare-const var926!1 String)
(assert true)
(define-const var2268 String (getLanguage/1066037614 var1713!1)) ; Statement: $r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var1994 Bool (isEmpty/-1285796103 var2268)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.StringBuilder 
(assert (not (= (ite var1994 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2678 String "") ; Statement: $r74 = "" 
 ; Statement: goto [?= r75 = $r74] 
(assert true) ; Non Conditional
(define-const var3363 String var2678) ; Statement: r75 = $r74 
(assert true)
(define-const var3910 String (getCountry/-945186178 var1713!1)) ; Statement: $r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var3284 Bool (isEmpty/-1285796103 var3910)) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r11 = new java.lang.StringBuilder 
(assert (not (= (ite var3284 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3283 String "") ; Statement: $r76 = "" 
 ; Statement: goto [?= r77 = $r76] 
(assert true) ; Non Conditional
(define-const var3836 String var3283) ; Statement: r77 = $r76 
(assert true)
(define-const var2339 String (getVariant/1821738799 var1713!1)) ; Statement: $r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var143 Bool (isEmpty/-1285796103 var2339)) ; Statement: $z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (not (= (ite var143 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var622 String "") ; Statement: $r78 = "" 
 ; Statement: goto [?= $r20 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1284 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1284)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1284!1 String)
(assert (= var1284!1 ""))
(define-const var320 String (bundle/965132528 var2060)) ; Statement: $r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var3814 String (append/672562846 var1284!1 var320)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1284!2 String)
(assert (= var1284!2 (str.++ var1284!1 var320)))
(assert true)
(define-const var1919 String (append/672562846 var3814 var3363)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var3814!1 String)
(assert (= var3814!1 (str.++ var3814 var3363)))
(assert true)
(define-const var2023 String (append/672562846 var1919 var3836)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var1919!1 String)
(assert (= var1919!1 (str.++ var1919 var3836)))
(assert true)
(define-const var531 String (append/672562846 var2023 var622)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78) 
(declare-const var2023!1 String)
(assert (= var2023!1 (str.++ var2023 var622)))
(assert true)
(define-const var3485 String (toString/-2075883882 var531)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var2060 var3485 0 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0) 

(declare-const var2060!1 var2829)
(declare-const var3485!1 String)
(declare-const var1578 Int)
(declare-const var1578!1 Int)
(define-const var1349 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1349)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1349!1 String)
(assert (= var1349!1 ""))
(define-const var1351 String (bundle/965132528 var2060!1)) ; Statement: $r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var3983 String (append/672562846 var1349!1 var1351)) ; Statement: $r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var1349!2 String)
(assert (= var1349!2 (str.++ var1349!1 var1351)))
(assert true)
(define-const var2098 String (append/672562846 var3983 var3363)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var3983!1 String)
(assert (= var3983!1 (str.++ var3983 var3363)))
(assert true)
(define-const var1281 String (append/672562846 var2098 var3836)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var2098!1 String)
(assert (= var2098!1 (str.++ var2098 var3836)))
(assert true)
(define-const var2216 String (toString/-2075883882 var1281)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var2060!1 var2216 1 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0) 

(declare-const var2060!2 var2829)
(declare-const var2216!1 String)
(declare-const var3210 Int)
(declare-const var1578!2 Int)
(define-const var389 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var389)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var389!1 String)
(assert (= var389!1 ""))
(define-const var1364 String (bundle/965132528 var2060!2)) ; Statement: $r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var2803 String (append/672562846 var389!1 var1364)) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var389!2 String)
(assert (= var389!2 (str.++ var389!1 var1364)))
(assert true)
(define-const var2520 String (append/672562846 var2803 var3363)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var2803!1 String)
(assert (= var2803!1 (str.++ var2803 var3363)))
(assert true)
(define-const var2461 String (toString/-2075883882 var2520)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var2060!2 var2461 2 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0) 

(declare-const var2060!3 var2829)
(declare-const var2461!1 String)
(declare-const var15 Int)
(declare-const var1578!3 Int)
(define-const var1038 String (bundle/965132528 var2060!3)) ; Statement: $r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
;(assert (processBundle/-1320493310 var2060!3 var1038 3 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0) 

(declare-const var2060!4 var2829)
(declare-const var1038!1 String)
(declare-const var363 Int)
(declare-const var1578!4 Int)
(define-const var1293 var1106 var1106_getDefault/-641693464) ; Statement: $r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert true)
(define-const var2615 String (getLanguage/1066037614 var1293)) ; Statement: $r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var2807 Bool (isEmpty/-1285796103 var2615)) ; Statement: $z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z3 == 0 goto $r40 = new java.lang.StringBuilder 
(assert (= (ite var2807 1 0) 0)) ; Cond: $z3 == 0 
(define-const var819 String String-init) ; Statement: $r40 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var819)) ; Statement: specialinvoke $r40.<java.lang.StringBuilder: void <init>()>() 
(declare-const var819!1 String)
(assert (= var819!1 ""))
(assert true)
(define-const var1629 String (append/672562846 var819!1 "_")) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var819!2 String)
(assert (= var819!2 (str.++ var819!1 "_")))
(assert true)
(define-const var1435 String (getLanguage/1066037614 var1293)) ; Statement: $r41 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var3272 String (append/672562846 var1629 var1435)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1629!1 String)
(assert (= var1629!1 (str.++ var1629 var1435)))
(assert true)
(define-const var2067 String (toString/-2075883882 var3272)) ; Statement: $r79 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1520 String var2067) ; Statement: r80 = $r79 
(assert true)
(define-const var3405 String (getCountry/-945186178 var1293)) ; Statement: $r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var1801 Bool (isEmpty/-1285796103 var3405)) ; Statement: $z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z4 == 0 goto $r45 = new java.lang.StringBuilder 
(assert (not (= (ite var1801 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var3338 String "") ; Statement: $r81 = "" 
 ; Statement: goto [?= r82 = $r81] 
(assert true) ; Non Conditional
(define-const var3593 String var3338) ; Statement: r82 = $r81 
(assert true)
(define-const var2881 String (getVariant/1821738799 var1293)) ; Statement: $r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var1782 Bool (isEmpty/-1285796103 var2881)) ; Statement: $z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z5 == 0 goto $r50 = new java.lang.StringBuilder 
(assert (= (ite var1782 1 0) 0)) ; Cond: $z5 == 0 
(define-const var2606 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2606)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2606!1 String)
(assert (= var2606!1 ""))
(assert true)
(define-const var1396 String (append/672562846 var2606!1 "_")) ; Statement: $r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2606!2 String)
(assert (= var2606!2 (str.++ var2606!1 "_")))
(assert true)
(define-const var3745 String (getVariant/1821738799 var1293)) ; Statement: $r51 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var2968 String (append/672562846 var1396 var3745)) ; Statement: $r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r51) 
(declare-const var1396!1 String)
(assert (= var1396!1 (str.++ var1396 var3745)))
(assert true)
(define-const var3001 String (toString/-2075883882 var2968)) ; Statement: $r83 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var563 String (var3556_getProperty/258823597 "file.encoding")) ; Statement: $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding") 
(declare-const var2060!5 var2829)
(assert (not (= var2060!5 null-var2829)))
(assert (= (bundleEncoding/965132528 var2060!5) var563)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54 
(define-const var1513 String String-init) ; Statement: $r55 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1513)) ; Statement: specialinvoke $r55.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1513!1 String)
(assert (= var1513!1 ""))
(define-const var3898 String (bundle/965132528 var2060!5)) ; Statement: $r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var1085 String (append/672562846 var1513!1 var3898)) ; Statement: $r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var1513!2 String)
(assert (= var1513!2 (str.++ var1513!1 var3898)))
(assert true)
(define-const var3958 String (append/672562846 var1085 var1520)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var1085!1 String)
(assert (= var1085!1 (str.++ var1085 var1520)))
(assert true)
(define-const var3484 String (append/672562846 var3958 var3593)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var3958!1 String)
(assert (= var3958!1 (str.++ var3958 var3593)))
(assert true)
(define-const var2616 String (append/672562846 var3484 var3001)) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83) 
(declare-const var3484!1 String)
(assert (= var3484!1 (str.++ var3484 var3001)))
(assert true)
(define-const var2860 String (toString/-2075883882 var2616)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var2060!5 var2860 4 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0) 

(declare-const var2060!6 var2829)
(declare-const var2860!1 String)
(declare-const var978 Int)
(declare-const var1578!5 Int)
(define-const var3367 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3367)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3367!1 String)
(assert (= var3367!1 ""))
(define-const var1105 String (bundle/965132528 var2060!6)) ; Statement: $r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var966 String (append/672562846 var3367!1 var1105)) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var3367!2 String)
(assert (= var3367!2 (str.++ var3367!1 var1105)))
(assert true)
(define-const var9 String (append/672562846 var966 var1520)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var966!1 String)
(assert (= var966!1 (str.++ var966 var1520)))
(assert true)
(define-const var315 String (append/672562846 var9 var3593)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var9!1 String)
(assert (= var9!1 (str.++ var9 var3593)))
(assert true)
(define-const var2641 String (toString/-2075883882 var315)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var2060!6 var2641 5 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0) 

(declare-const var2060!7 var2829)
(declare-const var2641!1 String)
(declare-const var3255 Int)
(declare-const var1578!6 Int)
(define-const var2386 String String-init) ; Statement: $r68 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2386)) ; Statement: specialinvoke $r68.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2386!1 String)
(assert (= var2386!1 ""))
(define-const var2183 String (bundle/965132528 var2060!7)) ; Statement: $r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var779 String (append/672562846 var2386!1 var2183)) ; Statement: $r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69) 
(declare-const var2386!2 String)
(assert (= var2386!2 (str.++ var2386!1 var2183)))
(assert true)
(define-const var47 String (append/672562846 var779 var1520)) ; Statement: $r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var779!1 String)
(assert (= var779!1 (str.++ var779 var1520)))
(assert true)
(define-const var2038 String (toString/-2075883882 var47)) ; Statement: $r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var2060!7 var2038 6 (ite (= 1 1) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1) 

(declare-const var2060!8 var2829)
(declare-const var2038!1 String)
(declare-const var678 Int)
(declare-const var3210!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1106-init=([], java.util.Locale), bundleLanguage/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleCountry/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleVariant/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), <init>/492115872=([java.util.Locale, java.lang.String, java.lang.String, java.lang.String], void), getLanguage/1066037614=([java.util.Locale], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), getCountry/-945186178=([java.util.Locale], java.lang.String), getVariant/1821738799=([java.util.Locale], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), bundle/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), processBundle/-1320493310=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, java.lang.String, int, boolean], void), var1106_getDefault/-641693464=([], java.util.Locale), var3556_getProperty/258823597=([java.lang.String], java.lang.String), bundleEncoding/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String)}
; {var2829=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, var2060=r1, var1106=java.util.Locale, var1713=$r0, var907=$r4, var2933=$r3, var926=$r2, var2268=$r5, var1994=$z0, var2678=$r74, var3363=r75, var3910=$r10, var3284=$z1, var3283=$r76, var3836=r77, var2339=$r15, var143=$z2, var622=$r78, var1284=$r20, var320=$r21, var3814=$r22, var1919=$r23, var2023=$r24, var531=$r25, var3485=$r26, var1578=0, var1349=$r27, var1351=$r28, var3983=$r29, var2098=$r30, var1281=$r31, var2216=$r32, var3210=1, var389=$r33, var1364=$r34, var2803=$r35, var2520=$r36, var2461=$r37, var15=2, var1038=$r38, var363=3, var1293=$r73, var2615=$r39, var2807=$z3, var819=$r40, var1629=$r42, var1435=$r41, var3272=$r43, var2067=$r79, var1520=r80, var3405=$r44, var1801=$z4, var3338=$r81, var3593=r82, var2881=$r49, var1782=$z5, var2606=$r50, var1396=$r52, var3745=$r51, var2968=$r53, var3001=$r83, var3556=java.lang.System, var563=$r54, var1513=$r55, var3898=$r56, var1085=$r57, var3958=$r58, var3484=$r59, var2616=$r60, var2860=$r61, var978=4, var3367=$r62, var1105=$r63, var966=$r64, var9=$r65, var315=$r66, var2641=$r67, var3255=5, var2386=$r68, var2183=$r69, var779=$r70, var47=$r71, var2038=$r72, var678=6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate=var2829, r1=var2060, java.util.Locale=var1106, $r0=var1713, $r4=var907, $r3=var2933, $r2=var926, $r5=var2268, $z0=var1994, $r74=var2678, r75=var3363, $r10=var3910, $z1=var3284, $r76=var3283, r77=var3836, $r15=var2339, $z2=var143, $r78=var622, $r20=var1284, $r21=var320, $r22=var3814, $r23=var1919, $r24=var2023, $r25=var531, $r26=var3485, 0=var1578, $r27=var1349, $r28=var1351, $r29=var3983, $r30=var2098, $r31=var1281, $r32=var2216, 1=var3210, $r33=var389, $r34=var1364, $r35=var2803, $r36=var2520, $r37=var2461, 2=var15, $r38=var1038, 3=var363, $r73=var1293, $r39=var2615, $z3=var2807, $r40=var819, $r42=var1629, $r41=var1435, $r43=var3272, $r79=var2067, r80=var1520, $r44=var3405, $z4=var1801, $r81=var3338, r82=var3593, $r49=var2881, $z5=var1782, $r50=var2606, $r52=var1396, $r51=var3745, $r53=var2968, $r83=var3001, java.lang.System=var3556, $r54=var563, $r55=var1513, $r56=var3898, $r57=var1085, $r58=var3958, $r59=var3484, $r60=var2616, $r61=var2860, 4=var978, $r62=var3367, $r63=var1105, $r64=var966, $r65=var9, $r66=var315, $r67=var2641, 5=var3255, $r68=var2386, $r69=var2183, $r70=var779, $r71=var47, $r72=var2038, 6=var678}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 6,"<java.lang.StringBuilder: void <init>()>": 8,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 22,"<java.lang.StringBuilder: java.lang.String toString()>": 8}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate;	$r0 = new java.util.Locale;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry>;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant>;	specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2);	$r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r6 = new java.lang.StringBuilder;	$r74 = "";	goto [?= r75 = $r74];	r75 = $r74;	$r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $r11 = new java.lang.StringBuilder;	$r76 = "";	goto [?= r77 = $r76];	r77 = $r76;	$r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>();	$z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r16 = new java.lang.StringBuilder;	$r78 = "";	goto [?= $r20 = new java.lang.StringBuilder];	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0);	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0);	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0);	$r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0);	$r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>();	$z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>();	if $z3 == 0 goto $r40 = new java.lang.StringBuilder;	$r40 = new java.lang.StringBuilder;	specialinvoke $r40.<java.lang.StringBuilder: void <init>()>();	$r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r41 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>();	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r79 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>();	r80 = $r79;	$r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>();	$z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>();	if $z4 == 0 goto $r45 = new java.lang.StringBuilder;	$r81 = "";	goto [?= r82 = $r81];	r82 = $r81;	$r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>();	$z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>();	if $z5 == 0 goto $r50 = new java.lang.StringBuilder;	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r51 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>();	$r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r51);	$r83 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.String toString()>();	$r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding");	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54;	$r55 = new java.lang.StringBuilder;	specialinvoke $r55.<java.lang.StringBuilder: void <init>()>();	$r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83);	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0);	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0);	$r68 = new java.lang.StringBuilder;	specialinvoke $r68.<java.lang.StringBuilder: void <init>()>();	$r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69);	$r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1);	return
;block_num 13