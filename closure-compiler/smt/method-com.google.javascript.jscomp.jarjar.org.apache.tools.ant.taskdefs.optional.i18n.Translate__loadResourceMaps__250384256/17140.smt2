(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1499 0)
(declare-sort var1001 0)
(declare-sort var1169 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1001-init () var1001)
(declare-fun bundleLanguage/965132528 (var1499) String)
(declare-fun bundleCountry/965132528 (var1499) String)
(declare-fun bundleVariant/965132528 (var1499) String)
(declare-fun <init>/492115872 (var1001 String String String) void)
(declare-fun getLanguage/1066037614 (var1001) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun getCountry/-945186178 (var1001) String)
(declare-fun getVariant/1821738799 (var1001) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun bundle/965132528 (var1499) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun processBundle/-1320493310 (var1499 String Int Bool) void)
(declare-fun var1001_getDefault/-641693464 () var1001)
(declare-fun var1169_getProperty/258823597 (String) String)
(declare-fun bundleEncoding/965132528 (var1499) String)
(declare-const null-var1499 var1499)
(declare-const var703 var1499) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate 
(assert (not (= var703 null-var1499)))
(define-const var2519 var1001 var1001-init) ; Statement: $r0 = new java.util.Locale 
(define-const var3221 String (bundleLanguage/965132528 var703)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage> 
(define-const var1374 String (bundleCountry/965132528 var703)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry> 
(define-const var2907 String (bundleVariant/965132528 var703)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant> 
(assert true)
;(assert (<init>/492115872 var2519 var3221 var1374 var2907)) ; Statement: specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2) 

(declare-const var2519!1 var1001)
(declare-const var3221!1 String)
(declare-const var1374!1 String)
(declare-const var2907!1 String)
(assert true)
(define-const var3913 String (getLanguage/1066037614 var2519!1)) ; Statement: $r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var1523 Bool (isEmpty/-1285796103 var3913)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.StringBuilder 
(assert (not (= (ite var1523 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1364 String "") ; Statement: $r74 = "" 
 ; Statement: goto [?= r75 = $r74] 
(assert true) ; Non Conditional
(define-const var2484 String var1364) ; Statement: r75 = $r74 
(assert true)
(define-const var204 String (getCountry/-945186178 var2519!1)) ; Statement: $r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var2240 Bool (isEmpty/-1285796103 var204)) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r11 = new java.lang.StringBuilder 
(assert (not (= (ite var2240 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2291 String "") ; Statement: $r76 = "" 
 ; Statement: goto [?= r77 = $r76] 
(assert true) ; Non Conditional
(define-const var3663 String var2291) ; Statement: r77 = $r76 
(assert true)
(define-const var907 String (getVariant/1821738799 var2519!1)) ; Statement: $r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var1480 Bool (isEmpty/-1285796103 var907)) ; Statement: $z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (not (= (ite var1480 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2321 String "") ; Statement: $r78 = "" 
 ; Statement: goto [?= $r20 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2442 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2442)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2442!1 String)
(assert (= var2442!1 ""))
(define-const var1810 String (bundle/965132528 var703)) ; Statement: $r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var115 String (append/672562846 var2442!1 var1810)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2442!2 String)
(assert (= var2442!2 (str.++ var2442!1 var1810)))
(assert true)
(define-const var1412 String (append/672562846 var115 var2484)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var115!1 String)
(assert (= var115!1 (str.++ var115 var2484)))
(assert true)
(define-const var2157 String (append/672562846 var1412 var3663)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var1412!1 String)
(assert (= var1412!1 (str.++ var1412 var3663)))
(assert true)
(define-const var2934 String (append/672562846 var2157 var2321)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78) 
(declare-const var2157!1 String)
(assert (= var2157!1 (str.++ var2157 var2321)))
(assert true)
(define-const var3901 String (toString/-2075883882 var2934)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var703 var3901 0 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0) 

(declare-const var703!1 var1499)
(declare-const var3901!1 String)
(declare-const var123 Int)
(declare-const var123!1 Int)
(define-const var2592 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2592)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2592!1 String)
(assert (= var2592!1 ""))
(define-const var777 String (bundle/965132528 var703!1)) ; Statement: $r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var116 String (append/672562846 var2592!1 var777)) ; Statement: $r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var2592!2 String)
(assert (= var2592!2 (str.++ var2592!1 var777)))
(assert true)
(define-const var1466 String (append/672562846 var116 var2484)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var116!1 String)
(assert (= var116!1 (str.++ var116 var2484)))
(assert true)
(define-const var655 String (append/672562846 var1466 var3663)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var1466!1 String)
(assert (= var1466!1 (str.++ var1466 var3663)))
(assert true)
(define-const var3682 String (toString/-2075883882 var655)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var703!1 var3682 1 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0) 

(declare-const var703!2 var1499)
(declare-const var3682!1 String)
(declare-const var3592 Int)
(declare-const var123!2 Int)
(define-const var2947 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2947)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2947!1 String)
(assert (= var2947!1 ""))
(define-const var3882 String (bundle/965132528 var703!2)) ; Statement: $r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var745 String (append/672562846 var2947!1 var3882)) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var2947!2 String)
(assert (= var2947!2 (str.++ var2947!1 var3882)))
(assert true)
(define-const var3180 String (append/672562846 var745 var2484)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var745!1 String)
(assert (= var745!1 (str.++ var745 var2484)))
(assert true)
(define-const var2285 String (toString/-2075883882 var3180)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var703!2 var2285 2 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0) 

