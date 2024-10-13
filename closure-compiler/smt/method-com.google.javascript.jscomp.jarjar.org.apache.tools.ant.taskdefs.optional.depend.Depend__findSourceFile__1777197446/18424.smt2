(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2900 0)
(declare-sort var3334 0)
(declare-sort var2152 0)
(declare-sort var2366 0)
(declare-sort var3918 0)
(declare-sort var1308 0)
(declare-sort var2265 0)
(declare-sort var840 0)
(declare-sort var2409 0)
(declare-sort var3008 0)
(declare-sort var1858 0)
(declare-sort var1244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun srcPath/1856771708 (var2900) var2366)
(declare-fun directories/1510706920 (var2900 var1308) var3918)
(declare-fun cast-from-var2366-to-var1308 (var2366) var1308)
(declare-fun var840_bootstrap$/-644952169 (String) var2265)
(declare-fun var3918_map/130902797 (var3918 var2265) var3918)
(declare-fun var2409_isEqual/345279618 (var3008) var2409)
(declare-fun cast-from-var2152-to-var3008 (var2152) var3008)
(declare-fun var1858_bootstrap$/-1254694822 () var2409)
(declare-fun var2409_or/461884735 (var2409 var2409) var2409)
(declare-fun var3918_filter/320182972 (var3918 var2409) var3918)
(declare-fun var3918_findFirst/-512239506 (var3918) var1244)
(declare-fun orElse/-757175127 (var1244 var3008) var3008)
(declare-fun cast-from-var3008-to-var2152 (var3008) var2152)
(declare-const null-var2900 var2900)
(declare-const null-String String)
(declare-const null-var2152 var2152)
(declare-const null-NullType var3334)
(declare-const null-var3008 var3008)
(declare-const var592 var2900) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend 
(assert (not (= var592 null-var2900)))
(declare-const var3276 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3276 null-String)))
(declare-const var1040 var2152) ; Statement: r8 := @parameter1: java.io.File 
(assert (not (= var1040 null-var2152)))
(assert true)
(define-const var793 Int (indexOf/-1037706067 var3276 36)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(36) 
(define-const var2562 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 == $i2 goto $r23 = new java.lang.StringBuilder 
(assert (= var793 var2562)) ; Cond: i0 == $i2 
(define-const var2105 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2105)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2105!1 String)
(assert (= var2105!1 ""))
(assert true)
(define-const var3787 String (append/672562846 var2105!1 var3276)) ; Statement: $r2 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2105!2 String)
(assert (= var2105!2 (str.++ var2105!1 var3276)))
(assert true)
(define-const var2650 String (append/672562846 var3787 ".java")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java") 
(declare-const var3787!1 String)
(assert (= var3787!1 (str.++ var3787 ".java")))
(assert true)
(define-const var2066 String (toString/-2075883882 var2650)) ; Statement: r21 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2723 var2366 (srcPath/1856771708 var592)) ; Statement: $r5 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path srcPath> 
(assert true)
(define-const var353 var3918 (directories/1510706920 var592 (cast-from-var2366-to-var1308 var2723))) ; Statement: $r7 = specialinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: java.util.stream.Stream directories(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection)>($r5) 
(define-const var454 var2265 (var840_bootstrap$/-644952169 var2066)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_findSourceFile_9__388: java.util.function.Function bootstrap$(java.lang.String)>(r21) 
(define-const var1588 var3918 (var3918_map/130902797 var353 var454)) ; Statement: $r12 = interfaceinvoke $r7.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r6) 
(define-const var2750 var2409 (var2409_isEqual/345279618 (cast-from-var2152-to-var3008 var1040))) ; Statement: $r10 = staticinvoke <java.util.function.Predicate: java.util.function.Predicate isEqual(java.lang.Object)>(r8) 
(define-const var2036 var2409 var1858_bootstrap$/-1254694822) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$exists__389: java.util.function.Predicate bootstrap$()>() 
(define-const var1574 var2409 (var2409_or/461884735 var2750 var2036)) ; Statement: $r11 = interfaceinvoke $r10.<java.util.function.Predicate: java.util.function.Predicate or(java.util.function.Predicate)>($r9) 
(define-const var1713 var3918 (var3918_filter/320182972 var1588 var1574)) ; Statement: $r13 = interfaceinvoke $r12.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r11) 
(define-const var848 var1244 (var3918_findFirst/-512239506 var1713)) ; Statement: $r14 = interfaceinvoke $r13.<java.util.stream.Stream: java.util.Optional findFirst()>() 
(assert true)
(define-const var2702 var3008 (orElse/-757175127 var848 null-var3008)) ; Statement: $r15 = virtualinvoke $r14.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null) 
(define-const var2484 var2152 (cast-from-var3008-to-var2152 var2702)) ; Statement: $r16 = (java.io.File) $r15 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), srcPath/1856771708=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), directories/1510706920=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection], java.util.stream.Stream), cast-from-var2366-to-var1308=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection), var840_bootstrap$/-644952169=([java.lang.String], java.util.function.Function), var3918_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var2409_isEqual/345279618=([java.lang.Object], java.util.function.Predicate), cast-from-var2152-to-var3008=([java.io.File], java.lang.Object), var1858_bootstrap$/-1254694822=([], java.util.function.Predicate), var2409_or/461884735=([java.util.function.Predicate, java.util.function.Predicate], java.util.function.Predicate), var3918_filter/320182972=([java.util.stream.Stream, java.util.function.Predicate], java.util.stream.Stream), var3918_findFirst/-512239506=([java.util.stream.Stream], java.util.Optional), orElse/-757175127=([java.util.Optional, java.lang.Object], java.lang.Object), cast-from-var3008-to-var2152=([java.lang.Object], java.io.File)}
; {var2900=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend, var592=r4, var3276=r0, var3334=null_type, var2152=java.io.File, var1040=r8, var793=i0, var2562=$i2, var2105=$r23, var3787=$r2, var2650=$r3, var2066=r21, var2366=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var2723=$r5, var3918=java.util.stream.Stream, var1308=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection, var353=$r7, var2265=java.util.function.Function, var840=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_findSourceFile_9__388, var454=$r6, var1588=$r12, var2409=java.util.function.Predicate, var3008=java.lang.Object, var2750=$r10, var1858=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$exists__389, var2036=$r9, var1574=$r11, var1713=$r13, var1244=java.util.Optional, var848=$r14, var2702=$r15, var2484=$r16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend=var2900, r4=var592, r0=var3276, null_type=var3334, java.io.File=var2152, r8=var1040, i0=var793, $i2=var2562, $r23=var2105, $r2=var3787, $r3=var2650, r21=var2066, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var2366, $r5=var2723, java.util.stream.Stream=var3918, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection=var1308, $r7=var353, java.util.function.Function=var2265, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_findSourceFile_9__388=var840, $r6=var454, $r12=var1588, java.util.function.Predicate=var2409, java.lang.Object=var3008, $r10=var2750, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$exists__389=var1858, $r9=var2036, $r11=var1574, $r13=var1713, java.util.Optional=var1244, $r14=var848, $r15=var2702, $r16=var2484}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: java.io.File;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(36);	$i2 = (int) -1;	if i0 == $i2 goto $r23 = new java.lang.StringBuilder;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java");	r21 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path srcPath>;	$r7 = specialinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: java.util.stream.Stream directories(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection)>($r5);	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_findSourceFile_9__388: java.util.function.Function bootstrap$(java.lang.String)>(r21);	$r12 = interfaceinvoke $r7.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r6);	$r10 = staticinvoke <java.util.function.Predicate: java.util.function.Predicate isEqual(java.lang.Object)>(r8);	$r9 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$exists__389: java.util.function.Predicate bootstrap$()>();	$r11 = interfaceinvoke $r10.<java.util.function.Predicate: java.util.function.Predicate or(java.util.function.Predicate)>($r9);	$r13 = interfaceinvoke $r12.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r11);	$r14 = interfaceinvoke $r13.<java.util.stream.Stream: java.util.Optional findFirst()>();	$r15 = virtualinvoke $r14.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null);	$r16 = (java.io.File) $r15;	return $r16
;block_num 3