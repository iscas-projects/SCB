(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var426 0)
(declare-sort var2946 0)
(declare-sort var2261 0)
(declare-sort var507 0)
(declare-sort var1138 0)
(declare-sort var992 0)
(declare-sort var2244 0)
(declare-sort var3414 0)
(declare-sort var810 0)
(declare-sort var2193 0)
(declare-sort var1957 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getHelpers/-285572144 (var426) Iterator)
(declare-fun var507_iteratorAsStream/1460293611 (Iterator) var2261)
(declare-fun var992_bootstrap$/-1957447121 (var2946) var1138)
(declare-fun var2261_filter/320182972 (var2261 var1138) var2261)
(declare-fun var2261_findFirst/-512239506 (var2261) var2244)
(declare-fun orElse/-757175127 (var2244 var3414) var3414)
(declare-fun cast-from-var3414-to-var810 (var3414) var810)
(declare-fun var2193-init () var2193)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3414) String)
(declare-fun cast-from-var2946-to-var3414 (var2946) var3414)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var2193 String) void)
(declare-const null-var426 var426)
(declare-const null-var2946 var2946)
(declare-const null-NullType var1957)
(declare-const null-var3414 var3414)
(declare-const null-var810 var810)
(declare-const var612 var426) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository 
(assert (not (= var612 null-var426)))
(declare-const var2851 var2946) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var2851 null-var2946)))
(assert true)
(define-const var3779 Iterator (getHelpers/-285572144 var612)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: java.util.Iterator getHelpers()>() 
(define-const var1363 var2261 (var507_iteratorAsStream/1460293611 var3779)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StreamUtils: java.util.stream.Stream iteratorAsStream(java.util.Iterator)>($r1) 
(define-const var1630 var1138 (var992_bootstrap$/-1957447121 var2851)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository$lambda_getProjectHelperForAntlib_1__610: java.util.function.Predicate bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource)>(r2) 
(define-const var2598 var2261 (var2261_filter/320182972 var1363 var1630)) ; Statement: $r5 = interfaceinvoke $r4.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r3) 
(define-const var2932 var2244 (var2261_findFirst/-512239506 var2598)) ; Statement: $r6 = interfaceinvoke $r5.<java.util.stream.Stream: java.util.Optional findFirst()>() 
(assert true)
(define-const var598 var3414 (orElse/-757175127 var2932 null-var3414)) ; Statement: $r7 = virtualinvoke $r6.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null) 
(define-const var2562 var810 (cast-from-var3414-to-var810 var598)) ; Statement: r8 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper) $r7 
 ; Statement: if r8 != null goto $z0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: boolean DEBUG> 
(assert (not (not (= var2562 null-var810)))) ; Negate: Cond: r8 != null  
(define-const var1922 var2193 var2193-init) ; Statement: $r18 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1292 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1292)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1292!1 String)
(assert (= var1292!1 ""))
(assert true)
(define-const var1364 String (append/672562846 var1292!1 "BUG: at least the ProjectHelper2 should have supported the file ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BUG: at least the ProjectHelper2 should have supported the file ") 
(declare-const var1292!2 String)
(assert (= var1292!2 (str.++ var1292!1 "BUG: at least the ProjectHelper2 should have supported the file ")))
(assert true)
(define-const var645 String (append/-1031950772 var1364 (cast-from-var2946-to-var3414 var2851))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1364!1 String)
(assert (str.prefixof var1364 var1364!1))
(assert true)
(define-const var3434 String (toString/-2075883882 var645)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var1922 var3434)) ; Statement: specialinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r22) 

(declare-const var1922!1 var2193)
(declare-const var3434!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {getHelpers/-285572144=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository], java.util.Iterator), var507_iteratorAsStream/1460293611=([java.util.Iterator], java.util.stream.Stream), var992_bootstrap$/-1957447121=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.util.function.Predicate), var2261_filter/320182972=([java.util.stream.Stream, java.util.function.Predicate], java.util.stream.Stream), var2261_findFirst/-512239506=([java.util.stream.Stream], java.util.Optional), orElse/-757175127=([java.util.Optional, java.lang.Object], java.lang.Object), cast-from-var3414-to-var810=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper), var2193-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2946-to-var3414=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var426=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository, var612=r0, var2946=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var2851=r2, var3779=$r1, var2261=java.util.stream.Stream, var507=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StreamUtils, var1363=$r4, var1138=java.util.function.Predicate, var992=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository$lambda_getProjectHelperForAntlib_1__610, var1630=$r3, var2598=$r5, var2244=java.util.Optional, var2932=$r6, var3414=java.lang.Object, var598=$r7, var810=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper, var2562=r8, var2193=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1922=$r18, var1292=$r19, var1364=$r20, var645=$r21, var3434=$r22, var1957=null_type}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository=var426, r0=var612, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var2946, r2=var2851, $r1=var3779, java.util.stream.Stream=var2261, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StreamUtils=var507, $r4=var1363, java.util.function.Predicate=var1138, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository$lambda_getProjectHelperForAntlib_1__610=var992, $r3=var1630, $r5=var2598, java.util.Optional=var2244, $r6=var2932, java.lang.Object=var3414, $r7=var598, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper=var810, r8=var2562, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2193, $r18=var1922, $r19=var1292, $r20=var1364, $r21=var645, $r22=var3434, null_type=var1957}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: java.util.Iterator getHelpers()>();	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StreamUtils: java.util.stream.Stream iteratorAsStream(java.util.Iterator)>($r1);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository$lambda_getProjectHelperForAntlib_1__610: java.util.function.Predicate bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource)>(r2);	$r5 = interfaceinvoke $r4.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r3);	$r6 = interfaceinvoke $r5.<java.util.stream.Stream: java.util.Optional findFirst()>();	$r7 = virtualinvoke $r6.<java.util.Optional: java.lang.Object orElse(java.lang.Object)>(null);	r8 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper) $r7;	if r8 != null goto $z0 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: boolean DEBUG>;	$r18 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BUG: at least the ProjectHelper2 should have supported the file ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r22);	throw $r18
;block_num 2