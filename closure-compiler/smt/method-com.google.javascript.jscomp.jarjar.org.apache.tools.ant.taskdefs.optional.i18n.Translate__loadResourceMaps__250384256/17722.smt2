(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var159 0)
(declare-sort var1040 0)
(declare-sort var2775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1040-init () var1040)
(declare-fun bundleLanguage/965132528 (var159) String)
(declare-fun bundleCountry/965132528 (var159) String)
(declare-fun bundleVariant/965132528 (var159) String)
(declare-fun <init>/492115872 (var1040 String String String) void)
(declare-fun getLanguage/1066037614 (var1040) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun getCountry/-945186178 (var1040) String)
(declare-fun getVariant/1821738799 (var1040) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun bundle/965132528 (var159) String)
(declare-fun processBundle/-1320493310 (var159 String Int Bool) void)
(declare-fun var1040_getDefault/-641693464 () var1040)
(declare-fun var2775_getProperty/258823597 (String) String)
(declare-fun bundleEncoding/965132528 (var159) String)
(declare-const null-var159 var159)
(declare-const var3175 var159) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate 
(assert (not (= var3175 null-var159)))
(define-const var672 var1040 var1040-init) ; Statement: $r0 = new java.util.Locale 
(define-const var826 String (bundleLanguage/965132528 var3175)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage> 
(define-const var999 String (bundleCountry/965132528 var3175)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry> 
(define-const var1826 String (bundleVariant/965132528 var3175)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant> 
(assert true)
;(assert (<init>/492115872 var672 var826 var999 var1826)) ; Statement: specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2) 

(declare-const var672!1 var1040)
(declare-const var826!1 String)
(declare-const var999!1 String)
(declare-const var1826!1 String)
(assert true)
(define-const var3834 String (getLanguage/1066037614 var672!1)) ; Statement: $r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var116 Bool (isEmpty/-1285796103 var3834)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.StringBuilder 
(assert (not (= (ite var116 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1364 String "") ; Statement: $r74 = "" 
 ; Statement: goto [?= r75 = $r74] 
(assert true) ; Non Conditional
(define-const var557 String var1364) ; Statement: r75 = $r74 
(assert true)
(define-const var3771 String (getCountry/-945186178 var672!1)) ; Statement: $r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var2602 Bool (isEmpty/-1285796103 var3771)) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r11 = new java.lang.StringBuilder 
(assert (not (= (ite var2602 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2099 String "") ; Statement: $r76 = "" 
 ; Statement: goto [?= r77 = $r76] 
(assert true) ; Non Conditional
(define-const var3895 String var2099) ; Statement: r77 = $r76 
(assert true)
(define-const var1721 String (getVariant/1821738799 var672!1)) ; Statement: $r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var3501 Bool (isEmpty/-1285796103 var1721)) ; Statement: $z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (= (ite var3501 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1880 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1880)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1880!1 String)
(assert (= var1880!1 ""))
(assert true)
(define-const var3574 String (append/672562846 var1880!1 "_")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1880!2 String)
(assert (= var1880!2 (str.++ var1880!1 "_")))
(assert true)
(define-const var62 String (getVariant/1821738799 var672!1)) ; Statement: $r17 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var802 String (append/672562846 var3574 var62)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3574!1 String)
(assert (= var3574!1 (str.++ var3574 var62)))
(assert true)
(define-const var1050 String (toString/-2075883882 var802)) ; Statement: $r78 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2449 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2449)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2449!1 String)
(assert (= var2449!1 ""))
(define-const var2410 String (bundle/965132528 var3175)) ; Statement: $r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var431 String (append/672562846 var2449!1 var2410)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2449!2 String)
(assert (= var2449!2 (str.++ var2449!1 var2410)))
(assert true)
(define-const var3931 String (append/672562846 var431 var557)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var431!1 String)
(assert (= var431!1 (str.++ var431 var557)))
(assert true)
(define-const var3836 String (append/672562846 var3931 var3895)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var3931!1 String)
(assert (= var3931!1 (str.++ var3931 var3895)))
(assert true)
(define-const var170 String (append/672562846 var3836 var1050)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78) 
(declare-const var3836!1 String)
(assert (= var3836!1 (str.++ var3836 var1050)))
(assert true)
(define-const var586 String (toString/-2075883882 var170)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3175 var586 0 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0) 

(declare-const var3175!1 var159)
(declare-const var586!1 String)
(declare-const var474 Int)
(declare-const var474!1 Int)
(define-const var128 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var128)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var128!1 String)
(assert (= var128!1 ""))
(define-const var2409 String (bundle/965132528 var3175!1)) ; Statement: $r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var3951 String (append/672562846 var128!1 var2409)) ; Statement: $r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var128!2 String)
(assert (= var128!2 (str.++ var128!1 var2409)))
(assert true)
(define-const var2354 String (append/672562846 var3951 var557)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var3951!1 String)
(assert (= var3951!1 (str.++ var3951 var557)))
(assert true)
(define-const var2945 String (append/672562846 var2354 var3895)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77) 
(declare-const var2354!1 String)
(assert (= var2354!1 (str.++ var2354 var3895)))
(assert true)
(define-const var2307 String (toString/-2075883882 var2945)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3175!1 var2307 1 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0) 

