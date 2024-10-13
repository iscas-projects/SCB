(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1921 0)
(declare-sort var3200 0)
(declare-sort var2510 0)
(declare-sort var101 0)
(declare-sort var616 0)
(declare-sort var2700 0)
(declare-sort var2356 0)
(declare-sort var467 0)
(declare-sort var1125 0)
(declare-sort var1563 0)
(declare-sort var1278 0)
(declare-sort var2107 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/1546763460 (var1921) void)
(declare-fun var3200-init () var3200)
(declare-fun <init>/-1704205725 (var3200) void)
(declare-fun getMainAttributes/1062009737 (var3200) var2510)
(declare-fun put/300465735 (var2510 var616 var616) var616)
(declare-fun cast-from-var101-to-var616 (var101) var616)
(declare-fun cast-from-String-to-var616 (String) var616)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getProject/416672769 (var2356) var2700)
(declare-fun cast-from-var1921-to-var2356 (var1921) var2356)
(declare-fun getProperty/-1126216426 (var2700 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun putValue/244870442 (var2510 String String) String)
(declare-fun appendExtraAttributes/-860396963 (var1921 var2510) void)
(declare-fun extension/809238047 (var1921) var467)
(declare-fun dependencies/809238047 (var1921) var1125)
(declare-fun toExtensions/-60019661 (var1921 var1125) var1125)
(declare-fun var1125_size/-959786421 (var1125) Int)
(declare-fun appendExtensionList/1141951710 (var1921 var2510 var101 String Int) void)
(declare-fun appendLibraryList/-1714154556 (var1921 var2510 String var1125) void)
(declare-fun optionals/809238047 (var1921) var1125)
(declare-fun var1278-init () var1278)
(declare-fun getMessage/849299655 (var2107) String)
(declare-fun cast-from-var1563-to-var2107 (var1563) var2107)
(declare-fun <init>/-191906322 (var1278 String var2107) void)
(declare-const null-var1921 var1921)
(declare-const var101-MANIFEST_VERSION var101)
(declare-const null-var467 var467)
(declare-const var467-EXTENSION_LIST var101)
(declare-const var467-OPTIONAL_EXTENSION_LIST var101)
(declare-const null-var1563 var1563)
(declare-const var3478 var1921) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask 
(assert (not (= var3478 null-var1921)))
(assert true)
;(assert (validate/1546763460 var3478)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: void validate()>() 

(declare-const var3478!1 var1921)
(define-const var3133 var3200 var3200-init) ; Statement: $r1 = new java.util.jar.Manifest 
(assert true)
;(assert (<init>/-1704205725 var3133)) ; Statement: specialinvoke $r1.<java.util.jar.Manifest: void <init>()>() 

(declare-const var3133!1 var3200)
(assert true)
(define-const var1566 var2510 (getMainAttributes/1062009737 var3133!1)) ; Statement: r2 = virtualinvoke $r1.<java.util.jar.Manifest: java.util.jar.Attributes getMainAttributes()>() 
(define-const var293 var101 var101-MANIFEST_VERSION) ; Statement: $r3 = <java.util.jar.Attributes$Name: java.util.jar.Attributes$Name MANIFEST_VERSION> 
(assert true)
;(assert (put/300465735 var1566 (cast-from-var101-to-var616 var293) (cast-from-String-to-var616 "1.0"))) ; Statement: virtualinvoke r2.<java.util.jar.Attributes: java.lang.Object put(java.lang.Object,java.lang.Object)>($r3, "1.0") 

(declare-const var1566!1 var2510)
(declare-const var293!1 var101)
(declare-const var505 String)
(define-const var1136 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1136)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1136!1 String)
(assert (= var1136!1 ""))
(assert true)
(define-const var2445 String (append/672562846 var1136!1 "Apache Ant ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Apache Ant ") 
(declare-const var1136!2 String)
(assert (= var1136!2 (str.++ var1136!1 "Apache Ant ")))
(assert true)
(define-const var2644 var2700 (getProject/416672769 (cast-from-var1921-to-var2356 var3478!1))) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var746 String (getProperty/-1126216426 var2644 "ant.version")) ; Statement: $r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.version") 
(assert true)
(define-const var1464 String (append/672562846 var2445 var746)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2445!1 String)
(assert (= var2445!1 (str.++ var2445 var746)))
(assert true)
(define-const var3068 String (toString/-2075883882 var1464)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (putValue/244870442 var1566!1 "Created-By" var3068)) ; Statement: virtualinvoke r2.<java.util.jar.Attributes: java.lang.String putValue(java.lang.String,java.lang.String)>("Created-By", $r9) 

(declare-const var1566!2 var2510)
(declare-const var1519 String)
(declare-const var3068!1 String)
(assert true)
;(assert (appendExtraAttributes/-860396963 var3478!1 var1566!2)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: void appendExtraAttributes(java.util.jar.Attributes)>(r2) 

(declare-const var3478!2 var1921)
(declare-const var1566!3 var2510)
(define-const var890 var467 (extension/809238047 var3478!2)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension extension> 
 ; Statement: if null == $r10 goto $r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: java.util.List dependencies> 
(assert (= null-var467 var890)) ; Cond: null == $r10 
(define-const var1033 var1125 (dependencies/809238047 var3478!2)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: java.util.List dependencies> 
(assert true)
(define-const var472 var1125 (toExtensions/-60019661 var3478!2 var1033)) ; Statement: $r22 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: java.util.List toExtensions(java.util.List)>($r11) 
(define-const var1119 var101 var467-EXTENSION_LIST) ; Statement: $r12 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.util.jar.Attributes$Name EXTENSION_LIST> 
(define-const var1961 Int (var1125_size/-959786421 var472)) ; Statement: $i0 = interfaceinvoke $r22.<java.util.List: int size()>() 
(assert true)
;(assert (appendExtensionList/1141951710 var3478!2 var1566!3 var1119 "lib" var1961)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: void appendExtensionList(java.util.jar.Attributes,java.util.jar.Attributes$Name,java.lang.String,int)>(r2, $r12, "lib", $i0) 

(declare-const var3478!3 var1921)
(declare-const var1566!4 var2510)
(declare-const var1119!1 var101)
(declare-const var2103 String)
(declare-const var1961!1 Int)
(assert true)
;(assert (appendLibraryList/-1714154556 var3478!3 var1566!4 "lib" var472)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: void appendLibraryList(java.util.jar.Attributes,java.lang.String,java.util.List)>(r2, "lib", $r22) 

(declare-const var3478!4 var1921)
(declare-const var1566!5 var2510)
(declare-const var2103!1 String)
(declare-const var472!1 var1125)
(define-const var2233 var1125 (optionals/809238047 var3478!4)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: java.util.List optionals> 
(assert true)
(define-const var2457 var1125 (toExtensions/-60019661 var3478!4 var2233)) ; Statement: $r23 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: java.util.List toExtensions(java.util.List)>($r13) 
(define-const var171 var101 var467-OPTIONAL_EXTENSION_LIST) ; Statement: $r14 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.util.jar.Attributes$Name OPTIONAL_EXTENSION_LIST> 
(define-const var837 Int (var1125_size/-959786421 var2457)) ; Statement: $i1 = interfaceinvoke $r23.<java.util.List: int size()>() 
(assert true)
;(assert (appendExtensionList/1141951710 var3478!4 var1566!5 var171 "opt" var837)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: void appendExtensionList(java.util.jar.Attributes,java.util.jar.Attributes$Name,java.lang.String,int)>(r2, $r14, "opt", $i1) 

(declare-const var3478!5 var1921)
(declare-const var1566!6 var2510)
(declare-const var171!1 var101)
(declare-const var954 String)
(declare-const var837!1 Int)
(assert true)
;(assert (appendLibraryList/-1714154556 var3478!5 var1566!6 "opt" var2457)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: void appendLibraryList(java.util.jar.Attributes,java.lang.String,java.util.List)>(r2, "opt", $r23) 

(declare-const var3478!6 var1921)
(declare-const var1566!7 var2510)
(declare-const var954!1 String)
(declare-const var2457!1 var1125)
(define-const var1188 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2237 var1563) ; Statement: $r24 := @caughtexception 
(assert (not (= var2237 null-var1563)))
(define-const var656 var1278 var1278-init) ; Statement: $r25 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
(define-const var692 String (getMessage/849299655 (cast-from-var1563-to-var2107 var2237))) ; Statement: $r26 = virtualinvoke $r24.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
;(assert (<init>/-191906322 var656 var692 (cast-from-var1563-to-var2107 var2237))) ; Statement: specialinvoke $r25.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r26, $r24) 

(declare-const var656!1 var1278)
(declare-const var692!1 String)
(declare-const var2237!1 var1563)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/1546763460=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask], void), var3200-init=([], java.util.jar.Manifest), <init>/-1704205725=([java.util.jar.Manifest], void), getMainAttributes/1062009737=([java.util.jar.Manifest], java.util.jar.Attributes), put/300465735=([java.util.jar.Attributes, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var101-to-var616=([java.util.jar.Attributes$Name], java.lang.Object), cast-from-String-to-var616=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var1921-to-var2356=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), getProperty/-1126216426=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), putValue/244870442=([java.util.jar.Attributes, java.lang.String, java.lang.String], java.lang.String), appendExtraAttributes/-860396963=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask, java.util.jar.Attributes], void), extension/809238047=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension), dependencies/809238047=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask], java.util.List), toExtensions/-60019661=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask, java.util.List], java.util.List), var1125_size/-959786421=([java.util.List], int), appendExtensionList/1141951710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask, java.util.jar.Attributes, java.util.jar.Attributes$Name, java.lang.String, int], void), appendLibraryList/-1714154556=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask, java.util.jar.Attributes, java.lang.String, java.util.List], void), optionals/809238047=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask], java.util.List), var1278-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1563-to-var2107=([java.io.IOException], java.lang.Throwable), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var1921=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask, var3478=r0, var3200=java.util.jar.Manifest, var3133=$r1, var2510=java.util.jar.Attributes, var1566=r2, var101=java.util.jar.Attributes$Name, var293=$r3, var616=java.lang.Object, var505="1.0", var1136=$r4, var2445=$r7, var2700=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2356=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2644=$r5, var746=$r6, var1464=$r8, var3068=$r9, var1519="Created-By", var467=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension, var890=$r10, var1125=java.util.List, var1033=$r11, var472=$r22, var1119=$r12, var1961=$i0, var2103="lib", var2233=$r13, var2457=$r23, var171=$r14, var837=$i1, var954="opt", var1188=$r15, var1563=java.io.IOException, var2237=$r24, var1278=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var656=$r25, var2107=java.lang.Throwable, var692=$r26}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask=var1921, r0=var3478, java.util.jar.Manifest=var3200, $r1=var3133, java.util.jar.Attributes=var2510, r2=var1566, java.util.jar.Attributes$Name=var101, $r3=var293, java.lang.Object=var616, "1.0"=var505, $r4=var1136, $r7=var2445, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2700, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2356, $r5=var2644, $r6=var746, $r8=var1464, $r9=var3068, "Created-By"=var1519, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension=var467, $r10=var890, java.util.List=var1125, $r11=var1033, $r22=var472, $r12=var1119, $i0=var1961, "lib"=var2103, $r13=var2233, $r23=var2457, $r14=var171, $i1=var837, "opt"=var954, $r15=var1188, java.io.IOException=var1563, $r24=var2237, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1278, $r25=var656, java.lang.Throwable=var2107, $r26=var692}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: void validate()>();	$r1 = new java.util.jar.Manifest;	specialinvoke $r1.<java.util.jar.Manifest: void <init>()>();	r2 = virtualinvoke $r1.<java.util.jar.Manifest: java.util.jar.Attributes getMainAttributes()>();	$r3 = <java.util.jar.Attributes$Name: java.util.jar.Attributes$Name MANIFEST_VERSION>;	virtualinvoke r2.<java.util.jar.Attributes: java.lang.Object put(java.lang.Object,java.lang.Object)>($r3, "1.0");	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Apache Ant ");	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("ant.version");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<java.util.jar.Attributes: java.lang.String putValue(java.lang.String,java.lang.String)>("Created-By", $r9);	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: void appendExtraAttributes(java.util.jar.Attributes)>(r2);	$r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension extension>;	if null == $r10 goto $r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: java.util.List dependencies>;	$r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: java.util.List dependencies>;	$r22 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: java.util.List toExtensions(java.util.List)>($r11);	$r12 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.util.jar.Attributes$Name EXTENSION_LIST>;	$i0 = interfaceinvoke $r22.<java.util.List: int size()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: void appendExtensionList(java.util.jar.Attributes,java.util.jar.Attributes$Name,java.lang.String,int)>(r2, $r12, "lib", $i0);	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: void appendLibraryList(java.util.jar.Attributes,java.lang.String,java.util.List)>(r2, "lib", $r22);	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: java.util.List optionals>;	$r23 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: java.util.List toExtensions(java.util.List)>($r13);	$r14 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.util.jar.Attributes$Name OPTIONAL_EXTENSION_LIST>;	$i1 = interfaceinvoke $r23.<java.util.List: int size()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: void appendExtensionList(java.util.jar.Attributes,java.util.jar.Attributes$Name,java.lang.String,int)>(r2, $r14, "opt", $i1);	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibManifestTask: void appendLibraryList(java.util.jar.Attributes,java.lang.String,java.util.List)>(r2, "opt", $r23);	$r15 = new java.lang.StringBuilder;	$r24 := @caughtexception;	$r25 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r26 = virtualinvoke $r24.<java.io.IOException: java.lang.String getMessage()>();	specialinvoke $r25.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r26, $r24);	throw $r25
;block_num 3