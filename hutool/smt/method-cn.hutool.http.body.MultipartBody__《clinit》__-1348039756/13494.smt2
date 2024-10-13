(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getValue/1474075804 (var1865) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const var1865-MULTIPART var1865)
(define-const var92 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var92)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var92!1 String)
(assert (= var92!1 ""))
(define-const var2977 var1865 var1865-MULTIPART) ; Statement: $r1 = <cn.hutool.http.ContentType: cn.hutool.http.ContentType MULTIPART> 
(assert true)
(define-const var3799 String (getValue/1474075804 var2977)) ; Statement: $r2 = virtualinvoke $r1.<cn.hutool.http.ContentType: java.lang.String getValue()>() 
(assert true)
(define-const var2412 String (append/672562846 var92!1 var3799)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var92!2 String)
(assert (= var92!2 (str.++ var92!1 var3799)))
(assert true)
(define-const var3421 String (append/672562846 var2412 "; boundary=")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; boundary=") 
(declare-const var2412!1 String)
(assert (= var2412!1 (str.++ var2412 "; boundary=")))
(assert true)
(define-const var3078 String (toString/-2075883882 var3421)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var99 String var3078) ; Statement: <cn.hutool.http.body.MultipartBody: java.lang.String CONTENT_TYPE_MULTIPART_PREFIX> = $r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getValue/1474075804=([cn.hutool.http.ContentType], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var92=$r0, var1865=cn.hutool.http.ContentType, var2977=$r1, var3799=$r2, var2412=$r3, var3421=$r4, var3078=$r5, var99=<cn.hutool.http.body.MultipartBody: java.lang.String CONTENT_TYPE_MULTIPART_PREFIX>}
; {$r0=var92, cn.hutool.http.ContentType=var1865, $r1=var2977, $r2=var3799, $r3=var2412, $r4=var3421, $r5=var3078, <cn.hutool.http.body.MultipartBody: java.lang.String CONTENT_TYPE_MULTIPART_PREFIX>=var99}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = <cn.hutool.http.ContentType: cn.hutool.http.ContentType MULTIPART>;	$r2 = virtualinvoke $r1.<cn.hutool.http.ContentType: java.lang.String getValue()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; boundary=");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	<cn.hutool.http.body.MultipartBody: java.lang.String CONTENT_TYPE_MULTIPART_PREFIX> = $r5;	return
;block_num 1