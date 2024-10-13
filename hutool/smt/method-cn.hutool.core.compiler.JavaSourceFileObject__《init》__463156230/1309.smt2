(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3403 0)
(declare-sort var2158 0)
(declare-sort var118 0)
(declare-sort var569 0)
(declare-sort var3917 0)
(declare-sort var3291 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun extension/1284371024 (var569) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3291_getStringURI/-893726806 (String) var3917)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun <init>/-365117650 (var3403 var3917) void)
(declare-fun inputStream/1910753598 (var3403) var118)
(declare-const null-var3403 var3403)
(declare-const null-String String)
(declare-const null-var118 var118)
(declare-const var569-SOURCE var569)
(declare-const var1207 var3403) ; Statement: r0 := @this: cn.hutool.core.compiler.JavaSourceFileObject 
(assert (not (= var1207 null-var3403)))
(declare-const var458 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var458 null-String)))
(declare-const var746 var118) ; Statement: r10 := @parameter1: java.io.InputStream 
(assert (not (= var746 null-var118)))
(define-const var2635 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2635)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2635!1 String)
(assert (= var2635!1 ""))
(assert true)
(define-const var872 String (replace/1524665721 var458 46 47)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var2871 String (append/672562846 var2635!1 var872)) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2635!2 String)
(assert (= var2635!2 (str.++ var2635!1 var872)))
(define-const var2042 var569 var569-SOURCE) ; Statement: $r4 = <javax.tools.JavaFileObject$Kind: javax.tools.JavaFileObject$Kind SOURCE> 
(define-const var3524 String (extension/1284371024 var2042)) ; Statement: $r5 = $r4.<javax.tools.JavaFileObject$Kind: java.lang.String extension> 
(assert true)
(define-const var1574 String (append/672562846 var2871 var3524)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2871!1 String)
(assert (= var2871!1 (str.++ var2871 var3524)))
(assert true)
(define-const var1278 String (toString/-2075883882 var1574)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3107 var3917 (var3291_getStringURI/-893726806 (cast-from-String-to-String var1278))) ; Statement: $r9 = staticinvoke <cn.hutool.core.util.URLUtil: java.net.URI getStringURI(java.lang.CharSequence)>($r8) 
(assert true)
;(assert (<init>/-365117650 var1207 var3107)) ; Statement: specialinvoke r0.<cn.hutool.core.compiler.JavaSourceFileObject: void <init>(java.net.URI)>($r9) 

(declare-const var1207!1 var3403)
(declare-const var3107!1 var3917)
(declare-const var1207!2 var3403)
(assert (not (= var1207!2 null-var3403)))
(assert (= (inputStream/1910753598 var1207!2) var746)) ; Statement: r0.<cn.hutool.core.compiler.JavaSourceFileObject: java.io.InputStream inputStream> = r10 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), extension/1284371024=([javax.tools.JavaFileObject$Kind], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3291_getStringURI/-893726806=([java.lang.CharSequence], java.net.URI), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), <init>/-365117650=([cn.hutool.core.compiler.JavaSourceFileObject, java.net.URI], void), inputStream/1910753598=([cn.hutool.core.compiler.JavaSourceFileObject], java.io.InputStream)}
; {var3403=cn.hutool.core.compiler.JavaSourceFileObject, var1207=r0, var458=r2, var2158=null_type, var118=java.io.InputStream, var746=r10, var2635=$r1, var872=$r3, var2871=$r6, var569=javax.tools.JavaFileObject$Kind, var2042=$r4, var3524=$r5, var1574=$r7, var1278=$r8, var3917=java.net.URI, var3291=cn.hutool.core.util.URLUtil, var3107=$r9}
; {cn.hutool.core.compiler.JavaSourceFileObject=var3403, r0=var1207, r2=var458, null_type=var2158, java.io.InputStream=var118, r10=var746, $r1=var2635, $r3=var872, $r6=var2871, javax.tools.JavaFileObject$Kind=var569, $r4=var2042, $r5=var3524, $r7=var1574, $r8=var1278, java.net.URI=var3917, cn.hutool.core.util.URLUtil=var3291, $r9=var3107}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.compiler.JavaSourceFileObject;	r2 := @parameter0: java.lang.String;	r10 := @parameter1: java.io.InputStream;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = <javax.tools.JavaFileObject$Kind: javax.tools.JavaFileObject$Kind SOURCE>;	$r5 = $r4.<javax.tools.JavaFileObject$Kind: java.lang.String extension>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = staticinvoke <cn.hutool.core.util.URLUtil: java.net.URI getStringURI(java.lang.CharSequence)>($r8);	specialinvoke r0.<cn.hutool.core.compiler.JavaSourceFileObject: void <init>(java.net.URI)>($r9);	r0.<cn.hutool.core.compiler.JavaSourceFileObject: java.io.InputStream inputStream> = r10;	return
;block_num 1