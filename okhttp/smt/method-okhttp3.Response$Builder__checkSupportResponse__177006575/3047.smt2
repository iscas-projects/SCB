(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2566 0)
(declare-sort var2425 0)
(declare-sort var3059 0)
(declare-sort var600 0)
(declare-sort var2211 0)
(declare-sort var1719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun body/651193791 (var3059) var600)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2211-init () var2211)
(declare-fun toString/-522406933 (var1719) String)
(declare-fun cast-from-String-to-var1719 (String) var1719)
(declare-fun <init>/875830710 (var2211 String) void)
(declare-const null-var2566 var2566)
(declare-const null-String String)
(declare-const null-var3059 var3059)
(declare-const null-var600 var600)
(declare-const var1280 var2566) ; Statement: r26 := @this: okhttp3.Response$Builder 
(assert (not (= var1280 null-var2566)))
(declare-const var3391 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3391 null-String)))
(declare-const var2204 var3059) ; Statement: r0 := @parameter1: okhttp3.Response 
(assert (not (= var2204 null-var3059)))
 ; Statement: if r0 == null goto return 
(assert (not (= var2204 null-var3059))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var775 var600 (body/651193791 var2204)) ; Statement: $r1 = virtualinvoke r0.<okhttp3.Response: okhttp3.ResponseBody body()>() 
 ; Statement: if $r1 != null goto $z0 = 0 
(assert (not (not (= var775 null-var600)))) ; Negate: Cond: $r1 != null  
(define-const var1536 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r0.<okhttp3.Response: okhttp3.Response networkResponse()>() 
(assert (not (not (= (ite var1536 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1325 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1325)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1325!1 String)
(assert (= var1325!1 ""))
(assert true)
(define-const var1547 String (append/672562846 var1325!1 var3391)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1325!2 String)
(assert (= var1325!2 (str.++ var1325!1 var3391)))
(assert true)
(define-const var858 String (append/672562846 var1547 ".body != null")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".body != null") 
(declare-const var1547!1 String)
(assert (= var1547!1 (str.++ var1547 ".body != null")))
(assert true)
(define-const var3914 String (toString/-2075883882 var858)) ; Statement: $r27 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3517 var2211 var2211-init) ; Statement: $r24 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var2278 String (toString/-522406933 (cast-from-String-to-var1719 var3914))) ; Statement: $r25 = virtualinvoke $r27.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3517 var2278)) ; Statement: specialinvoke $r24.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r25) 

(declare-const var3517!1 var2211)
(declare-const var2278!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {body/651193791=([okhttp3.Response], okhttp3.ResponseBody), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2211-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var1719=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2566=okhttp3.Response$Builder, var1280=r26, var3391=r6, var2425=null_type, var3059=okhttp3.Response, var2204=r0, var600=okhttp3.ResponseBody, var775=$r1, var1536=$z0, var1325=$r21, var1547=$r22, var858=$r23, var3914=$r27, var2211=java.lang.IllegalArgumentException, var3517=$r24, var1719=java.lang.Object, var2278=$r25}
; {okhttp3.Response$Builder=var2566, r26=var1280, r6=var3391, null_type=var2425, okhttp3.Response=var3059, r0=var2204, okhttp3.ResponseBody=var600, $r1=var775, $z0=var1536, $r21=var1325, $r22=var1547, $r23=var858, $r27=var3914, java.lang.IllegalArgumentException=var2211, $r24=var3517, java.lang.Object=var1719, $r25=var2278}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r26 := @this: okhttp3.Response$Builder;	r6 := @parameter0: java.lang.String;	r0 := @parameter1: okhttp3.Response;	if r0 == null goto return;	$r1 = virtualinvoke r0.<okhttp3.Response: okhttp3.ResponseBody body()>();	if $r1 != null goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto $r2 = virtualinvoke r0.<okhttp3.Response: okhttp3.Response networkResponse()>();	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".body != null");	$r27 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = new java.lang.IllegalArgumentException;	$r25 = virtualinvoke $r27.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r24.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r25);	throw $r24
;block_num 5