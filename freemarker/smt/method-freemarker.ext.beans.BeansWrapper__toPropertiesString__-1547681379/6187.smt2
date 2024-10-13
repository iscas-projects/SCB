(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1614 0)
(declare-sort var1180 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun simpleMapWrapper/-302782480 (var1614) Bool)
(declare-fun append/-388390247 (String Bool) String)
(declare-fun classIntrospector/-302782480 (var1614) var1180)
(declare-fun getExposureLevel/157126363 (var1180) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getExposeFields/1662658060 (var1180) Bool)
(declare-fun preferIndexedReadMethod/-302782480 (var1614) Bool)
(declare-fun getTreatDefaultMethodsAsBeanMembers/-1993061187 (var1180) Bool)
(declare-fun isShared/1354299244 (var1180) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1614 var1614)
(declare-const var3109 var1614) ; Statement: r1 := @this: freemarker.ext.beans.BeansWrapper 
(assert (not (= var3109 null-var1614)))
(define-const var3339 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3339)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3339!1 String)
(assert (= var3339!1 ""))
(assert true)
(define-const var2503 String (append/672562846 var3339!1 "simpleMapWrapper=")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("simpleMapWrapper=") 
(declare-const var3339!2 String)
(assert (= var3339!2 (str.++ var3339!1 "simpleMapWrapper=")))
(define-const var1421 Bool (simpleMapWrapper/-302782480 var3109)) ; Statement: $z0 = r1.<freemarker.ext.beans.BeansWrapper: boolean simpleMapWrapper> 
(assert true)
(define-const var2426 String (append/-388390247 var2503 var1421)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0) 
(declare-const var2503!1 String)
(assert (str.prefixof var2503 var2503!1))
(assert true)
(define-const var3622 String (append/672562846 var2426 ", exposureLevel=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", exposureLevel=") 
(declare-const var2426!1 String)
(assert (= var2426!1 (str.++ var2426 ", exposureLevel=")))
(define-const var487 var1180 (classIntrospector/-302782480 var3109)) ; Statement: $r4 = r1.<freemarker.ext.beans.BeansWrapper: freemarker.ext.beans.ClassIntrospector classIntrospector> 
(assert true)
(define-const var90 Int (getExposureLevel/157126363 var487)) ; Statement: $i0 = virtualinvoke $r4.<freemarker.ext.beans.ClassIntrospector: int getExposureLevel()>() 
(assert true)
(define-const var2430 String (append/-1001720160 var3622 var90)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3622!1 String)
(assert (str.prefixof var3622 var3622!1))
(assert true)
(define-const var3129 String (append/672562846 var2430 ", exposeFields=")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", exposeFields=") 
(declare-const var2430!1 String)
(assert (= var2430!1 (str.++ var2430 ", exposeFields=")))
(define-const var83 var1180 (classIntrospector/-302782480 var3109)) ; Statement: $r7 = r1.<freemarker.ext.beans.BeansWrapper: freemarker.ext.beans.ClassIntrospector classIntrospector> 
(assert true)
(define-const var2777 Bool (getExposeFields/1662658060 var83)) ; Statement: $z1 = virtualinvoke $r7.<freemarker.ext.beans.ClassIntrospector: boolean getExposeFields()>() 
(assert true)
(define-const var1695 String (append/-388390247 var3129 var2777)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z1) 
(declare-const var3129!1 String)
(assert (str.prefixof var3129 var3129!1))
(assert true)
(define-const var936 String (append/672562846 var1695 ", preferIndexedReadMethod=")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", preferIndexedReadMethod=") 
(declare-const var1695!1 String)
(assert (= var1695!1 (str.++ var1695 ", preferIndexedReadMethod=")))
(define-const var726 Bool (preferIndexedReadMethod/-302782480 var3109)) ; Statement: $z2 = r1.<freemarker.ext.beans.BeansWrapper: boolean preferIndexedReadMethod> 
(assert true)
(define-const var416 String (append/-388390247 var936 var726)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z2) 
(declare-const var936!1 String)
(assert (str.prefixof var936 var936!1))
(assert true)
(define-const var1315 String (append/672562846 var416 ", treatDefaultMethodsAsBeanMembers=")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", treatDefaultMethodsAsBeanMembers=") 
(declare-const var416!1 String)
(assert (= var416!1 (str.++ var416 ", treatDefaultMethodsAsBeanMembers=")))
(define-const var2589 var1180 (classIntrospector/-302782480 var3109)) ; Statement: $r12 = r1.<freemarker.ext.beans.BeansWrapper: freemarker.ext.beans.ClassIntrospector classIntrospector> 
(assert true)
(define-const var337 Bool (getTreatDefaultMethodsAsBeanMembers/-1993061187 var2589)) ; Statement: $z3 = virtualinvoke $r12.<freemarker.ext.beans.ClassIntrospector: boolean getTreatDefaultMethodsAsBeanMembers()>() 
(assert true)
(define-const var2821 String (append/-388390247 var1315 var337)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z3) 
(declare-const var1315!1 String)
(assert (str.prefixof var1315 var1315!1))
(assert true)
(define-const var39 String (append/672562846 var2821 ", sharedClassIntrospCache=")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", sharedClassIntrospCache=") 
(declare-const var2821!1 String)
(assert (= var2821!1 (str.++ var2821 ", sharedClassIntrospCache=")))
(define-const var2517 var1180 (classIntrospector/-302782480 var3109)) ; Statement: $r15 = r1.<freemarker.ext.beans.BeansWrapper: freemarker.ext.beans.ClassIntrospector classIntrospector> 
(assert true)
(define-const var73 Bool (isShared/1354299244 var2517)) ; Statement: $z4 = virtualinvoke $r15.<freemarker.ext.beans.ClassIntrospector: boolean isShared()>() 
 ; Statement: if $z4 == 0 goto $r23 = "none" 
(assert (= (ite var73 1 0) 0)) ; Cond: $z4 == 0 
(define-const var680 String "none") ; Statement: $r23 = "none" 
(assert true) ; Non Conditional
(assert true)
(define-const var137 String (append/672562846 var39 var680)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var39!1 String)
(assert (= var39!1 (str.++ var39 var680)))
(assert true)
(define-const var1286 String (toString/-2075883882 var137)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), simpleMapWrapper/-302782480=([freemarker.ext.beans.BeansWrapper], boolean), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), classIntrospector/-302782480=([freemarker.ext.beans.BeansWrapper], freemarker.ext.beans.ClassIntrospector), getExposureLevel/157126363=([freemarker.ext.beans.ClassIntrospector], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getExposeFields/1662658060=([freemarker.ext.beans.ClassIntrospector], boolean), preferIndexedReadMethod/-302782480=([freemarker.ext.beans.BeansWrapper], boolean), getTreatDefaultMethodsAsBeanMembers/-1993061187=([freemarker.ext.beans.ClassIntrospector], boolean), isShared/1354299244=([freemarker.ext.beans.ClassIntrospector], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1614=freemarker.ext.beans.BeansWrapper, var3109=r1, var3339=$r0, var2503=$r2, var1421=$z0, var2426=$r3, var3622=$r5, var1180=freemarker.ext.beans.ClassIntrospector, var487=$r4, var90=$i0, var2430=$r6, var3129=$r8, var83=$r7, var2777=$z1, var1695=$r9, var936=$r10, var726=$z2, var416=$r11, var1315=$r13, var2589=$r12, var337=$z3, var2821=$r14, var39=$r16, var2517=$r15, var73=$z4, var680=$r23, var137=$r17, var1286=$r18}
; {freemarker.ext.beans.BeansWrapper=var1614, r1=var3109, $r0=var3339, $r2=var2503, $z0=var1421, $r3=var2426, $r5=var3622, freemarker.ext.beans.ClassIntrospector=var1180, $r4=var487, $i0=var90, $r6=var2430, $r8=var3129, $r7=var83, $z1=var2777, $r9=var1695, $r10=var936, $z2=var726, $r11=var416, $r13=var1315, $r12=var2589, $z3=var337, $r14=var2821, $r16=var39, $r15=var2517, $z4=var73, $r23=var680, $r17=var137, $r18=var1286}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.beans.BeansWrapper;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("simpleMapWrapper=");	$z0 = r1.<freemarker.ext.beans.BeansWrapper: boolean simpleMapWrapper>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", exposureLevel=");	$r4 = r1.<freemarker.ext.beans.BeansWrapper: freemarker.ext.beans.ClassIntrospector classIntrospector>;	$i0 = virtualinvoke $r4.<freemarker.ext.beans.ClassIntrospector: int getExposureLevel()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", exposeFields=");	$r7 = r1.<freemarker.ext.beans.BeansWrapper: freemarker.ext.beans.ClassIntrospector classIntrospector>;	$z1 = virtualinvoke $r7.<freemarker.ext.beans.ClassIntrospector: boolean getExposeFields()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", preferIndexedReadMethod=");	$z2 = r1.<freemarker.ext.beans.BeansWrapper: boolean preferIndexedReadMethod>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z2);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", treatDefaultMethodsAsBeanMembers=");	$r12 = r1.<freemarker.ext.beans.BeansWrapper: freemarker.ext.beans.ClassIntrospector classIntrospector>;	$z3 = virtualinvoke $r12.<freemarker.ext.beans.ClassIntrospector: boolean getTreatDefaultMethodsAsBeanMembers()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z3);	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", sharedClassIntrospCache=");	$r15 = r1.<freemarker.ext.beans.BeansWrapper: freemarker.ext.beans.ClassIntrospector classIntrospector>;	$z4 = virtualinvoke $r15.<freemarker.ext.beans.ClassIntrospector: boolean isShared()>();	if $z4 == 0 goto $r23 = "none";	$r23 = "none";	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 3