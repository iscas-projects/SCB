(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1822 0)
(declare-sort var430 0)
(declare-sort var289 0)
(declare-sort var2070 0)
(declare-sort var428 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun conn/-1791200080 (var1822) var430)
(declare-fun cast-from-var430-to-var289 (var430) var289)
(declare-fun getJarFileURL/-1631396188 (var289) var2070)
(declare-fun getProtocol/70454678 (var2070) String)
(declare-fun var428-init () var428)
(declare-fun getFile/10099890 (var2070) String)
(declare-fun <init>/-1681595970 (var428 String) void)
(declare-fun lastModified/415300308 (var428) Int)
(declare-const null-var1822 var1822)
(declare-const var937 var1822) ; Statement: r0 := @this: freemarker.cache.URLTemplateSource 
(assert (not (= var937 null-var1822)))
(define-const var914 var430 (conn/-1791200080 var937)) ; Statement: $r1 = r0.<freemarker.cache.URLTemplateSource: java.net.URLConnection conn> 
(define-const var390 Bool false) ; Statement: $z0 = $r1 instanceof java.net.JarURLConnection 
 ; Statement: if $z0 == 0 goto $r2 = r0.<freemarker.cache.URLTemplateSource: java.net.URLConnection conn> 
(assert (not (= (ite var390 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2138 var430 (conn/-1791200080 var937)) ; Statement: $r8 = r0.<freemarker.cache.URLTemplateSource: java.net.URLConnection conn> 
(define-const var2938 var289 (cast-from-var430-to-var289 var2138)) ; Statement: $r9 = (java.net.JarURLConnection) $r8 
(assert true)
(define-const var3035 var2070 (getJarFileURL/-1631396188 var2938)) ; Statement: r21 = virtualinvoke $r9.<java.net.JarURLConnection: java.net.URL getJarFileURL()>() 
(assert true)
(define-const var712 String (getProtocol/70454678 var3035)) ; Statement: $r10 = virtualinvoke r21.<java.net.URL: java.lang.String getProtocol()>() 
(assert true)
(define-const var3722 Bool (= var712 "file")) ; Statement: $z2 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("file") 
 ; Statement: if $z2 == 0 goto r22 = null 
(assert (not (= (ite var3722 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3194 var428 var428-init) ; Statement: $r12 = new java.io.File 
(assert true)
(define-const var1602 String (getFile/10099890 var3035)) ; Statement: $r13 = virtualinvoke r21.<java.net.URL: java.lang.String getFile()>() 
(assert true)
;(assert (<init>/-1681595970 var3194 var1602)) ; Statement: specialinvoke $r12.<java.io.File: void <init>(java.lang.String)>($r13) 

(declare-const var3194!1 var428)
(declare-const var1602!1 String)
(assert true)
(define-const var467 Int (lastModified/415300308 var3194!1)) ; Statement: $l2 = virtualinvoke $r12.<java.io.File: long lastModified()>() 
 ; Statement: return $l2 
(check-sat)
(get-model)
(get-unsat-core)
; {conn/-1791200080=([freemarker.cache.URLTemplateSource], java.net.URLConnection), cast-from-var430-to-var289=([java.net.URLConnection], java.net.JarURLConnection), getJarFileURL/-1631396188=([java.net.JarURLConnection], java.net.URL), getProtocol/70454678=([java.net.URL], java.lang.String), var428-init=([], java.io.File), getFile/10099890=([java.net.URL], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), lastModified/415300308=([java.io.File], long)}
; {var1822=freemarker.cache.URLTemplateSource, var937=r0, var430=java.net.URLConnection, var914=$r1, var390=$z0, var2138=$r8, var289=java.net.JarURLConnection, var2938=$r9, var2070=java.net.URL, var3035=r21, var712=$r10, var3722=$z2, var428=java.io.File, var3194=$r12, var1602=$r13, var467=$l2}
; {freemarker.cache.URLTemplateSource=var1822, r0=var937, java.net.URLConnection=var430, $r1=var914, $z0=var390, $r8=var2138, java.net.JarURLConnection=var289, $r9=var2938, java.net.URL=var2070, r21=var3035, $r10=var712, $z2=var3722, java.io.File=var428, $r12=var3194, $r13=var1602, $l2=var467}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: freemarker.cache.URLTemplateSource;	$r1 = r0.<freemarker.cache.URLTemplateSource: java.net.URLConnection conn>;	$z0 = $r1 instanceof java.net.JarURLConnection;	if $z0 == 0 goto $r2 = r0.<freemarker.cache.URLTemplateSource: java.net.URLConnection conn>;	$r8 = r0.<freemarker.cache.URLTemplateSource: java.net.URLConnection conn>;	$r9 = (java.net.JarURLConnection) $r8;	r21 = virtualinvoke $r9.<java.net.JarURLConnection: java.net.URL getJarFileURL()>();	$r10 = virtualinvoke r21.<java.net.URL: java.lang.String getProtocol()>();	$z2 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>("file");	if $z2 == 0 goto r22 = null;	$r12 = new java.io.File;	$r13 = virtualinvoke r21.<java.net.URL: java.lang.String getFile()>();	specialinvoke $r12.<java.io.File: void <init>(java.lang.String)>($r13);	$l2 = virtualinvoke $r12.<java.io.File: long lastModified()>();	return $l2
;block_num 3