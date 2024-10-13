(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var131 0)
(declare-sort var2014 0)
(declare-sort var2998 0)
(declare-sort var375 0)
(declare-sort var1962 0)
(declare-sort var1298 0)
(declare-sort var3756 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun extension/1284371024 (var2998) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1962_getStringURI/-893726806 (String) var375)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun <init>/63402030 (var1298 var375 var2998) void)
(declare-fun cast-from-var131-to-var1298 (var131) var1298)
(declare-fun var3756-init () var3756)
(declare-fun <init>/-707998177 (var3756) void)
(declare-fun byteArrayOutputStream/-12691573 (var131) var3756)
(declare-const null-var131 var131)
(declare-const null-String String)
(declare-const var2998-CLASS var2998)
(declare-const var2294 var131) ; Statement: r0 := @this: cn.hutool.core.compiler.JavaClassFileObject 
(assert (not (= var2294 null-var131)))
(declare-const var3830 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3830 null-String)))
(define-const var3610 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3610)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3610!1 String)
(assert (= var3610!1 ""))
(assert true)
(define-const var250 String (replace/1524665721 var3830 46 47)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var226 String (append/672562846 var3610!1 var250)) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3610!2 String)
(assert (= var3610!2 (str.++ var3610!1 var250)))
(define-const var1853 var2998 var2998-CLASS) ; Statement: $r4 = <javax.tools.JavaFileObject$Kind: javax.tools.JavaFileObject$Kind CLASS> 
(define-const var1196 String (extension/1284371024 var1853)) ; Statement: $r5 = $r4.<javax.tools.JavaFileObject$Kind: java.lang.String extension> 
(assert true)
(define-const var2010 String (append/672562846 var226 var1196)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var226!1 String)
(assert (= var226!1 (str.++ var226 var1196)))
(assert true)
(define-const var3021 String (toString/-2075883882 var2010)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3153 var375 (var1962_getStringURI/-893726806 (cast-from-String-to-String var3021))) ; Statement: $r10 = staticinvoke <cn.hutool.core.util.URLUtil: java.net.URI getStringURI(java.lang.CharSequence)>($r8) 
(define-const var2945 var2998 var2998-CLASS) ; Statement: $r9 = <javax.tools.JavaFileObject$Kind: javax.tools.JavaFileObject$Kind CLASS> 
(assert true)
;(assert (<init>/63402030 (cast-from-var131-to-var1298 var2294) var3153 var2945)) ; Statement: specialinvoke r0.<javax.tools.SimpleJavaFileObject: void <init>(java.net.URI,javax.tools.JavaFileObject$Kind)>($r10, $r9) 

(declare-const var2294!1 var131)
(declare-const var3153!1 var375)
(declare-const var2945!1 var2998)
(define-const var2191 var3756 var3756-init) ; Statement: $r11 = new java.io.ByteArrayOutputStream 
(assert true)
;(assert (<init>/-707998177 var2191)) ; Statement: specialinvoke $r11.<java.io.ByteArrayOutputStream: void <init>()>() 

(declare-const var2191!1 var3756)
(declare-const var2294!2 var131)
(assert (not (= var2294!2 null-var131)))
(assert (= (byteArrayOutputStream/-12691573 var2294!2) var2191!1)) ; Statement: r0.<cn.hutool.core.compiler.JavaClassFileObject: java.io.ByteArrayOutputStream byteArrayOutputStream> = $r11 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), extension/1284371024=([javax.tools.JavaFileObject$Kind], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1962_getStringURI/-893726806=([java.lang.CharSequence], java.net.URI), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), <init>/63402030=([javax.tools.SimpleJavaFileObject, java.net.URI, javax.tools.JavaFileObject$Kind], void), cast-from-var131-to-var1298=([cn.hutool.core.compiler.JavaClassFileObject], javax.tools.SimpleJavaFileObject), var3756-init=([], java.io.ByteArrayOutputStream), <init>/-707998177=([java.io.ByteArrayOutputStream], void), byteArrayOutputStream/-12691573=([cn.hutool.core.compiler.JavaClassFileObject], java.io.ByteArrayOutputStream)}
; {var131=cn.hutool.core.compiler.JavaClassFileObject, var2294=r0, var3830=r2, var2014=null_type, var3610=$r1, var250=$r3, var226=$r6, var2998=javax.tools.JavaFileObject$Kind, var1853=$r4, var1196=$r5, var2010=$r7, var3021=$r8, var375=java.net.URI, var1962=cn.hutool.core.util.URLUtil, var3153=$r10, var2945=$r9, var1298=javax.tools.SimpleJavaFileObject, var3756=java.io.ByteArrayOutputStream, var2191=$r11}
; {cn.hutool.core.compiler.JavaClassFileObject=var131, r0=var2294, r2=var3830, null_type=var2014, $r1=var3610, $r3=var250, $r6=var226, javax.tools.JavaFileObject$Kind=var2998, $r4=var1853, $r5=var1196, $r7=var2010, $r8=var3021, java.net.URI=var375, cn.hutool.core.util.URLUtil=var1962, $r10=var3153, $r9=var2945, javax.tools.SimpleJavaFileObject=var1298, java.io.ByteArrayOutputStream=var3756, $r11=var2191}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.compiler.JavaClassFileObject;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = <javax.tools.JavaFileObject$Kind: javax.tools.JavaFileObject$Kind CLASS>;	$r5 = $r4.<javax.tools.JavaFileObject$Kind: java.lang.String extension>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = staticinvoke <cn.hutool.core.util.URLUtil: java.net.URI getStringURI(java.lang.CharSequence)>($r8);	$r9 = <javax.tools.JavaFileObject$Kind: javax.tools.JavaFileObject$Kind CLASS>;	specialinvoke r0.<javax.tools.SimpleJavaFileObject: void <init>(java.net.URI,javax.tools.JavaFileObject$Kind)>($r10, $r9);	$r11 = new java.io.ByteArrayOutputStream;	specialinvoke $r11.<java.io.ByteArrayOutputStream: void <init>()>();	r0.<cn.hutool.core.compiler.JavaClassFileObject: java.io.ByteArrayOutputStream byteArrayOutputStream> = $r11;	return
;block_num 1