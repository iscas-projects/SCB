(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2617 0)
(declare-sort var2747 0)
(declare-sort var2153 0)
(declare-sort var3573 0)
(declare-sort var515 0)
(declare-sort var586 0)
(declare-sort var3030 0)
(declare-sort var738 0)
(declare-sort var858 0)
(declare-sort var3045 0)
(declare-sort var177 0)
(declare-sort var28 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun srcPath/1856771708 (var2617) var3573)
(declare-fun directories/1510706920 (var2617 var586) var515)
(declare-fun cast-from-var3573-to-var586 (var3573) var586)
(declare-fun var738_bootstrap$/-644952169 (String) var3030)
(declare-fun var515_map/130902797 (var515 var3030) var515)
(declare-fun var858_isEqual/345279618 (var3045) var858)
(declare-fun cast-from-var2153-to-var3045 (var2153) var3045)
(declare-fun var177_bootstrap$/-1254694822 () var858)
(declare-fun var858_or/461884735 (var858 var858) var858)
(declare-fun var515_filter/320182972 (var515 var858) var515)
(declare-fun var515_findFirst/-512239506 (var515) var28)
(declare-fun orElse/-757175127 (var28 var3045) var3045)
(declare-fun cast-from-var3045-to-var2153 (var3045) var2153)
(declare-const null-var2617 var2617)
(declare-const null-String String)
(declare-const null-var2153 var2153)
(declare-const null-NullType var2747)
(declare-const null-var3045 var3045)
(declare-const var649 var2617) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend 
(assert (not (= var649 null-var2617)))
(declare-const var3352 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3352 null-String)))
(declare-const var3793 var2153) ; Statement: r8 := @parameter1: java.io.File 
(assert (not (= var3793 null-var2153)))
(assert true)
(define-const var888 Int (indexOf/-1037706067 var3352 36)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(36) 
(define-const var1054 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 == $i2 goto $r23 = new java.lang.StringBuilder 
(assert (not (= var888 var1054))) ; Negate: Cond: i0 == $i2  
(define-const var666 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var666)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var666!1 String)
(assert (= var666!1 ""))
(assert (and true (and (>= 0 0) (>= (str.len var3352) var888) (>= var888 0))))
(define-const var1791 String (substring/-1240304868 var3352 0 var888)) ; Statement: $r18 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert true)
(define-const var676 String (append/672562846 var666!1 var1791)) ; Statement: $r19 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var666!2 String)
(assert (= var666!2 (str.++ var666!1 var1791)))
(assert true)
(define-const var668 String (append/672562846 var676 ".java")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java") 
(declare-const var676!1 String)
(assert (= var676!1 (str.++ var676 ".java")))
(assert true)
(define-const var476 String (toString/-2075883882 var668)) ; Statement: r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r5 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path srcPath>] 
(assert true) ; Non Conditional
(define-const var785 var3573 (srcPath/1856771708 var649)) ; Statement: $r5 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path srcPath> 
(assert true)
(define-const var2571 var515 (directories/1510706920 var649 (cast-from-var3573-to-var586 var785))) ; Statement: $r7 = specialinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: java.util.stream.Stream directories(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection)>($r5) 
(define-const var3848 var3030 (var738_bootstrap$/-644952169 var476)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_findSourceFile_9__388: java.util.function.Function bootstrap$(java.lang.String)>(r21) 
(define-const var207 var515 (var515_map/130902797 var2571 var3848)) ; Statement: $r12 = interfaceinvoke $r7.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r6) 
(define-const var3007 var858 (var858_isEqual/345279618 (cast-from-var2153-to-var3045 var3793))) ; Statement: $r10 = staticinvoke <java.util.function.Predicate: java.util.function.Predicate isEqual(java.lang.Object)>(r8) 
(define-const var1263 var858 var177_bootstrap$/-1254694822) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$exists__389: java.util.function.Predicate bootstrap$()>() 
(define-const var2807 var858 (var858_or/461884735 var3007 var1263)) ; Statement: $r11 = interfaceinvoke $r10.<java.util.function.Predicate: java.util.function.Predicate or(java.util.function.Predicate)>($r9) 
(define-const var2527 var515 (var515_filter/320182972 var207 var2807)) ; Statement: $r13 = interfaceinvoke $r12.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r11) 
(define-const var1448 var28 (var515_findFirst/-512239506 var2527)) ; Statement: $r14 = interfaceinvoke $r13.<java.util.stream.Stream: java.util.Optional findFirst()>() 
(assert true)
(define-const var486 var3045 (orElse/-757175127 var1448 null-var3045)) ; Statement: $r15 = virtualinvoke $r14.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null) 
(define-const var341 var2153 (cast-from-var3045-to-var2153 var486)) ; Statement: $r16 = (java.io.File) $r15 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), srcPath/1856771708=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), directories/1510706920=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection], java.util.stream.Stream), cast-from-var3573-to-var586=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection), var738_bootstrap$/-644952169=([java.lang.String], java.util.function.Function), var515_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var858_isEqual/345279618=([java.lang.Object], java.util.function.Predicate), cast-from-var2153-to-var3045=([java.io.File], java.lang.Object), var177_bootstrap$/-1254694822=([], java.util.function.Predicate), var858_or/461884735=([java.util.function.Predicate, java.util.function.Predicate], java.util.function.Predicate), var515_filter/320182972=([java.util.stream.Stream, java.util.function.Predicate], java.util.stream.Stream), var515_findFirst/-512239506=([java.util.stream.Stream], java.util.Optional), orElse/-757175127=([java.util.Optional, java.lang.Object], java.lang.Object), cast-from-var3045-to-var2153=([java.lang.Object], java.io.File)}
; {var2617=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend, var649=r4, var3352=r0, var2747=null_type, var2153=java.io.File, var3793=r8, var888=i0, var1054=$i2, var666=$r22, var1791=$r18, var676=$r19, var668=$r20, var476=r21, var3573=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var785=$r5, var515=java.util.stream.Stream, var586=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection, var2571=$r7, var3030=java.util.function.Function, var738=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_findSourceFile_9__388, var3848=$r6, var207=$r12, var858=java.util.function.Predicate, var3045=java.lang.Object, var3007=$r10, var177=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$exists__389, var1263=$r9, var2807=$r11, var2527=$r13, var28=java.util.Optional, var1448=$r14, var486=$r15, var341=$r16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend=var2617, r4=var649, r0=var3352, null_type=var2747, java.io.File=var2153, r8=var3793, i0=var888, $i2=var1054, $r22=var666, $r18=var1791, $r19=var676, $r20=var668, r21=var476, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var3573, $r5=var785, java.util.stream.Stream=var515, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection=var586, $r7=var2571, java.util.function.Function=var3030, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_findSourceFile_9__388=var738, $r6=var3848, $r12=var207, java.util.function.Predicate=var858, java.lang.Object=var3045, $r10=var3007, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$exists__389=var177, $r9=var1263, $r11=var2807, $r13=var2527, java.util.Optional=var28, $r14=var1448, $r15=var486, $r16=var341}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: java.io.File;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(36);	$i2 = (int) -1;	if i0 == $i2 goto $r23 = new java.lang.StringBuilder;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r19 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".java");	r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r5 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path srcPath>];	$r5 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path srcPath>;	$r7 = specialinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: java.util.stream.Stream directories(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection)>($r5);	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_findSourceFile_9__388: java.util.function.Function bootstrap$(java.lang.String)>(r21);	$r12 = interfaceinvoke $r7.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r6);	$r10 = staticinvoke <java.util.function.Predicate: java.util.function.Predicate isEqual(java.lang.Object)>(r8);	$r9 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$exists__389: java.util.function.Predicate bootstrap$()>();	$r11 = interfaceinvoke $r10.<java.util.function.Predicate: java.util.function.Predicate or(java.util.function.Predicate)>($r9);	$r13 = interfaceinvoke $r12.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r11);	$r14 = interfaceinvoke $r13.<java.util.stream.Stream: java.util.Optional findFirst()>();	$r15 = virtualinvoke $r14.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null);	$r16 = (java.io.File) $r15;	return $r16
;block_num 3