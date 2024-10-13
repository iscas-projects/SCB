(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1345 0)
(declare-sort var2554 0)
(declare-sort var2569 0)
(declare-sort var1391 0)
(declare-sort var1137 0)
(declare-sort var2341 0)
(declare-sort var3750 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2554_isKaffe/1376613989 () Bool)
(declare-fun var2569_getProperty/258823597 (String) String)
(declare-fun toLowerCase/1946809429 (String var1391) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1137-init () var1137)
(declare-fun <init>/-87565581 (var1137) void)
(declare-fun var2341-init () var2341)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2554_getJavaHome/1418646508 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1681595970 (var2341 String) void)
(declare-fun setDir/-238865776 (var3750 var2341) void)
(declare-fun cast-from-var1137-to-var3750 (var1137) var3750)
(declare-fun setIncludes/1198843663 (var3750 String) void)
(declare-fun addFileset/-775031167 (var1345 var1137) void)
(declare-const null-var1345 var1345)
(declare-const var1391-ENGLISH var1391)
(declare-const var2341-separator String)
(declare-const var2647 var1345) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert (not (= var2647 null-var1345)))
(define-const var2888 Bool var2554_isKaffe/1376613989) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isKaffe()>() 
 ; Statement: if $z0 == 0 goto $r1 = "GNU libgcj" 
(assert (= (ite var2888 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2298 String "GNU libgcj") ; Statement: $r1 = "GNU libgcj" 
(define-const var573 String (var2569_getProperty/258823597 "java.vm.name")) ; Statement: $r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.vm.name") 
(assert true)
(define-const var230 Bool (= var2298 var573)) ; Statement: $z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>($r0) 
 ; Statement: if $z1 == 0 goto $r123 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.vendor") 
(assert (= (ite var230 1 0) 0)) ; Cond: $z1 == 0 
(define-const var208 String (var2569_getProperty/258823597 "java.vendor")) ; Statement: $r123 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.vendor") 
(define-const var1940 var1391 var1391-ENGLISH) ; Statement: $r124 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3367 String (toLowerCase/1946809429 var208 var1940)) ; Statement: $r125 = virtualinvoke $r123.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r124) 
(assert true)
(define-const var958 Bool (contains/1009244746 var3367 (cast-from-String-to-String "microsoft"))) ; Statement: $z5 = virtualinvoke $r125.<java.lang.String: boolean contains(java.lang.CharSequence)>("microsoft") 
 ; Statement: if $z5 == 0 goto $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert (not (= (ite var958 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var1022 var1137 var1137-init) ; Statement: $r101 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet 
(assert true)
;(assert (<init>/-87565581 var1022)) ; Statement: specialinvoke $r101.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet: void <init>()>() 

(declare-const var1022!1 var1137)
(define-const var2421 var2341 var2341-init) ; Statement: $r102 = new java.io.File 
(define-const var489 String String-init) ; Statement: $r103 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var489)) ; Statement: specialinvoke $r103.<java.lang.StringBuilder: void <init>()>() 
(declare-const var489!1 String)
(assert (= var489!1 ""))
(define-const var1596 String var2554_getJavaHome/1418646508) ; Statement: $r104 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: java.lang.String getJavaHome()>() 
(assert true)
(define-const var2705 String (append/672562846 var489!1 var1596)) ; Statement: $r106 = virtualinvoke $r103.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r104) 
(declare-const var489!2 String)
(assert (= var489!2 (str.++ var489!1 var1596)))
(define-const var2028 String var2341-separator) ; Statement: $r105 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var2003 String (append/672562846 var2705 var2028)) ; Statement: $r107 = virtualinvoke $r106.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r105) 
(declare-const var2705!1 String)
(assert (= var2705!1 (str.++ var2705 var2028)))
(assert true)
(define-const var300 String (append/672562846 var2003 "Packages")) ; Statement: $r108 = virtualinvoke $r107.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Packages") 
(declare-const var2003!1 String)
(assert (= var2003!1 (str.++ var2003 "Packages")))
(assert true)
(define-const var1510 String (toString/-2075883882 var300)) ; Statement: $r109 = virtualinvoke $r108.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1681595970 var2421 var1510)) ; Statement: specialinvoke $r102.<java.io.File: void <init>(java.lang.String)>($r109) 

