(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3570 0)
(declare-sort var3419 0)
(declare-sort var1954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3419-init () var3419)
(declare-fun bundleLanguage/965132528 (var3570) String)
(declare-fun bundleCountry/965132528 (var3570) String)
(declare-fun bundleVariant/965132528 (var3570) String)
(declare-fun <init>/492115872 (var3419 String String String) void)
(declare-fun getLanguage/1066037614 (var3419) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun getCountry/-945186178 (var3419) String)
(declare-fun getVariant/1821738799 (var3419) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun bundle/965132528 (var3570) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun processBundle/-1320493310 (var3570 String Int Bool) void)
(declare-fun var3419_getDefault/-641693464 () var3419)
(declare-fun var1954_getProperty/258823597 (String) String)
(declare-fun bundleEncoding/965132528 (var3570) String)
(declare-const null-var3570 var3570)
(declare-const var1716 var3570) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate 
(assert (not (= var1716 null-var3570)))
(define-const var1651 var3419 var3419-init) ; Statement: $r0 = new java.util.Locale 
(define-const var2293 String (bundleLanguage/965132528 var1716)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage> 
(define-const var3431 String (bundleCountry/965132528 var1716)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry> 
(define-const var3301 String (bundleVariant/965132528 var1716)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant> 
(assert true)
;(assert (<init>/492115872 var1651 var2293 var3431 var3301)) ; Statement: specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2) 

(declare-const var1651!1 var3419)
(declare-const var2293!1 String)
(declare-const var3431!1 String)
(declare-const var3301!1 String)
(assert true)
(define-const var3458 String (getLanguage/1066037614 var1651!1)) ; Statement: $r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var859 Bool (isEmpty/-1285796103 var3458)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.StringBuilder 
(assert (not (= (ite var859 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1591 String "") ; Statement: $r74 = "" 
 ; Statement: goto [?= r75 = $r74] 
(assert true) ; Non Conditional
(define-const var3380 String var1591) ; Statement: r75 = $r74 
(assert true)
(define-const var520 String (getCountry/-945186178 var1651!1)) ; Statement: $r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var2528 Bool (isEmpty/-1285796103 var520)) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r11 = new java.lang.StringBuilder 
(assert (not (= (ite var2528 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2279 String "") ; Statement: $r76 = "" 
 ; Statement: goto [?= r77 = $r76] 
(assert true) ; Non Conditional
(define-const var2849 String var2279) ; Statement: r77 = $r76 
(assert true)
(define-const var11 String (getVariant/1821738799 var1651!1)) ; Statement: $r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var2134 Bool (isEmpty/-1285796103 var11)) ; Statement: $z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (not (= (ite var2134 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3043 String "") ; Statement: $r78 = "" 
 ; Statement: goto [?= $r20 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2049 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2049)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2049!1 String)
(assert (= var2049!1 ""))
(define-const var3653 String (bundle/965132528 var1716)) ; Statement: $r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var1731 String (append/672562846 var2049!1 var3653)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2049!2 String)
(assert (= var2049!2 (str.++ var2049!1 var3653)))
(assert true)
(define-const var2302 String (append/672562846 var1731 var3380)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var1731!1 String)
(assert (= var1731!1 (str.++ var1731 var3380)))
(assert true)
(define-const var1296 String (append/672562846 var2302 var2849)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var2302!1 String)
(assert (= var2302!1 (str.++ var2302 var2849)))
(assert true)
(define-const var1344 String (append/672562846 var1296 var3043)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78) 
(declare-const var1296!1 String)
(assert (= var1296!1 (str.++ var1296 var3043)))
(assert true)
(define-const var3922 String (toString/-2075883882 var1344)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1716 var3922 0 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0) 

(declare-const var1716!1 var3570)
(declare-const var3922!1 String)
(declare-const var1283 Int)
(declare-const var1283!1 Int)
(define-const var1584 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1584)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1584!1 String)
(assert (= var1584!1 ""))
(define-const var3678 String (bundle/965132528 var1716!1)) ; Statement: $r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var390 String (append/672562846 var1584!1 var3678)) ; Statement: $r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var1584!2 String)
(assert (= var1584!2 (str.++ var1584!1 var3678)))
(assert true)
(define-const var2756 String (append/672562846 var390 var3380)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var390!1 String)
(assert (= var390!1 (str.++ var390 var3380)))
(assert true)
(define-const var1461 String (append/672562846 var2756 var2849)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var2756!1 String)
(assert (= var2756!1 (str.++ var2756 var2849)))
(assert true)
(define-const var2688 String (toString/-2075883882 var1461)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1716!1 var2688 1 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0) 

(declare-const var1716!2 var3570)
(declare-const var2688!1 String)
(declare-const var3207 Int)
(declare-const var1283!2 Int)
(define-const var2320 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2320)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2320!1 String)
(assert (= var2320!1 ""))
(define-const var488 String (bundle/965132528 var1716!2)) ; Statement: $r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var3914 String (append/672562846 var2320!1 var488)) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var2320!2 String)
(assert (= var2320!2 (str.++ var2320!1 var488)))
(assert true)
(define-const var2888 String (append/672562846 var3914 var3380)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var3914!1 String)
(assert (= var3914!1 (str.++ var3914 var3380)))
(assert true)
(define-const var1599 String (toString/-2075883882 var2888)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1716!2 var1599 2 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0) 

