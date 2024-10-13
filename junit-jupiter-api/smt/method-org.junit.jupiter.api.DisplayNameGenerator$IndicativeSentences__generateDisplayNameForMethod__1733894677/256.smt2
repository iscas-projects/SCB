(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3657 0)
(declare-sort var1183 0)
(declare-sort var1654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getSentenceBeginning/-1841871847 (var3657 ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3657_getFragmentSeparator/-640153580 (ClassObject) String)
(declare-fun var3657_getGeneratorFor/-848122519 (ClassObject) var1654)
(declare-fun var1654_generateDisplayNameForMethod/-277969483 (var1654 ClassObject var1183) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3657 var3657)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1183 var1183)
(declare-const var3759 var3657) ; Statement: r1 := @this: org.junit.jupiter.api.DisplayNameGenerator$IndicativeSentences 
(assert (not (= var3759 null-var3657)))
(declare-const var3490 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var3490 null-ClassObject)))
(declare-const var1910 var1183) ; Statement: r6 := @parameter1: java.lang.reflect.Method 
(assert (not (= var1910 null-var1183)))
(define-const var1044 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1044)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1044!1 String)
(assert (= var1044!1 ""))
(assert true)
(define-const var1800 String (getSentenceBeginning/-1841871847 var3759 var3490)) ; Statement: $r3 = specialinvoke r1.<org.junit.jupiter.api.DisplayNameGenerator$IndicativeSentences: java.lang.String getSentenceBeginning(java.lang.Class)>(r2) 
(assert true)
(define-const var3813 String (append/672562846 var1044!1 var1800)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1044!2 String)
(assert (= var1044!2 (str.++ var1044!1 var1800)))
(define-const var970 String (var3657_getFragmentSeparator/-640153580 var3490)) ; Statement: $r4 = staticinvoke <org.junit.jupiter.api.DisplayNameGenerator$IndicativeSentences: java.lang.String getFragmentSeparator(java.lang.Class)>(r2) 
(assert true)
(define-const var3838 String (append/672562846 var3813 var970)) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3813!1 String)
(assert (= var3813!1 (str.++ var3813 var970)))
(define-const var2323 var1654 (var3657_getGeneratorFor/-848122519 var3490)) ; Statement: $r7 = staticinvoke <org.junit.jupiter.api.DisplayNameGenerator$IndicativeSentences: org.junit.jupiter.api.DisplayNameGenerator getGeneratorFor(java.lang.Class)>(r2) 
(define-const var2085 String (var1654_generateDisplayNameForMethod/-277969483 var2323 var3490 var1910)) ; Statement: $r8 = interfaceinvoke $r7.<org.junit.jupiter.api.DisplayNameGenerator: java.lang.String generateDisplayNameForMethod(java.lang.Class,java.lang.reflect.Method)>(r2, r6) 
(assert true)
(define-const var2946 String (append/672562846 var3838 var2085)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3838!1 String)
(assert (= var3838!1 (str.++ var3838 var2085)))
(assert true)
(define-const var3968 String (toString/-2075883882 var2946)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getSentenceBeginning/-1841871847=([org.junit.jupiter.api.DisplayNameGenerator$IndicativeSentences, java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3657_getFragmentSeparator/-640153580=([java.lang.Class], java.lang.String), var3657_getGeneratorFor/-848122519=([java.lang.Class], org.junit.jupiter.api.DisplayNameGenerator), var1654_generateDisplayNameForMethod/-277969483=([org.junit.jupiter.api.DisplayNameGenerator, java.lang.Class, java.lang.reflect.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3657=org.junit.jupiter.api.DisplayNameGenerator$IndicativeSentences, var3759=r1, var3490=r2, var1183=java.lang.reflect.Method, var1910=r6, var1044=$r0, var1800=$r3, var3813=$r5, var970=$r4, var3838=$r9, var1654=org.junit.jupiter.api.DisplayNameGenerator, var2323=$r7, var2085=$r8, var2946=$r10, var3968=$r11}
; {org.junit.jupiter.api.DisplayNameGenerator$IndicativeSentences=var3657, r1=var3759, r2=var3490, java.lang.reflect.Method=var1183, r6=var1910, $r0=var1044, $r3=var1800, $r5=var3813, $r4=var970, $r9=var3838, org.junit.jupiter.api.DisplayNameGenerator=var1654, $r7=var2323, $r8=var2085, $r10=var2946, $r11=var3968}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.junit.jupiter.api.DisplayNameGenerator$IndicativeSentences;	r2 := @parameter0: java.lang.Class;	r6 := @parameter1: java.lang.reflect.Method;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = specialinvoke r1.<org.junit.jupiter.api.DisplayNameGenerator$IndicativeSentences: java.lang.String getSentenceBeginning(java.lang.Class)>(r2);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = staticinvoke <org.junit.jupiter.api.DisplayNameGenerator$IndicativeSentences: java.lang.String getFragmentSeparator(java.lang.Class)>(r2);	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = staticinvoke <org.junit.jupiter.api.DisplayNameGenerator$IndicativeSentences: org.junit.jupiter.api.DisplayNameGenerator getGeneratorFor(java.lang.Class)>(r2);	$r8 = interfaceinvoke $r7.<org.junit.jupiter.api.DisplayNameGenerator: java.lang.String generateDisplayNameForMethod(java.lang.Class,java.lang.reflect.Method)>(r2, r6);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1