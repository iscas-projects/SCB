(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2443 0)
(declare-sort var1559 0)
(declare-sort var158 0)
(declare-sort var3203 0)
(declare-sort var1011 0)
(declare-sort var2170 0)
(declare-sort var1835 0)
(declare-sort var1645 0)
(declare-sort var3101 0)
(declare-sort var1752 0)
(declare-sort var89 0)
(declare-sort var248 0)
(declare-sort var2658 0)
(declare-sort var2200 0)
(declare-sort var3458 0)
(declare-sort var2172 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2170!class ClassObject)
(declare-fun asOptional/414758551 (var1559 ClassObject) var1011)
(declare-fun var1645_bootstrap$/1936568605 () var1835)
(declare-fun map/1305667865 (var1011 var1835) var1011)
(declare-fun var1752_bootstrap$/1125735227 () var3101)
(declare-fun orElseThrow/1623874030 (var1011 var3101) var89)
(declare-fun cast-from-var89-to-var248 (var89) var248)
(declare-fun var2658-init () var2658)
(declare-fun var3458-init () var3458)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var89) String)
(declare-fun cast-from-var248-to-var89 (var248) var89)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var3458 String var2172) void)
(declare-fun cast-from-var2200-to-var2172 (var2200) var2172)
(declare-const null-var2443 var2443)
(declare-const null-var1559 var1559)
(declare-const null-String String)
(declare-const null-var3203 var3203)
(declare-const null-var2200 var2200)
(declare-const var2244 var2443) ; Statement: r10 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner 
(assert (not (= var2244 null-var2443)))
(declare-const var3140 var1559) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var3140 null-var1559)))
(declare-const var2897 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var2897 null-String)))
(declare-const var1629 var3203) ; Statement: r13 := @parameter2: java.util.Map 
(assert (not (= var1629 null-var3203)))
(declare-const var3128 var3203) ; Statement: r14 := @parameter3: java.util.Map 
(assert (not (= var3128 null-var3203)))
(declare-const var3523 var3203) ; Statement: r11 := @parameter4: java.util.Map 
(assert (not (= var3523 null-var3203)))
(declare-const var1747 var3203) ; Statement: r12 := @parameter5: java.util.Map 
(assert (not (= var1747 null-var3203)))
(assert true)
(define-const var35 var1011 (asOptional/414758551 var3140 var2170!class)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.util.Optional asOptional(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/types/resources/FileProvider;") 
(define-const var942 var1835 var1645_bootstrap$/1936568605) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner$getFile__269: java.util.function.Function bootstrap$()>() 
(assert true)
(define-const var1954 var1011 (map/1305667865 var35 var942)) ; Statement: $r4 = virtualinvoke $r2.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r1) 
(define-const var1856 var3101 var1752_bootstrap$/1125735227) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner$lambda_fillMapsFromArchive_0__273: java.util.function.Supplier bootstrap$()>() 
(assert true)
(define-const var1516 var89 (orElseThrow/1623874030 var1954 var1856)) ; Statement: $r5 = virtualinvoke $r4.<java.util.Optional: java.lang.Object orElseThrow(java.util.function.Supplier)>($r3) 
(define-const var2081 var248 (cast-from-var89-to-var248 var1516)) ; Statement: r6 = (java.io.File) $r5 
(define-const var1232 var2658 var2658-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3961 var2200) ; Statement: $r17 := @caughtexception 
(assert (not (= var3961 null-var2200)))
(define-const var828 var3458 var3458-init) ; Statement: $r18 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1604 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1604)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1604!1 String)
(assert (= var1604!1 ""))
(assert true)
(define-const var669 String (append/672562846 var1604!1 "Problem opening ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem opening ") 
(declare-const var1604!2 String)
(assert (= var1604!2 (str.++ var1604!1 "Problem opening ")))
(assert true)
(define-const var3288 String (append/-1031950772 var669 (cast-from-var248-to-var89 var2081))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var669!1 String)
(assert (str.prefixof var669 var669!1))
(assert true)
(define-const var486 String (toString/-2075883882 var3288)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var828 var486 (cast-from-var2200-to-var2172 var3961))) ; Statement: specialinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r22, $r17) 

(declare-const var828!1 var3458)
(declare-const var486!1 String)
(declare-const var3961!1 var2200)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {asOptional/414758551=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, java.lang.Class], java.util.Optional), var1645_bootstrap$/1936568605=([], java.util.function.Function), map/1305667865=([java.util.Optional, java.util.function.Function], java.util.Optional), var1752_bootstrap$/1125735227=([], java.util.function.Supplier), orElseThrow/1623874030=([java.util.Optional, java.util.function.Supplier], java.lang.Object), cast-from-var89-to-var248=([java.lang.Object], java.io.File), var2658-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile), var3458-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var248-to-var89=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var2200-to-var2172=([java.io.IOException], java.lang.Throwable)}
; {var2443=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner, var2244=r10, var1559=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var3140=r0, var2897=r8, var158=null_type, var3203=java.util.Map, var1629=r13, var3128=r14, var3523=r11, var1747=r12, var1011=java.util.Optional, var2170=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.FileProvider, var35=$r2, var1835=java.util.function.Function, var1645=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner$getFile__269, var942=$r1, var1954=$r4, var3101=java.util.function.Supplier, var1752=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner$lambda_fillMapsFromArchive_0__273, var1856=$r3, var89=java.lang.Object, var1516=$r5, var248=java.io.File, var2081=r6, var2658=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile, var1232=$r7, var2200=java.io.IOException, var3961=$r17, var3458=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var828=$r18, var1604=$r19, var669=$r20, var3288=$r21, var486=$r22, var2172=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner=var2443, r10=var2244, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var1559, r0=var3140, r8=var2897, null_type=var158, java.util.Map=var3203, r13=var1629, r14=var3128, r11=var3523, r12=var1747, java.util.Optional=var1011, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.FileProvider=var2170, $r2=var35, java.util.function.Function=var1835, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner$getFile__269=var1645, $r1=var942, $r4=var1954, java.util.function.Supplier=var3101, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner$lambda_fillMapsFromArchive_0__273=var1752, $r3=var1856, java.lang.Object=var89, $r5=var1516, java.io.File=var248, r6=var2081, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile=var2658, $r7=var1232, java.io.IOException=var2200, $r17=var3961, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3458, $r18=var828, $r19=var1604, $r20=var669, $r21=var3288, $r22=var486, java.lang.Throwable=var2172}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r8 := @parameter1: java.lang.String;	r13 := @parameter2: java.util.Map;	r14 := @parameter3: java.util.Map;	r11 := @parameter4: java.util.Map;	r12 := @parameter5: java.util.Map;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.util.Optional asOptional(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/types/resources/FileProvider;");	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner$getFile__269: java.util.function.Function bootstrap$()>();	$r4 = virtualinvoke $r2.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r1);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner$lambda_fillMapsFromArchive_0__273: java.util.function.Supplier bootstrap$()>();	$r5 = virtualinvoke $r4.<java.util.Optional: java.lang.Object orElseThrow(java.util.function.Supplier)>($r3);	r6 = (java.io.File) $r5;	$r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile;	$r17 := @caughtexception;	$r18 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem opening ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r22, $r17);	throw $r18
;block_num 2