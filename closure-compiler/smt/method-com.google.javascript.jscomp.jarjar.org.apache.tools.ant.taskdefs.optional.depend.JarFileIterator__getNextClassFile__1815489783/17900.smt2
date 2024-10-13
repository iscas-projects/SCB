(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1901 0)
(declare-sort var779 0)
(declare-sort var365 0)
(declare-sort var3210 0)
(declare-sort var2824 0)
(declare-sort var1870 0)
(declare-sort var134 0)
(declare-sort var1528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jarStream/-75885131 (var1901) var365)
(declare-fun getMessage/849299655 (var2824) String)
(declare-fun cast-from-var3210-to-var2824 (var3210) var2824)
(declare-fun getClass/1258963082 (var1870) ClassObject)
(declare-fun cast-from-var3210-to-var1870 (var3210) var1870)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var1528-init () var1528)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var1528 String) void)
(declare-const null-var1901 var1901)
(declare-const null-var779 var779)
(declare-const null-var3210 var3210)
(declare-const null-String String)
(declare-const var280 var1901) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.JarFileIterator 
(assert (not (= var280 null-var1901)))
(define-const var675 var779 null-var779) ; Statement: r16 = null 
(define-const var2186 var365 (jarStream/-75885131 var280)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.JarFileIterator: java.util.zip.ZipInputStream jarStream> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1505 var3210) ; Statement: $r5 := @caughtexception 
(assert (not (= var1505 null-var3210)))
(assert true)
(define-const var2817 String (getMessage/849299655 (cast-from-var3210-to-var2824 var1505))) ; Statement: r19 = virtualinvoke $r5.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var1044 ClassObject (getClass/1258963082 (cast-from-var3210-to-var1870 var1505))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3495 String (getName/-1958580599 var1044)) ; Statement: r20 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
 ; Statement: if r19 == null goto $r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (= var2817 null-String)) ; Cond: r19 == null 
(define-const var910 var1528 var1528-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1276 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1276)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1276!1 String)
(assert (= var1276!1 ""))
(assert true)
(define-const var3447 String (append/672562846 var1276!1 "Problem reading JAR file: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem reading JAR file: ") 
(declare-const var1276!2 String)
(assert (= var1276!2 (str.++ var1276!1 "Problem reading JAR file: ")))
(assert true)
(define-const var535 String (append/672562846 var3447 var3495)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var3447!1 String)
(assert (= var3447!1 (str.++ var3447 var3495)))
(assert true)
(define-const var657 String (toString/-2075883882 var535)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var910 var657)) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r11) 

(declare-const var910!1 var1528)
(declare-const var657!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {jarStream/-75885131=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.JarFileIterator], java.util.zip.ZipInputStream), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3210-to-var2824=([java.io.IOException], java.lang.Throwable), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3210-to-var1870=([java.io.IOException], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), var1528-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1901=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.JarFileIterator, var280=r0, var779=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.ClassFile, var675=r16, var365=java.util.zip.ZipInputStream, var2186=$r1, var3210=java.io.IOException, var1505=$r5, var2824=java.lang.Throwable, var2817=r19, var1870=java.lang.Object, var1044=$r6, var3495=r20, var134=null_type, var1528=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var910=$r7, var1276=$r8, var3447=$r9, var535=$r10, var657=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.JarFileIterator=var1901, r0=var280, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.ClassFile=var779, r16=var675, java.util.zip.ZipInputStream=var365, $r1=var2186, java.io.IOException=var3210, $r5=var1505, java.lang.Throwable=var2824, r19=var2817, java.lang.Object=var1870, $r6=var1044, r20=var3495, null_type=var134, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1528, $r7=var910, $r8=var1276, $r9=var3447, $r10=var535, $r11=var657}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.JarFileIterator;	r16 = null;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.JarFileIterator: java.util.zip.ZipInputStream jarStream>;	$r5 := @caughtexception;	r19 = virtualinvoke $r5.<java.io.IOException: java.lang.String getMessage()>();	$r6 = virtualinvoke $r5.<java.lang.Object: java.lang.Class getClass()>();	r20 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	if r19 == null goto $r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem reading JAR file: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 3