(declare-const var1716!3 var3570)
(declare-const var1599!1 String)
(declare-const var988 Int)
(declare-const var1283!3 Int)
(define-const var1196 String (bundle/965132528 var1716!3)) ; Statement: $r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
;(assert (processBundle/-1320493310 var1716!3 var1196 3 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0) 

(declare-const var1716!4 var3570)
(declare-const var1196!1 String)
(declare-const var724 Int)
(declare-const var1283!4 Int)
(define-const var3736 var3419 var3419_getDefault/-641693464) ; Statement: $r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert true)
(define-const var3067 String (getLanguage/1066037614 var3736)) ; Statement: $r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var1602 Bool (isEmpty/-1285796103 var3067)) ; Statement: $z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z3 == 0 goto $r40 = new java.lang.StringBuilder 
(assert (not (= (ite var1602 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var2626 String "") ; Statement: $r79 = "" 
 ; Statement: goto [?= r80 = $r79] 
(assert true) ; Non Conditional
(define-const var1029 String var2626) ; Statement: r80 = $r79 
(assert true)
(define-const var2712 String (getCountry/-945186178 var3736)) ; Statement: $r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var2135 Bool (isEmpty/-1285796103 var2712)) ; Statement: $z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z4 == 0 goto $r45 = new java.lang.StringBuilder 
(assert (not (= (ite var2135 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var1996 String "") ; Statement: $r81 = "" 
 ; Statement: goto [?= r82 = $r81] 
(assert true) ; Non Conditional
(define-const var2316 String var1996) ; Statement: r82 = $r81 
(assert true)
(define-const var761 String (getVariant/1821738799 var3736)) ; Statement: $r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var184 Bool (isEmpty/-1285796103 var761)) ; Statement: $z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z5 == 0 goto $r50 = new java.lang.StringBuilder 
(assert (= (ite var184 1 0) 0)) ; Cond: $z5 == 0 
(define-const var1329 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1329)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1329!1 String)
(assert (= var1329!1 ""))
(assert true)
(define-const var340 String (append/672562846 var1329!1 "_")) ; Statement: $r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1329!2 String)
(assert (= var1329!2 (str.++ var1329!1 "_")))
(assert true)
(define-const var1420 String (getVariant/1821738799 var3736)) ; Statement: $r51 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var1300 String (append/672562846 var340 var1420)) ; Statement: $r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r51) 
(declare-const var340!1 String)
(assert (= var340!1 (str.++ var340 var1420)))
(assert true)
(define-const var3561 String (toString/-2075883882 var1300)) ; Statement: $r83 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2273 String (var1954_getProperty/258823597 "file.encoding")) ; Statement: $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding") 
(declare-const var1716!5 var3570)
(assert (not (= var1716!5 null-var3570)))
(assert (= (bundleEncoding/965132528 var1716!5) var2273)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54 
(define-const var369 String String-init) ; Statement: $r55 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var369)) ; Statement: specialinvoke $r55.<java.lang.StringBuilder: void <init>()>() 
(declare-const var369!1 String)
(assert (= var369!1 ""))
(define-const var2317 String (bundle/965132528 var1716!5)) ; Statement: $r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var3838 String (append/672562846 var369!1 var2317)) ; Statement: $r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var369!2 String)
(assert (= var369!2 (str.++ var369!1 var2317)))
(assert true)
(define-const var1963 String (append/672562846 var3838 var1029)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var3838!1 String)
(assert (= var3838!1 (str.++ var3838 var1029)))
(assert true)
(define-const var2164 String (append/672562846 var1963 var2316)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var1963!1 String)
(assert (= var1963!1 (str.++ var1963 var2316)))
(assert true)
(define-const var3869 String (append/672562846 var2164 var3561)) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83) 
(declare-const var2164!1 String)
(assert (= var2164!1 (str.++ var2164 var3561)))
(assert true)
(define-const var3765 String (toString/-2075883882 var3869)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1716!5 var3765 4 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0) 

