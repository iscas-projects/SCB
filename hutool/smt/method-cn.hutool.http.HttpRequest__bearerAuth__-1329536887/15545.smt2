(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2949 0)
(declare-sort var1258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun auth/-961346262 (var2949 String) var2949)
(declare-const null-var2949 var2949)
(declare-const null-String String)
(declare-const var2711 var2949) ; Statement: r0 := @this: cn.hutool.http.HttpRequest 
(assert (not (= var2711 null-var2949)))
(declare-const var442 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var442 null-String)))
(define-const var43 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var43)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var43!1 String)
(assert (= var43!1 ""))
(assert true)
(define-const var3105 String (append/672562846 var43!1 "Bearer ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bearer ") 
(declare-const var43!2 String)
(assert (= var43!2 (str.++ var43!1 "Bearer ")))
(assert true)
(define-const var3625 String (append/672562846 var3105 var442)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3105!1 String)
(assert (= var3105!1 (str.++ var3105 var442)))
(assert true)
(define-const var1853 String (toString/-2075883882 var3625)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1564 var2949 (auth/-961346262 var2711 var1853)) ; Statement: $r6 = virtualinvoke r0.<cn.hutool.http.HttpRequest: cn.hutool.http.HttpRequest auth(java.lang.String)>($r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), auth/-961346262=([cn.hutool.http.HttpRequest, java.lang.String], cn.hutool.http.HttpRequest)}
; {var2949=cn.hutool.http.HttpRequest, var2711=r0, var442=r2, var1258=null_type, var43=$r1, var3105=$r3, var3625=$r4, var1853=$r5, var1564=$r6}
; {cn.hutool.http.HttpRequest=var2949, r0=var2711, r2=var442, null_type=var1258, $r1=var43, $r3=var3105, $r4=var3625, $r5=var1853, $r6=var1564}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.http.HttpRequest;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bearer ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r0.<cn.hutool.http.HttpRequest: cn.hutool.http.HttpRequest auth(java.lang.String)>($r5);	return $r6
;block_num 1