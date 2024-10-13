(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1312 0)
(declare-sort var1302 0)
(declare-sort var1704 0)
(declare-sort var338 0)
(declare-sort var2617 0)
(declare-sort var533 0)
(declare-sort var2105 0)
(declare-sort var788 0)
(declare-sort var3697 0)
(declare-sort var2315 0)
(declare-sort var3475 0)
(declare-sort var155 0)
(declare-sort var2255 0)
(declare-sort var2131 0)
(declare-sort var3574 0)
(declare-sort var3733 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var533!class ClassObject)
(declare-fun asOptional/414758551 (var1302 ClassObject) var2617)
(declare-fun var788_bootstrap$/1936568605 () var2105)
(declare-fun map/1305667865 (var2617 var2105) var2617)
(declare-fun var2315_bootstrap$/1125735227 () var3697)
(declare-fun orElseThrow/1623874030 (var2617 var3697) var3475)
(declare-fun cast-from-var3475-to-var155 (var3475) var155)
(declare-fun var2255-init () var2255)
(declare-fun var3574-init () var3574)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3475) String)
(declare-fun cast-from-var155-to-var3475 (var155) var3475)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var3574 String var3733) void)
(declare-fun cast-from-var2131-to-var3733 (var2131) var3733)
(declare-const null-var1312 var1312)
(declare-const null-var1302 var1302)
(declare-const null-String String)
(declare-const null-var338 var338)
(declare-const null-var2131 var2131)
(declare-const var1603 var1312) ; Statement: r10 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner 
(assert (not (= var1603 null-var1312)))
(declare-const var1853 var1302) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var1853 null-var1302)))
(declare-const var3184 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var3184 null-String)))
(declare-const var1515 var338) ; Statement: r13 := @parameter2: java.util.Map 
(assert (not (= var1515 null-var338)))
(declare-const var3153 var338) ; Statement: r14 := @parameter3: java.util.Map 
(assert (not (= var3153 null-var338)))
(declare-const var3976 var338) ; Statement: r11 := @parameter4: java.util.Map 
(assert (not (= var3976 null-var338)))
(declare-const var2433 var338) ; Statement: r12 := @parameter5: java.util.Map 
(assert (not (= var2433 null-var338)))
(assert true)
(define-const var1476 var2617 (asOptional/414758551 var1853 var533!class)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.util.Optional asOptional(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/types/resources/FileProvider;") 
(define-const var3392 var2105 var788_bootstrap$/1936568605) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner$getFile__269: java.util.function.Function bootstrap$()>() 
(assert true)
(define-const var2680 var2617 (map/1305667865 var1476 var3392)) ; Statement: $r4 = virtualinvoke $r2.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r1) 
(define-const var1159 var3697 var2315_bootstrap$/1125735227) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner$lambda_fillMapsFromArchive_0__273: java.util.function.Supplier bootstrap$()>() 
(assert true)
(define-const var2753 var3475 (orElseThrow/1623874030 var2680 var1159)) ; Statement: $r5 = virtualinvoke $r4.<java.util.Optional: java.lang.Object orElseThrow(java.util.function.Supplier)>($r3) 
(define-const var2254 var155 (cast-from-var3475-to-var155 var2753)) ; Statement: r6 = (java.io.File) $r5 
(define-const var3191 var2255 var2255-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3564 var2131) ; Statement: $r23 := @caughtexception 
(assert (not (= var3564 null-var2131)))
(define-const var2814 var3574 var3574-init) ; Statement: $r24 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3043 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3043)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3043!1 String)
(assert (= var3043!1 ""))
(assert true)
(define-const var2334 String (append/672562846 var3043!1 "Problem reading ")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem reading ") 
(declare-const var3043!2 String)
(assert (= var3043!2 (str.++ var3043!1 "Problem reading ")))
(assert true)
(define-const var3833 String (append/-1031950772 var2334 (cast-from-var155-to-var3475 var2254))) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var2334!1 String)
(assert (str.prefixof var2334 var2334!1))
(assert true)
(define-const var330 String (toString/-2075883882 var3833)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var2814 var330 (cast-from-var2131-to-var3733 var3564))) ; Statement: specialinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r28, $r23) 

(declare-const var2814!1 var3574)
(declare-const var330!1 String)
(declare-const var3564!1 var2131)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {asOptional/414758551=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, java.lang.Class], java.util.Optional), var788_bootstrap$/1936568605=([], java.util.function.Function), map/1305667865=([java.util.Optional, java.util.function.Function], java.util.Optional), var2315_bootstrap$/1125735227=([], java.util.function.Supplier), orElseThrow/1623874030=([java.util.Optional, java.util.function.Supplier], java.lang.Object), cast-from-var3475-to-var155=([java.lang.Object], java.io.File), var2255-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile), var3574-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var155-to-var3475=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var2131-to-var3733=([java.util.zip.ZipException], java.lang.Throwable)}
; {var1312=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner, var1603=r10, var1302=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var1853=r0, var3184=r8, var1704=null_type, var338=java.util.Map, var1515=r13, var3153=r14, var3976=r11, var2433=r12, var2617=java.util.Optional, var533=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.FileProvider, var1476=$r2, var2105=java.util.function.Function, var788=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner$getFile__269, var3392=$r1, var2680=$r4, var3697=java.util.function.Supplier, var2315=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner$lambda_fillMapsFromArchive_0__273, var1159=$r3, var3475=java.lang.Object, var2753=$r5, var155=java.io.File, var2254=r6, var2255=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile, var3191=$r7, var2131=java.util.zip.ZipException, var3564=$r23, var3574=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2814=$r24, var3043=$r25, var2334=$r26, var3833=$r27, var330=$r28, var3733=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner=var1312, r10=var1603, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var1302, r0=var1853, r8=var3184, null_type=var1704, java.util.Map=var338, r13=var1515, r14=var3153, r11=var3976, r12=var2433, java.util.Optional=var2617, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.FileProvider=var533, $r2=var1476, java.util.function.Function=var2105, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner$getFile__269=var788, $r1=var3392, $r4=var2680, java.util.function.Supplier=var3697, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner$lambda_fillMapsFromArchive_0__273=var2315, $r3=var1159, java.lang.Object=var3475, $r5=var2753, java.io.File=var155, r6=var2254, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile=var2255, $r7=var3191, java.util.zip.ZipException=var2131, $r23=var3564, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3574, $r24=var2814, $r25=var3043, $r26=var2334, $r27=var3833, $r28=var330, java.lang.Throwable=var3733}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r8 := @parameter1: java.lang.String;	r13 := @parameter2: java.util.Map;	r14 := @parameter3: java.util.Map;	r11 := @parameter4: java.util.Map;	r12 := @parameter5: java.util.Map;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.util.Optional asOptional(java.lang.Class)>(class "Lcom/google/javascript/jscomp/jarjar/org/apache/tools/ant/types/resources/FileProvider;");	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner$getFile__269: java.util.function.Function bootstrap$()>();	$r4 = virtualinvoke $r2.<java.util.Optional: java.util.Optional map(java.util.function.Function)>($r1);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ZipScanner$lambda_fillMapsFromArchive_0__273: java.util.function.Supplier bootstrap$()>();	$r5 = virtualinvoke $r4.<java.util.Optional: java.lang.Object orElseThrow(java.util.function.Supplier)>($r3);	r6 = (java.io.File) $r5;	$r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipFile;	$r23 := @caughtexception;	$r24 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem reading ");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r28, $r23);	throw $r24
;block_num 2