(declare-const var1716!6 var3570)
(declare-const var3765!1 String)
(declare-const var3053 Int)
(declare-const var1283!5 Int)
(define-const var732 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var732)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var732!1 String)
(assert (= var732!1 ""))
(define-const var1547 String (bundle/965132528 var1716!6)) ; Statement: $r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var2084 String (append/672562846 var732!1 var1547)) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var732!2 String)
(assert (= var732!2 (str.++ var732!1 var1547)))
(assert true)
(define-const var1052 String (append/672562846 var2084 var1029)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var2084!1 String)
(assert (= var2084!1 (str.++ var2084 var1029)))
(assert true)
(define-const var1721 String (append/672562846 var1052 var2316)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var1052!1 String)
(assert (= var1052!1 (str.++ var1052 var2316)))
(assert true)
(define-const var3379 String (toString/-2075883882 var1721)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1716!6 var3379 5 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0) 

(declare-const var1716!7 var3570)
(declare-const var3379!1 String)
(declare-const var1737 Int)
(declare-const var1283!6 Int)
(define-const var2207 String String-init) ; Statement: $r68 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2207)) ; Statement: specialinvoke $r68.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2207!1 String)
(assert (= var2207!1 ""))
(define-const var3479 String (bundle/965132528 var1716!7)) ; Statement: $r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var3219 String (append/672562846 var2207!1 var3479)) ; Statement: $r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69) 
(declare-const var2207!2 String)
(assert (= var2207!2 (str.++ var2207!1 var3479)))
(assert true)
(define-const var2971 String (append/672562846 var3219 var1029)) ; Statement: $r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var3219!1 String)
(assert (= var3219!1 (str.++ var3219 var1029)))
(assert true)
(define-const var139 String (toString/-2075883882 var2971)) ; Statement: $r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var1716!7 var139 6 (ite (= 1 1) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1) 

