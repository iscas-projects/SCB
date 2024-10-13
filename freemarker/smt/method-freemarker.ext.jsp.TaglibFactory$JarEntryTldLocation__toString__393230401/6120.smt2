(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1013 0)
(declare-sort var1109 0)
(declare-sort var31 0)
(declare-sort var3883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entryUrl/618432105 (var1013) var1109)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fallbackRawJarContentInputStreamFactory/618432105 (var1013) var31)
(declare-fun append/-1031950772 (String var3883) String)
(declare-fun cast-from-var31-to-var3883 (var31) var3883)
(declare-fun entryPath/618432105 (var1013) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1013 var1013)
(declare-const null-var1109 var1109)
(declare-const var654 var1013) ; Statement: r0 := @this: freemarker.ext.jsp.TaglibFactory$JarEntryTldLocation 
(assert (not (= var654 null-var1013)))
(define-const var2171 var1109 (entryUrl/618432105 var654)) ; Statement: $r1 = r0.<freemarker.ext.jsp.TaglibFactory$JarEntryTldLocation: java.net.URL entryUrl> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var2171 null-var1109)) ; Cond: $r1 == null 
(define-const var1003 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1003)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1003!1 String)
(assert (= var1003!1 ""))
(assert true)
(define-const var496 String (append/672562846 var1003!1 "jar:{")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jar:{") 
(declare-const var1003!2 String)
(assert (= var1003!2 (str.++ var1003!1 "jar:{")))
(define-const var2215 var31 (fallbackRawJarContentInputStreamFactory/618432105 var654)) ; Statement: $r3 = r0.<freemarker.ext.jsp.TaglibFactory$JarEntryTldLocation: freemarker.ext.jsp.TaglibFactory$InputStreamFactory fallbackRawJarContentInputStreamFactory> 
(assert true)
(define-const var2884 String (append/-1031950772 var496 (cast-from-var31-to-var3883 var2215))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var496!1 String)
(assert (str.prefixof var496 var496!1))
(assert true)
(define-const var2984 String (append/672562846 var2884 "}!")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}!") 
(declare-const var2884!1 String)
(assert (= var2884!1 (str.++ var2884 "}!")))
(define-const var2041 String (entryPath/618432105 var654)) ; Statement: $r6 = r0.<freemarker.ext.jsp.TaglibFactory$JarEntryTldLocation: java.lang.String entryPath> 
(assert true)
(define-const var381 String (append/672562846 var2984 var2041)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2984!1 String)
(assert (= var2984!1 (str.++ var2984 var2041)))
(assert true)
(define-const var3103 String (toString/-2075883882 var381)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {entryUrl/618432105=([freemarker.ext.jsp.TaglibFactory$JarEntryTldLocation], java.net.URL), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fallbackRawJarContentInputStreamFactory/618432105=([freemarker.ext.jsp.TaglibFactory$JarEntryTldLocation], freemarker.ext.jsp.TaglibFactory$InputStreamFactory), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var31-to-var3883=([freemarker.ext.jsp.TaglibFactory$InputStreamFactory], java.lang.Object), entryPath/618432105=([freemarker.ext.jsp.TaglibFactory$JarEntryTldLocation], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1013=freemarker.ext.jsp.TaglibFactory$JarEntryTldLocation, var654=r0, var1109=java.net.URL, var2171=$r1, var1003=$r2, var496=$r4, var31=freemarker.ext.jsp.TaglibFactory$InputStreamFactory, var2215=$r3, var3883=java.lang.Object, var2884=$r5, var2984=$r7, var2041=$r6, var381=$r8, var3103=$r10}
; {freemarker.ext.jsp.TaglibFactory$JarEntryTldLocation=var1013, r0=var654, java.net.URL=var1109, $r1=var2171, $r2=var1003, $r4=var496, freemarker.ext.jsp.TaglibFactory$InputStreamFactory=var31, $r3=var2215, java.lang.Object=var3883, $r5=var2884, $r7=var2984, $r6=var2041, $r8=var381, $r10=var3103}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.jsp.TaglibFactory$JarEntryTldLocation;	$r1 = r0.<freemarker.ext.jsp.TaglibFactory$JarEntryTldLocation: java.net.URL entryUrl>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jar:{");	$r3 = r0.<freemarker.ext.jsp.TaglibFactory$JarEntryTldLocation: freemarker.ext.jsp.TaglibFactory$InputStreamFactory fallbackRawJarContentInputStreamFactory>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}!");	$r6 = r0.<freemarker.ext.jsp.TaglibFactory$JarEntryTldLocation: java.lang.String entryPath>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3