(declare-const var3175!2 var159)
(declare-const var2307!1 String)
(declare-const var3689 Int)
(declare-const var474!2 Int)
(define-const var911 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var911)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var911!1 String)
(assert (= var911!1 ""))
(define-const var3553 String (bundle/965132528 var3175!2)) ; Statement: $r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var2346 String (append/672562846 var911!1 var3553)) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var911!2 String)
(assert (= var911!2 (str.++ var911!1 var3553)))
(assert true)
(define-const var2985 String (append/672562846 var2346 var557)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75) 
(declare-const var2346!1 String)
(assert (= var2346!1 (str.++ var2346 var557)))
(assert true)
(define-const var1377 String (toString/-2075883882 var2985)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3175!2 var1377 2 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0) 

(declare-const var3175!3 var159)
(declare-const var1377!1 String)
(declare-const var937 Int)
(declare-const var474!3 Int)
(define-const var3955 String (bundle/965132528 var3175!3)) ; Statement: $r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
;(assert (processBundle/-1320493310 var3175!3 var3955 3 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0) 

(declare-const var3175!4 var159)
(declare-const var3955!1 String)
(declare-const var2724 Int)
(declare-const var474!4 Int)
(define-const var1725 var1040 var1040_getDefault/-641693464) ; Statement: $r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert true)
(define-const var3399 String (getLanguage/1066037614 var1725)) ; Statement: $r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var1801 Bool (isEmpty/-1285796103 var3399)) ; Statement: $z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z3 == 0 goto $r40 = new java.lang.StringBuilder 
(assert (= (ite var1801 1 0) 0)) ; Cond: $z3 == 0 
(define-const var1779 String String-init) ; Statement: $r40 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1779)) ; Statement: specialinvoke $r40.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1779!1 String)
(assert (= var1779!1 ""))
(assert true)
(define-const var2275 String (append/672562846 var1779!1 "_")) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1779!2 String)
(assert (= var1779!2 (str.++ var1779!1 "_")))
(assert true)
(define-const var2978 String (getLanguage/1066037614 var1725)) ; Statement: $r41 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>() 
(assert true)
(define-const var2348 String (append/672562846 var2275 var2978)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2275!1 String)
(assert (= var2275!1 (str.++ var2275 var2978)))
(assert true)
(define-const var1565 String (toString/-2075883882 var2348)) ; Statement: $r79 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1529 String var1565) ; Statement: r80 = $r79 
(assert true)
(define-const var1994 String (getCountry/-945186178 var1725)) ; Statement: $r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>() 
(assert true)
(define-const var928 Bool (isEmpty/-1285796103 var1994)) ; Statement: $z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z4 == 0 goto $r45 = new java.lang.StringBuilder 
(assert (not (= (ite var928 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var2412 String "") ; Statement: $r81 = "" 
 ; Statement: goto [?= r82 = $r81] 
(assert true) ; Non Conditional
(define-const var2490 String var2412) ; Statement: r82 = $r81 
(assert true)
(define-const var3817 String (getVariant/1821738799 var1725)) ; Statement: $r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>() 
(assert true)
(define-const var2137 Bool (isEmpty/-1285796103 var3817)) ; Statement: $z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z5 == 0 goto $r50 = new java.lang.StringBuilder 
(assert (not (= (ite var2137 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var931 String "") ; Statement: $r83 = "" 
 ; Statement: goto [?= $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding")] 
(assert true) ; Non Conditional
(define-const var501 String (var2775_getProperty/258823597 "file.encoding")) ; Statement: $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding") 
(declare-const var3175!5 var159)
(assert (not (= var3175!5 null-var159)))
(assert (= (bundleEncoding/965132528 var3175!5) var501)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54 
(define-const var2638 String String-init) ; Statement: $r55 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2638)) ; Statement: specialinvoke $r55.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2638!1 String)
(assert (= var2638!1 ""))
(define-const var1570 String (bundle/965132528 var3175!5)) ; Statement: $r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var787 String (append/672562846 var2638!1 var1570)) ; Statement: $r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var2638!2 String)
(assert (= var2638!2 (str.++ var2638!1 var1570)))
(assert true)
(define-const var273 String (append/672562846 var787 var1529)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var787!1 String)
(assert (= var787!1 (str.++ var787 var1529)))
(assert true)
(define-const var505 String (append/672562846 var273 var2490)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var273!1 String)
(assert (= var273!1 (str.++ var273 var2490)))
(assert true)
(define-const var1457 String (append/672562846 var505 var931)) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83) 
(declare-const var505!1 String)
(assert (= var505!1 (str.++ var505 var931)))
(assert true)
(define-const var179 String (toString/-2075883882 var1457)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3175!5 var179 4 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0) 

(declare-const var3175!6 var159)
(declare-const var179!1 String)
(declare-const var1573 Int)
(declare-const var474!5 Int)
(define-const var529 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var529)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var529!1 String)
(assert (= var529!1 ""))
(define-const var2773 String (bundle/965132528 var3175!6)) ; Statement: $r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var387 String (append/672562846 var529!1 var2773)) ; Statement: $r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var529!2 String)
(assert (= var529!2 (str.++ var529!1 var2773)))
(assert true)
(define-const var348 String (append/672562846 var387 var1529)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var387!1 String)
(assert (= var387!1 (str.++ var387 var1529)))
(assert true)
(define-const var218 String (append/672562846 var348 var2490)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82) 
(declare-const var348!1 String)
(assert (= var348!1 (str.++ var348 var2490)))
(assert true)
(define-const var2491 String (toString/-2075883882 var218)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3175!6 var2491 5 (ite (= 1 0) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0) 

(declare-const var3175!7 var159)
(declare-const var2491!1 String)
(declare-const var204 Int)
(declare-const var474!6 Int)
(define-const var2943 String String-init) ; Statement: $r68 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2943)) ; Statement: specialinvoke $r68.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2943!1 String)
(assert (= var2943!1 ""))
(define-const var3111 String (bundle/965132528 var3175!7)) ; Statement: $r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle> 
(assert true)
(define-const var991 String (append/672562846 var2943!1 var3111)) ; Statement: $r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69) 
(declare-const var2943!2 String)
(assert (= var2943!2 (str.++ var2943!1 var3111)))
(assert true)
(define-const var2869 String (append/672562846 var991 var1529)) ; Statement: $r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80) 
(declare-const var991!1 String)
(assert (= var991!1 (str.++ var991 var1529)))
(assert true)
(define-const var664 String (toString/-2075883882 var2869)) ; Statement: $r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (processBundle/-1320493310 var3175!7 var664 6 (ite (= 1 1) true false))) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1) 

