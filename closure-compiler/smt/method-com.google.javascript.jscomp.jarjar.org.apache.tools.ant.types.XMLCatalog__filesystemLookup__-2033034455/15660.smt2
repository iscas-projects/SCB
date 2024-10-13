(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1769 0)
(declare-sort var2265 0)
(declare-sort var3351 0)
(declare-sort var3859 0)
(declare-sort var2298 0)
(declare-sort var3726 0)
(declare-sort var481 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLocation/-318485780 (var2265) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun getBase/1724071523 (var2265) var3859)
(declare-fun var481-init () var481)
(declare-fun <init>/1864341934 (var481 String) void)
(declare-const null-var1769 var1769)
(declare-const null-var2265 var2265)
(declare-const var3351-separatorChar Int)
(declare-const null-var3859 var3859)
(declare-const var1769-FILE_UTILS var2298)
(declare-const null-var3726 var3726)
(declare-const var3384 var1769) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.XMLCatalog 
(assert (not (= var3384 null-var1769)))
(declare-const var625 var2265) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceLocation 
(assert (not (= var625 null-var2265)))
(assert true)
(define-const var1014 String (getLocation/-318485780 var625)) ; Statement: r48 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceLocation: java.lang.String getLocation()>() 
(define-const var590 Int var3351-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var788 String (replace/1524665721 var1014 var590 47)) ; Statement: r49 = virtualinvoke r48.<java.lang.String: java.lang.String replace(char,char)>($c0, 47) 
(assert true)
(define-const var2160 var3859 (getBase/1724071523 var625)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceLocation: java.net.URL getBase()>() 
 ; Statement: if $r1 == null goto $r3 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.XMLCatalog: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS> 
(assert (= var2160 null-var3859)) ; Cond: $r1 == null 
(define-const var1913 var2298 var1769-FILE_UTILS) ; Statement: $r3 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.XMLCatalog: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1533 var3726) ; Statement: $r46 := @caughtexception 
(assert (not (= var1533 null-var3726)))
(define-const var2734 var481 var481-init) ; Statement: $r47 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var2734 "Project basedir cannot be converted to a URL")) ; Statement: specialinvoke $r47.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("Project basedir cannot be converted to a URL") 

(declare-const var2734!1 var481)
(declare-const var2533 String)
 ; Statement: throw $r47 
(check-sat)
(get-model)
(get-unsat-core)
; {getLocation/-318485780=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceLocation], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), getBase/1724071523=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceLocation], java.net.URL), var481-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1769=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.XMLCatalog, var3384=r2, var2265=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceLocation, var625=r0, var1014=r48, var3351=java.io.File, var590=$c0, var788=r49, var3859=java.net.URL, var2160=$r1, var2298=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var1913=$r3, var3726=java.net.MalformedURLException, var1533=$r46, var481=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2734=$r47, var2533="Project basedir cannot be converted to a URL"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.XMLCatalog=var1769, r2=var3384, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceLocation=var2265, r0=var625, r48=var1014, java.io.File=var3351, $c0=var590, r49=var788, java.net.URL=var3859, $r1=var2160, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var2298, $r3=var1913, java.net.MalformedURLException=var3726, $r46=var1533, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var481, $r47=var2734, "Project basedir cannot be converted to a URL"=var2533}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.XMLCatalog;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceLocation;	r48 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceLocation: java.lang.String getLocation()>();	$c0 = <java.io.File: char separatorChar>;	r49 = virtualinvoke r48.<java.lang.String: java.lang.String replace(char,char)>($c0, 47);	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceLocation: java.net.URL getBase()>();	if $r1 == null goto $r3 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.XMLCatalog: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS>;	$r3 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.XMLCatalog: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS>;	$r46 := @caughtexception;	$r47 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r47.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("Project basedir cannot be converted to a URL");	throw $r47
;block_num 3