(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var409 0)
(declare-sort var7 0)
(declare-sort var3587 0)
(declare-sort var1569 0)
(declare-sort var3297 0)
(declare-sort var3200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun body/651193791 (var3587) var1569)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3297-init () var3297)
(declare-fun toString/-522406933 (var3200) String)
(declare-fun cast-from-String-to-var3200 (String) var3200)
(declare-fun <init>/875830710 (var3297 String) void)
(declare-const null-var409 var409)
(declare-const null-String String)
(declare-const null-var3587 var3587)
(declare-const null-var1569 var1569)
(declare-const var514 var409) ; Statement: r26 := @this: okhttp3.Response$Builder 
(assert (not (= var514 null-var409)))
(declare-const var1266 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var1266 null-String)))
(declare-const var1872 var3587) ; Statement: r0 := @parameter1: okhttp3.Response 
(assert (not (= var1872 null-var3587)))
 ; Statement: if r0 == null goto return 
(assert (not (= var1872 null-var3587))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var500 var1569 (body/651193791 var1872)) ; Statement: $r1 = virtualinvoke r0.<okhttp3.Response: okhttp3.ResponseBody body()>() 
 ; Statement: if $r1 != null goto $z0 = 0 
(assert (not (= var500 null-var1569))) ; Cond: $r1 != null 
(define-const var459 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r0.<okhttp3.Response: okhttp3.Response networkResponse()>() 
(assert (not (not (= (ite var459 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2319 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2319)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2319!1 String)
(assert (= var2319!1 ""))
(assert true)
(define-const var2594 String (append/672562846 var2319!1 var1266)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var2319!2 String)
(assert (= var2319!2 (str.++ var2319!1 var1266)))
(assert true)
(define-const var689 String (append/672562846 var2594 ".body != null")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".body != null") 
(declare-const var2594!1 String)
(assert (= var2594!1 (str.++ var2594 ".body != null")))
(assert true)
(define-const var3804 String (toString/-2075883882 var689)) ; Statement: $r27 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var274 var3297 var3297-init) ; Statement: $r24 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var163 String (toString/-522406933 (cast-from-String-to-var3200 var3804))) ; Statement: $r25 = virtualinvoke $r27.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var274 var163)) ; Statement: specialinvoke $r24.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r25) 

(declare-const var274!1 var3297)
(declare-const var163!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {body/651193791=([okhttp3.Response], okhttp3.ResponseBody), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3297-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var3200=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var409=okhttp3.Response$Builder, var514=r26, var1266=r6, var7=null_type, var3587=okhttp3.Response, var1872=r0, var1569=okhttp3.ResponseBody, var500=$r1, var459=$z0, var2319=$r21, var2594=$r22, var689=$r23, var3804=$r27, var3297=java.lang.IllegalArgumentException, var274=$r24, var3200=java.lang.Object, var163=$r25}
; {okhttp3.Response$Builder=var409, r26=var514, r6=var1266, null_type=var7, okhttp3.Response=var3587, r0=var1872, okhttp3.ResponseBody=var1569, $r1=var500, $z0=var459, $r21=var2319, $r22=var2594, $r23=var689, $r27=var3804, java.lang.IllegalArgumentException=var3297, $r24=var274, java.lang.Object=var3200, $r25=var163}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r26 := @this: okhttp3.Response$Builder;	r6 := @parameter0: java.lang.String;	r0 := @parameter1: okhttp3.Response;	if r0 == null goto return;	$r1 = virtualinvoke r0.<okhttp3.Response: okhttp3.ResponseBody body()>();	if $r1 != null goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $r2 = virtualinvoke r0.<okhttp3.Response: okhttp3.Response networkResponse()>();	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".body != null");	$r27 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = new java.lang.IllegalArgumentException;	$r25 = virtualinvoke $r27.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r24.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r25);	throw $r24
;block_num 5