(declare-const var703!3 var1499)
(declare-const var2285!1 String)
(declare-const var40 Int)
(declare-const var123!3 Int)
(define-const var960 String (bundle/965132528 var703!3)) ; Statement: $r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
;(assert (processBundle/-1320493310 var703!3 var960 3 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0) 

(declare-const var703!4 var1499)
(declare-const var960!1 String)
(declare-const var3503 Int)
(declare-const var123!4 Int)
(define-const var1582 var1001 var1001_getDefault/-641693464) ; Statement: $r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert true)
(define-const var3614 String (getLanguage/1066037614 var1582)) ; Statement: $r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var2992 Bool (isEmpty/-1285796103 var3614)) ; Statement: $z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z3 == 0 goto $r40 = new java.lang.StringBuilder 
(assert (not (= (ite var2992 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var3085 String "") ; Statement: $r79 = "" 
 ; Statement: goto [?= r80 = $r79] 
(assert true) ; Non Conditional
(define-const var3294 String var3085) ; Statement: r80 = $r79 
(assert true)
(define-const var1790 String (getCountry/-945186178 var1582)) ; Statement: $r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var1826 Bool (isEmpty/-1285796103 var1790)) ; Statement: $z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z4 == 0 goto $r45 = new java.lang.StringBuilder 
(assert (not (= (ite var1826 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var1384 String "") ; Statement: $r81 = "" 
 ; Statement: goto [?= r82 = $r81] 
(assert true) ; Non Conditional
(define-const var3918 String var1384) ; Statement: r82 = $r81 
(assert true)
(define-const var1559 String (getVariant/1821738799 var1582)) ; Statement: $r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var3868 Bool (isEmpty/-1285796103 var1559)) ; Statement: $z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z5 == 0 goto $r50 = new java.lang.StringBuilder 
(assert (not (= (ite var3868 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var2759 String "") ; Statement: $r83 = "" 
 ; Statement: goto [?= $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding")] 
(assert true) ; Non Conditional
(define-const var2165 String (var1169_getProperty/258823597 "file.encoding")) ; Statement: $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding") 
(declare-const var703!5 var1499)
(assert (not (= var703!5 null-var1499)))
(assert (= (bundleEncoding/965132528 var703!5) var2165)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54 
(define-const var1539 String String-init) ; Statement: $r55 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1539)) ; Statement: specialinvoke $r55.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1539!1 String)
(assert (= var1539!1 ""))
(define-const var35 String (bundle/965132528 var703!5)) ; Statement: $r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var500 String (append/672562846 var1539!1 var35)) ; Statement: $r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var1539!2 String)
(assert (= var1539!2 (str.++ var1539!1 var35)))
(assert true)
(define-const var770 String (append/672562846 var500 var3294)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var500!1 String)
(assert (= var500!1 (str.++ var500 var3294)))
(assert true)
(define-const var23 String (append/672562846 var770 var3918)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var770!1 String)
(assert (= var770!1 (str.++ var770 var3918)))
(assert true)
(define-const var2060 String (append/672562846 var23 var2759)) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83) 
(declare-const var23!1 String)
(assert (= var23!1 (str.++ var23 var2759)))
(assert true)
(define-const var948 String (toString/-2075883882 var2060)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var703!5 var948 4 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0) 

(declare-const var703!6 var1499)
(declare-const var948!1 String)
(declare-const var63 Int)
(declare-const var123!5 Int)
(define-const var532 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var532)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var532!1 String)
(assert (= var532!1 ""))
(define-const var2565 String (bundle/965132528 var703!6)) ; Statement: $r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var2590 String (append/672562846 var532!1 var2565)) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var532!2 String)
(assert (= var532!2 (str.++ var532!1 var2565)))
(assert true)
(define-const var452 String (append/672562846 var2590 var3294)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var2590!1 String)
(assert (= var2590!1 (str.++ var2590 var3294)))
(assert true)
(define-const var2314 String (append/672562846 var452 var3918)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var452!1 String)
(assert (= var452!1 (str.++ var452 var3918)))
(assert true)
(define-const var3607 String (toString/-2075883882 var2314)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var703!6 var3607 5 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0) 

