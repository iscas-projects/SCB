(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3603 0)
(declare-sort var622 0)
(declare-sort var145 0)
(declare-sort var1498 0)
(declare-sort var2572 0)
(declare-sort var1368 0)
(declare-sort var1306 0)
(declare-sort var2180 0)
(declare-sort var2087 0)
(declare-sort var2281 0)
(declare-sort var3182 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getHelpers/-285572144 (var3603) Iterator)
(declare-fun var1498_iteratorAsStream/1460293611 (Iterator) var145)
(declare-fun var1368_bootstrap$/730117796 (var622) var2572)
(declare-fun var145_filter/320182972 (var145 var2572) var145)
(declare-fun var145_findFirst/-512239506 (var145) var1306)
(declare-fun orElse/-757175127 (var1306 var2180) var2180)
(declare-fun cast-from-var2180-to-var2087 (var2180) var2087)
(declare-fun var2281-init () var2281)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2180) String)
(declare-fun cast-from-var622-to-var2180 (var622) var2180)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var2281 String) void)
(declare-const null-var3603 var3603)
(declare-const null-var622 var622)
(declare-const null-NullType var3182)
(declare-const null-var2180 var2180)
(declare-const null-var2087 var2087)
(declare-const var1684 var3603) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository 
(assert (not (= var1684 null-var3603)))
(declare-const var2904 var622) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var2904 null-var622)))
(assert true)
(define-const var3018 Iterator (getHelpers/-285572144 var1684)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: java.util.Iterator getHelpers()>() 
(define-const var3993 var145 (var1498_iteratorAsStream/1460293611 var3018)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StreamUtils: java.util.stream.Stream iteratorAsStream(java.util.Iterator)>($r1) 
(define-const var2610 var2572 (var1368_bootstrap$/730117796 var2904)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository$lambda_getProjectHelperForBuildFile_0__609: java.util.function.Predicate bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource)>(r2) 
(define-const var489 var145 (var145_filter/320182972 var3993 var2610)) ; Statement: $r5 = interfaceinvoke $r4.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r3) 
(define-const var2106 var1306 (var145_findFirst/-512239506 var489)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.stream.Stream: java.util.Optional findFirst()>() 
(assert true)
(define-const var3807 var2180 (orElse/-757175127 var2106 null-var2180)) ; Statement: $r7 = virtualinvoke $r6.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null) 
(define-const var747 var2087 (cast-from-var2180-to-var2087 var3807)) ; Statement: r8 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper) $r7 
 ; Statement: if r8 != null goto $z0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: boolean DEBUG> 
(assert (not (not (= var747 null-var2087)))) ; Negate: Cond: r8 != null  
(define-const var3167 var2281 var2281-init) ; Statement: $r18 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1881 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1881)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1881!1 String)
(assert (= var1881!1 ""))
(assert true)
(define-const var1969 String (append/672562846 var1881!1 "BUG: at least the ProjectHelper2 should have supported the file ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BUG: at least the ProjectHelper2 should have supported the file ") 
(declare-const var1881!2 String)
(assert (= var1881!2 (str.++ var1881!1 "BUG: at least the ProjectHelper2 should have supported the file ")))
(assert true)
(define-const var2210 String (append/-1031950772 var1969 (cast-from-var622-to-var2180 var2904))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1969!1 String)
(assert (str.prefixof var1969 var1969!1))
(assert true)
(define-const var1980 String (toString/-2075883882 var2210)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var3167 var1980)) ; Statement: specialinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r22) 

(declare-const var3167!1 var2281)
(declare-const var1980!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {getHelpers/-285572144=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository], java.util.Iterator), var1498_iteratorAsStream/1460293611=([java.util.Iterator], java.util.stream.Stream), var1368_bootstrap$/730117796=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.util.function.Predicate), var145_filter/320182972=([java.util.stream.Stream, java.util.function.Predicate], java.util.stream.Stream), var145_findFirst/-512239506=([java.util.stream.Stream], java.util.Optional), orElse/-757175127=([java.util.Optional, java.lang.Object], java.lang.Object), cast-from-var2180-to-var2087=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper), var2281-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var622-to-var2180=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3603=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository, var1684=r0, var622=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var2904=r2, var3018=$r1, var145=java.util.stream.Stream, var1498=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StreamUtils, var3993=$r4, var2572=java.util.function.Predicate, var1368=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository$lambda_getProjectHelperForBuildFile_0__609, var2610=$r3, var489=$r5, var1306=java.util.Optional, var2106=$r6, var2180=java.lang.Object, var3807=$r7, var2087=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper, var747=r8, var2281=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3167=$r18, var1881=$r19, var1969=$r20, var2210=$r21, var1980=$r22, var3182=null_type}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository=var3603, r0=var1684, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var622, r2=var2904, $r1=var3018, java.util.stream.Stream=var145, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StreamUtils=var1498, $r4=var3993, java.util.function.Predicate=var2572, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository$lambda_getProjectHelperForBuildFile_0__609=var1368, $r3=var2610, $r5=var489, java.util.Optional=var1306, $r6=var2106, java.lang.Object=var2180, $r7=var3807, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper=var2087, r8=var747, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2281, $r18=var3167, $r19=var1881, $r20=var1969, $r21=var2210, $r22=var1980, null_type=var3182}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: java.util.Iterator getHelpers()>();	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StreamUtils: java.util.stream.Stream iteratorAsStream(java.util.Iterator)>($r1);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository$lambda_getProjectHelperForBuildFile_0__609: java.util.function.Predicate bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource)>(r2);	$r5 = interfaceinvoke $r4.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r3);	$r6 = interfaceinvoke $r5.<java.util.stream.Stream: java.util.Optional findFirst()>();	$r7 = virtualinvoke $r6.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null);	r8 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper) $r7;	if r8 != null goto $z0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: boolean DEBUG>;	$r18 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BUG: at least the ProjectHelper2 should have supported the file ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r22);	throw $r18
;block_num 2