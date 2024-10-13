(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun isCanceled/77256038 (var3596) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun forWebSocket/1819657946 (var3596) Bool)
(declare-fun redactedUrl$okhttp/584270565 (var3596) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3596 var3596)
(declare-const var3680 var3596) ; Statement: r1 := @this: okhttp3.internal.connection.RealCall 
(assert (not (= var3680 null-var3596)))
(define-const var2053 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2053)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2053!1 String)
(assert (= var2053!1 ""))
(assert true)
(define-const var2326 Bool (isCanceled/77256038 var3680)) ; Statement: $z0 = virtualinvoke r1.<okhttp3.internal.connection.RealCall: boolean isCanceled()>() 
 ; Statement: if $z0 == 0 goto $r8 = "" 
(assert (= (ite var2326 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1915 String "") ; Statement: $r8 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var1255 String (append/672562846 var2053!1 var1915)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2053!2 String)
(assert (= var2053!2 (str.++ var2053!1 var1915)))
(define-const var2879 Bool (forWebSocket/1819657946 var3680)) ; Statement: $z1 = r1.<okhttp3.internal.connection.RealCall: boolean forWebSocket> 
 ; Statement: if $z1 == 0 goto $r9 = "call" 
(assert (= (ite var2879 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3073 String "call") ; Statement: $r9 = "call" 
(assert true) ; Non Conditional
(assert true)
(define-const var2658 String (append/672562846 var1255 var3073)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1255!1 String)
(assert (= var1255!1 (str.++ var1255 var3073)))
(assert true)
(define-const var3683 String (append/672562846 var2658 " to ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var2658!1 String)
(assert (= var2658!1 (str.++ var2658 " to ")))
(assert true)
(define-const var2582 String (redactedUrl$okhttp/584270565 var3680)) ; Statement: $r4 = virtualinvoke r1.<okhttp3.internal.connection.RealCall: java.lang.String redactedUrl$okhttp()>() 
(assert true)
(define-const var3938 String (append/672562846 var3683 var2582)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3683!1 String)
(assert (= var3683!1 (str.++ var3683 var2582)))
(assert true)
(define-const var3888 String (toString/-2075883882 var3938)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), isCanceled/77256038=([okhttp3.internal.connection.RealCall], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), forWebSocket/1819657946=([okhttp3.internal.connection.RealCall], boolean), redactedUrl$okhttp/584270565=([okhttp3.internal.connection.RealCall], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3596=okhttp3.internal.connection.RealCall, var3680=r1, var2053=$r0, var2326=$z0, var1915=$r8, var1255=$r2, var2879=$z1, var3073=$r9, var2658=$r3, var3683=$r5, var2582=$r4, var3938=$r6, var3888=$r7}
; {okhttp3.internal.connection.RealCall=var3596, r1=var3680, $r0=var2053, $z0=var2326, $r8=var1915, $r2=var1255, $z1=var2879, $r9=var3073, $r3=var2658, $r5=var3683, $r4=var2582, $r6=var3938, $r7=var3888}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.connection.RealCall;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = virtualinvoke r1.<okhttp3.internal.connection.RealCall: boolean isCanceled()>();	if $z0 == 0 goto $r8 = "";	$r8 = "";	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$z1 = r1.<okhttp3.internal.connection.RealCall: boolean forWebSocket>;	if $z1 == 0 goto $r9 = "call";	$r9 = "call";	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r4 = virtualinvoke r1.<okhttp3.internal.connection.RealCall: java.lang.String redactedUrl$okhttp()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 5