(declare-const var703!7 var1499)
(declare-const var3607!1 String)
(declare-const var302 Int)
(declare-const var123!6 Int)
(define-const var2561 String String-init) ; Statement: $r68 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2561)) ; Statement: specialinvoke $r68.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2561!1 String)
(assert (= var2561!1 ""))
(define-const var1583 String (bundle/965132528 var703!7)) ; Statement: $r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var2017 String (append/672562846 var2561!1 var1583)) ; Statement: $r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69) 
(declare-const var2561!2 String)
(assert (= var2561!2 (str.++ var2561!1 var1583)))
(assert true)
(define-const var3033 String (append/672562846 var2017 var3294)) ; Statement: $r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var2017!1 String)
(assert (= var2017!1 (str.++ var2017 var3294)))
(assert true)
(define-const var1947 String (toString/-2075883882 var3033)) ; Statement: $r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var703!7 var1947 6 (ite (= 1 1) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1) 

(declare-const var703!8 var1499)
(declare-const var1947!1 String)
(declare-const var3675 Int)
(declare-const var3592!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1001-init=([], java.util.Locale), bundleLanguage/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleCountry/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleVariant/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), <init>/492115872=([java.util.Locale, java.lang.String, java.lang.String, java.lang.String], void), getLanguage/1066037614=([java.util.Locale], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), getCountry/-945186178=([java.util.Locale], java.lang.String), getVariant/1821738799=([java.util.Locale], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), bundle/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), processBundle/-1320493310=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, java.lang.String, int, boolean], void), var1001_getDefault/-641693464=([], java.util.Locale), var1169_getProperty/258823597=([java.lang.String], java.lang.String), bundleEncoding/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String)}
; {var1499=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, var703=r1, var1001=java.util.Locale, var2519=$r0, var3221=$r4, var1374=$r3, var2907=$r2, var3913=$r5, var1523=$z0, var1364=$r74, var2484=r75, var204=$r10, var2240=$z1, var2291=$r76, var3663=r77, var907=$r15, var1480=$z2, var2321=$r78, var2442=$r20, var1810=$r21, var115=$r22, var1412=$r23, var2157=$r24, var2934=$r25, var3901=$r26, var123=0, var2592=$r27, var777=$r28, var116=$r29, var1466=$r30, var655=$r31, var3682=$r32, var3592=1, var2947=$r33, var3882=$r34, var745=$r35, var3180=$r36, var2285=$r37, var40=2, var960=$r38, var3503=3, var1582=$r73, var3614=$r39, var2992=$z3, var3085=$r79, var3294=r80, var1790=$r44, var1826=$z4, var1384=$r81, var3918=r82, var1559=$r49, var3868=$z5, var2759=$r83, var1169=java.lang.System, var2165=$r54, var1539=$r55, var35=$r56, var500=$r57, var770=$r58, var23=$r59, var2060=$r60, var948=$r61, var63=4, var532=$r62, var2565=$r63, var2590=$r64, var452=$r65, var2314=$r66, var3607=$r67, var302=5, var2561=$r68, var1583=$r69, var2017=$r70, var3033=$r71, var1947=$r72, var3675=6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate=var1499, r1=var703, java.util.Locale=var1001, $r0=var2519, $r4=var3221, $r3=var1374, $r2=var2907, $r5=var3913, $z0=var1523, $r74=var1364, r75=var2484, $r10=var204, $z1=var2240, $r76=var2291, r77=var3663, $r15=var907, $z2=var1480, $r78=var2321, $r20=var2442, $r21=var1810, $r22=var115, $r23=var1412, $r24=var2157, $r25=var2934, $r26=var3901, 0=var123, $r27=var2592, $r28=var777, $r29=var116, $r30=var1466, $r31=var655, $r32=var3682, 1=var3592, $r33=var2947, $r34=var3882, $r35=var745, $r36=var3180, $r37=var2285, 2=var40, $r38=var960, 3=var3503, $r73=var1582, $r39=var3614, $z3=var2992, $r79=var3085, r80=var3294, $r44=var1790, $z4=var1826, $r81=var1384, r82=var3918, $r49=var1559, $z5=var3868, $r83=var2759, java.lang.System=var1169, $r54=var2165, $r55=var1539, $r56=var35, $r57=var500, $r58=var770, $r59=var23, $r60=var2060, $r61=var948, 4=var63, $r62=var532, $r63=var2565, $r64=var2590, $r65=var452, $r66=var2314, $r67=var3607, 5=var302, $r68=var2561, $r69=var1583, $r70=var2017, $r71=var3033, $r72=var1947, 6=var3675}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 6,"<java.lang.StringBuilder: void <init>()>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 18,"<java.lang.StringBuilder: java.lang.String toString()>": 6}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate;	$r0 = new java.util.Locale;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry>;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant>;	specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2);	$r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r6 = new java.lang.StringBuilder;	$r74 = "";	goto [?= r75 = $r74];	r75 = $r74;	$r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $r11 = new java.lang.StringBuilder;	$r76 = "";	goto [?= r77 = $r76];	r77 = $r76;	$r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>();	$z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r16 = new java.lang.StringBuilder;	$r78 = "";	goto [?= $r20 = new java.lang.StringBuilder];	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0);	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0);	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0);	$r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0);	$r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>();	$z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>();	if $z3 == 0 goto $r40 = new java.lang.StringBuilder;	$r79 = "";	goto [?= r80 = $r79];	r80 = $r79;	$r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>();	$z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>();	if $z4 == 0 goto $r45 = new java.lang.StringBuilder;	$r81 = "";	goto [?= r82 = $r81];	r82 = $r81;	$r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>();	$z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>();	if $z5 == 0 goto $r50 = new java.lang.StringBuilder;	$r83 = "";	goto [?= $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding")];	$r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding");	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54;	$r55 = new java.lang.StringBuilder;	specialinvoke $r55.<java.lang.StringBuilder: void <init>()>();	$r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83);	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0);	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0);	$r68 = new java.lang.StringBuilder;	specialinvoke $r68.<java.lang.StringBuilder: void <init>()>();	$r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69);	$r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1);	return
;block_num 13