(declare-const var3175!8 var159)
(declare-const var664!1 String)
(declare-const var2949 Int)
(declare-const var3689!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1040-init=([], java.util.Locale), bundleLanguage/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleCountry/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), bundleVariant/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), <init>/492115872=([java.util.Locale, java.lang.String, java.lang.String, java.lang.String], void), getLanguage/1066037614=([java.util.Locale], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), getCountry/-945186178=([java.util.Locale], java.lang.String), getVariant/1821738799=([java.util.Locale], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), bundle/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String), processBundle/-1320493310=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, java.lang.String, int, boolean], void), var1040_getDefault/-641693464=([], java.util.Locale), var2775_getProperty/258823597=([java.lang.String], java.lang.String), bundleEncoding/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], java.lang.String)}
; {var159=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, var3175=r1, var1040=java.util.Locale, var672=$r0, var826=$r4, var999=$r3, var1826=$r2, var3834=$r5, var116=$z0, var1364=$r74, var557=r75, var3771=$r10, var2602=$z1, var2099=$r76, var3895=r77, var1721=$r15, var3501=$z2, var1880=$r16, var3574=$r18, var62=$r17, var802=$r19, var1050=$r78, var2449=$r20, var2410=$r21, var431=$r22, var3931=$r23, var3836=$r24, var170=$r25, var586=$r26, var474=0, var128=$r27, var2409=$r28, var3951=$r29, var2354=$r30, var2945=$r31, var2307=$r32, var3689=1, var911=$r33, var3553=$r34, var2346=$r35, var2985=$r36, var1377=$r37, var937=2, var3955=$r38, var2724=3, var1725=$r73, var3399=$r39, var1801=$z3, var1779=$r40, var2275=$r42, var2978=$r41, var2348=$r43, var1565=$r79, var1529=r80, var1994=$r44, var928=$z4, var2412=$r81, var2490=r82, var3817=$r49, var2137=$z5, var931=$r83, var2775=java.lang.System, var501=$r54, var2638=$r55, var1570=$r56, var787=$r57, var273=$r58, var505=$r59, var1457=$r60, var179=$r61, var1573=4, var529=$r62, var2773=$r63, var387=$r64, var348=$r65, var218=$r66, var2491=$r67, var204=5, var2943=$r68, var3111=$r69, var991=$r70, var2869=$r71, var664=$r72, var2949=6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate=var159, r1=var3175, java.util.Locale=var1040, $r0=var672, $r4=var826, $r3=var999, $r2=var1826, $r5=var3834, $z0=var116, $r74=var1364, r75=var557, $r10=var3771, $z1=var2602, $r76=var2099, r77=var3895, $r15=var1721, $z2=var3501, $r16=var1880, $r18=var3574, $r17=var62, $r19=var802, $r78=var1050, $r20=var2449, $r21=var2410, $r22=var431, $r23=var3931, $r24=var3836, $r25=var170, $r26=var586, 0=var474, $r27=var128, $r28=var2409, $r29=var3951, $r30=var2354, $r31=var2945, $r32=var2307, 1=var3689, $r33=var911, $r34=var3553, $r35=var2346, $r36=var2985, $r37=var1377, 2=var937, $r38=var3955, 3=var2724, $r73=var1725, $r39=var3399, $z3=var1801, $r40=var1779, $r42=var2275, $r41=var2978, $r43=var2348, $r79=var1565, r80=var1529, $r44=var1994, $z4=var928, $r81=var2412, r82=var2490, $r49=var3817, $z5=var2137, $r83=var931, java.lang.System=var2775, $r54=var501, $r55=var2638, $r56=var1570, $r57=var787, $r58=var273, $r59=var505, $r60=var1457, $r61=var179, 4=var1573, $r62=var529, $r63=var2773, $r64=var387, $r65=var348, $r66=var218, $r67=var2491, 5=var204, $r68=var2943, $r69=var3111, $r70=var991, $r71=var2869, $r72=var664, 6=var2949}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 6,"<java.lang.StringBuilder: void <init>()>": 8,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 22,"<java.lang.StringBuilder: java.lang.String toString()>": 8}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate;	$r0 = new java.util.Locale;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleLanguage>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleCountry>;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleVariant>;	specialinvoke $r0.<java.util.Locale: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r4, $r3, $r2);	$r5 = virtualinvoke $r0.<java.util.Locale: java.lang.String getLanguage()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r6 = new java.lang.StringBuilder;	$r74 = "";	goto [?= r75 = $r74];	r75 = $r74;	$r10 = virtualinvoke $r0.<java.util.Locale: java.lang.String getCountry()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $r11 = new java.lang.StringBuilder;	$r76 = "";	goto [?= r77 = $r76];	r77 = $r76;	$r15 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>();	$z2 = virtualinvoke $r15.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r17 = virtualinvoke $r0.<java.util.Locale: java.lang.String getVariant()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r78 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r78);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r26, 0, 0);	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r28 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r77);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r32, 1, 0);	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r34 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r75);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r37, 2, 0);	$r38 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r38, 3, 0);	$r73 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r39 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>();	$z3 = virtualinvoke $r39.<java.lang.String: boolean isEmpty()>();	if $z3 == 0 goto $r40 = new java.lang.StringBuilder;	$r40 = new java.lang.StringBuilder;	specialinvoke $r40.<java.lang.StringBuilder: void <init>()>();	$r42 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r41 = virtualinvoke $r73.<java.util.Locale: java.lang.String getLanguage()>();	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r79 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>();	r80 = $r79;	$r44 = virtualinvoke $r73.<java.util.Locale: java.lang.String getCountry()>();	$z4 = virtualinvoke $r44.<java.lang.String: boolean isEmpty()>();	if $z4 == 0 goto $r45 = new java.lang.StringBuilder;	$r81 = "";	goto [?= r82 = $r81];	r82 = $r81;	$r49 = virtualinvoke $r73.<java.util.Locale: java.lang.String getVariant()>();	$z5 = virtualinvoke $r49.<java.lang.String: boolean isEmpty()>();	if $z5 == 0 goto $r50 = new java.lang.StringBuilder;	$r83 = "";	goto [?= $r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding")];	$r54 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.encoding");	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundleEncoding> = $r54;	$r55 = new java.lang.StringBuilder;	specialinvoke $r55.<java.lang.StringBuilder: void <init>()>();	$r56 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83);	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r61, 4, 0);	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r63 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r64 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r82);	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r67, 5, 0);	$r68 = new java.lang.StringBuilder;	specialinvoke $r68.<java.lang.StringBuilder: void <init>()>();	$r69 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: java.lang.String bundle>;	$r70 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69);	$r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r80);	$r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void processBundle(java.lang.String,int,boolean)>($r72, 6, 1);	return
;block_num 13