(declare-const var1716!8 var3570)
(declare-const var139!1 String)
(declare-const var2641 Int)
(declare-const var3207!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3419-init=([], java.util.Locale), bundleLanguage/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleCountry/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleVariant/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), <init>/492115872=([java.util.Locale, java.lang.String, java.lang.String, java.lang.String], void), getLanguage/1066037614=([java.util.Locale], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), getCountry/-945186178=([java.util.Locale], java.lang.String), getVariant/1821738799=([java.util.Locale], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), bundle/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), processBundle/-1320493310=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, java.lang.String, int, boolean], void), var3419_getDefault/-641693464=([], java.util.Locale), var1954_getProperty/258823597=([java.lang.String], java.lang.String), bundleEncoding/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String)}
; {var3570=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, var1716=r1, var3419=java.util.Locale, var1651=$r0, var2293=$r4, var3431=$r3, var3301=$r2, var3458=$r5, var859=$z0, var1591=$r74, var3380=r75, var520=$r10, var2528=$z1, var2279=$r76, var2849=r77, var11=$r15, var2134=$z2, var3043=$r78, var2049=$r20, var3653=$r21, var1731=$r22, var2302=$r23, var1296=$r24, var1344=$r25, var3922=$r26, var1283=0, var1584=$r27, var3678=$r28, var390=$r29, var2756=$r30, var1461=$r31, var2688=$r32, var3207=1, var2320=$r33, var488=$r34, var3914=$r35, var2888=$r36, var1599=$r37, var988=2, var1196=$r38, var724=3, var3736=$r73, var3067=$r39, var1602=$z3, var2626=$r79, var1029=r80, var2712=$r44, var2135=$z4, var1996=$r81, var2316=r82, var761=$r49, var184=$z5, var1329=$r50, var340=$r52, var1420=$r51, var1300=$r53, var3561=$r83, var1954=java.lang.System, var2273=$r54, var369=$r55, var2317=$r56, var3838=$r57, var1963=$r58, var2164=$r59, var3869=$r60, var3765=$r61, var3053=4, var732=$r62, var1547=$r63, var2084=$r64, var1052=$r65, var1721=$r66, var3379=$r67, var1737=5, var2207=$r68, var3479=$r69, var3219=$r70, var2971=$r71, var139=$r72, var2641=6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate=var3570, r1=var1716, java.util.Locale=var3419, $r0=var1651, $r4=var2293, $r3=var3431, $r2=var3301, $r5=var3458, $z0=var859, $r74=var1591, r75=var3380, $r10=var520, $z1=var2528, $r76=var2279, r77=var2849, $r15=var11, $z2=var2134, $r78=var3043, $r20=var2049, $r21=var3653, $r22=var1731, $r23=var2302, $r24=var1296, $r25=var1344, $r26=var3922, 0=var1283, $r27=var1584, $r28=var3678, $r29=var390, $r30=var2756, $r31=var1461, $r32=var2688, 1=var3207, $r33=var2320, $r34=var488, $r35=var3914, $r36=var2888, $r37=var1599, 2=var988, $r38=var1196, 3=var724, $r73=var3736, $r39=var3067, $z3=var1602, $r79=var2626, r80=var1029, $r44=var2712, $z4=var2135, $r81=var1996, r82=var2316, $r49=var761, $z5=var184, $r50=var1329, $r52=var340, $r51=var1420, $r53=var1300, $r83=var3561, java.lang.System=var1954, $r54=var2273, $r55=var369, $r56=var2317, $r57=var3838, $r58=var1963, $r59=var2164, $r60=var3869, $r61=var3765, 4=var3053, $r62=var732, $r63=var1547, $r64=var2084, $r65=var1052, $r66=var1721, $r67=var3379, 5=var1737, $r68=var2207, $r69=var3479, $r70=var3219, $r71=var2971, $r72=var139, 6=var2641}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 6,"<java.lang.StringBuilder: void <init>()>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 20,"<java.lang.StringBuilder: java.lang.String toString()>": 7}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate;	$r0 = new java.util.Locale;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry>;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant>;	specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2);	$r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r6 = new java.lang.StringBuilder;	$r74 = "";	goto [?= r75 = $r74];	r75 = $r74;	$r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $r11 = new java.lang.StringBuilder;	$r76 = "";	goto [?= r77 = $r76];	r77 = $r76;	$r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>();	$z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r16 = new java.lang.StringBuilder;	$r78 = "";	goto [?= $r20 = new java.lang.StringBuilder];	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0);	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0);	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0);	$r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0);	$r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>();	$z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>();	if $z3 == 0 goto $r40 = new java.lang.StringBuilder;	$r79 = "";	goto [?= r80 = $r79];	r80 = $r79;	$r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>();	$z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>();	if $z4 == 0 goto $r45 = new java.lang.StringBuilder;	$r81 = "";	goto [?= r82 = $r81];	r82 = $r81;	$r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>();	$z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>();	if $z5 == 0 goto $r50 = new java.lang.StringBuilder;	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r51 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>();	$r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r51);	$r83 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.String toString()>();	$r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding");	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54;	$r55 = new java.lang.StringBuilder;	specialinvoke $r55.<java.lang.StringBuilder: void <init>()>();	$r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83);	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0);	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0);	$r68 = new java.lang.StringBuilder;	specialinvoke $r68.<java.lang.StringBuilder: void <init>()>();	$r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69);	$r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1);	return
;block_num 13