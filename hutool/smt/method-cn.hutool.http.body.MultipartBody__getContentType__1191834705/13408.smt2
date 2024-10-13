(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3294 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun boundary/1143148354 (var3294) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3294 var3294)
(declare-const var3294-CONTENT_TYPE_MULTIPART_PREFIX String)
(declare-const var874 var3294) ; Statement: r2 := @this: cn.hutool.http.body.MultipartBody 
(assert (not (= var874 null-var3294)))
(define-const var2860 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2860)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2860!1 String)
(assert (= var2860!1 ""))
(define-const var1981 String var3294-CONTENT_TYPE_MULTIPART_PREFIX) ; Statement: $r1 = <cn.hutool.http.body.MultipartBody: java.lang.String CONTENT_TYPE_MULTIPART_PREFIX> 
(assert true)
(define-const var1607 String (append/672562846 var2860!1 var1981)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var2860!2 String)
(assert (= var2860!2 (str.++ var2860!1 var1981)))
(define-const var1678 String (boundary/1143148354 var874)) ; Statement: $r3 = r2.<cn.hutool.http.body.MultipartBody: java.lang.String boundary> 
(assert true)
(define-const var3404 String (append/672562846 var1607 var1678)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1607!1 String)
(assert (= var1607!1 (str.++ var1607 var1678)))
(assert true)
(define-const var3863 String (toString/-2075883882 var3404)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), boundary/1143148354=([cn.hutool.http.body.MultipartBody], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3294=cn.hutool.http.body.MultipartBody, var874=r2, var2860=$r0, var1981=$r1, var1607=$r4, var1678=$r3, var3404=$r5, var3863=$r6}
; {cn.hutool.http.body.MultipartBody=var3294, r2=var874, $r0=var2860, $r1=var1981, $r4=var1607, $r3=var1678, $r5=var3404, $r6=var3863}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: cn.hutool.http.body.MultipartBody;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = <cn.hutool.http.body.MultipartBody: java.lang.String CONTENT_TYPE_MULTIPART_PREFIX>;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r3 = r2.<cn.hutool.http.body.MultipartBody: java.lang.String boundary>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1