(declare-const var2421!1 var2341)
(declare-const var1510!1 String)
(assert true)
;(assert (setDir/-238865776 (cast-from-var1137-to-var3750 var1022!1) var2421!1)) ; Statement: virtualinvoke $r101.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet: void setDir(java.io.File)>($r102) 

(declare-const var1022!2 var1137)
(declare-const var2421!2 var2341)
(assert true)
;(assert (setIncludes/1198843663 (cast-from-var1137-to-var3750 var1022!2) "*.ZIP")) ; Statement: virtualinvoke $r101.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet: void setIncludes(java.lang.String)>("*.ZIP") 

(declare-const var1022!3 var1137)
(declare-const var1383 String)
(assert true)
;(assert (addFileset/-775031167 var2647 var1022!3)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: void addFileset(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet)>($r101) 

(declare-const var2647!1 var1345)
(declare-const var1022!4 var1137)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2554_isKaffe/1376613989=([], boolean), var2569_getProperty/258823597=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1137-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet), <init>/-87565581=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet], void), var2341-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2554_getJavaHome/1418646508=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), setDir/-238865776=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet, java.io.File], void), cast-from-var1137-to-var3750=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet), setIncludes/1198843663=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet, java.lang.String], void), addFileset/-775031167=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet], void)}
; {var1345=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var2647=r2, var2554=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils, var2888=$z0, var2298=$r1, var2569=java.lang.System, var573=$r0, var230=$z1, var208=$r123, var1391=java.util.Locale, var1940=$r124, var3367=$r125, var958=$z5, var1137=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet, var1022=$r101, var2341=java.io.File, var2421=$r102, var489=$r103, var1596=$r104, var2705=$r106, var2028=$r105, var2003=$r107, var300=$r108, var1510=$r109, var3750=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet, var1383="*.ZIP"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var1345, r2=var2647, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils=var2554, $z0=var2888, $r1=var2298, java.lang.System=var2569, $r0=var573, $z1=var230, $r123=var208, java.util.Locale=var1391, $r124=var1940, $r125=var3367, $z5=var958, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet=var1137, $r101=var1022, java.io.File=var2341, $r102=var2421, $r103=var489, $r104=var1596, $r106=var2705, $r105=var2028, $r107=var2003, $r108=var300, $r109=var1510, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.AbstractFileSet=var3750, "*.ZIP"=var1383}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: boolean isKaffe()>();	if $z0 == 0 goto $r1 = "GNU libgcj";	$r1 = "GNU libgcj";	$r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.vm.name");	$z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>($r0);	if $z1 == 0 goto $r123 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.vendor");	$r123 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.vendor");	$r124 = <java.util.Locale: java.util.Locale ENGLISH>;	$r125 = virtualinvoke $r123.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r124);	$z5 = virtualinvoke $r125.<java.lang.String: boolean contains(java.lang.CharSequence)>("microsoft");	if $z5 == 0 goto $r3 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	$r101 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet;	specialinvoke $r101.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet: void <init>()>();	$r102 = new java.io.File;	$r103 = new java.lang.StringBuilder;	specialinvoke $r103.<java.lang.StringBuilder: void <init>()>();	$r104 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JavaEnvUtils: java.lang.String getJavaHome()>();	$r106 = virtualinvoke $r103.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r104);	$r105 = <java.io.File: java.lang.String separator>;	$r107 = virtualinvoke $r106.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r105);	$r108 = virtualinvoke $r107.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Packages");	$r109 = virtualinvoke $r108.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r102.<java.io.File: void <init>(java.lang.String)>($r109);	virtualinvoke $r101.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet: void setDir(java.io.File)>($r102);	virtualinvoke $r101.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet: void setIncludes(java.lang.String)>("*.ZIP");	virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: void addFileset(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FileSet)>($r101);	goto [?= return];	return
;block_num 5