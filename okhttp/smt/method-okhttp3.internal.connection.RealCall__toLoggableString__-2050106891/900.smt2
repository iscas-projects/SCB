(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun isCanceled/77256038 (var1217) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun forWebSocket/1819657946 (var1217) Bool)
(declare-fun redactedUrl$okhttp/584270565 (var1217) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1217 var1217)
(declare-const var3213 var1217) ; Statement: r1 := @this: okhttp3.internal.connection.RealCall 
(assert (not (= var3213 null-var1217)))
(define-const var215 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var215)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var215!1 String)
(assert (= var215!1 ""))
(assert true)
(define-const var2811 Bool (isCanceled/77256038 var3213)) ; Statement: $z0 = virtualinvoke r1.<okhttp3.internal.connection.RealCall: boolean isCanceled()>() 
 ; Statement: if $z0 == 0 goto $r8 = "" 
(assert (not (= (ite var2811 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3674 String "canceled ") ; Statement: $r8 = "canceled " 
 ; Statement: goto [?= $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2250 String (append/672562846 var215!1 var3674)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var215!2 String)
(assert (= var215!2 (str.++ var215!1 var3674)))
(define-const var442 Bool (forWebSocket/1819657946 var3213)) ; Statement: $z1 = r1.<okhttp3.internal.connection.RealCall: boolean forWebSocket> 
 ; Statement: if $z1 == 0 goto $r9 = "call" 
(assert (not (= (ite var442 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3172 String "web socket") ; Statement: $r9 = "web socket" 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3751 String (append/672562846 var2250 var3172)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2250!1 String)
(assert (= var2250!1 (str.++ var2250 var3172)))
(assert true)
(define-const var252 String (append/672562846 var3751 " to ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var3751!1 String)
(assert (= var3751!1 (str.++ var3751 " to ")))
(assert true)
(define-const var3492 String (redactedUrl$okhttp/584270565 var3213)) ; Statement: $r4 = virtualinvoke r1.<okhttp3.internal.connection.RealCall: java.lang.String redactedUrl$okhttp()>() 
(assert true)
(define-const var421 String (append/672562846 var252 var3492)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var252!1 String)
(assert (= var252!1 (str.++ var252 var3492)))
(assert true)
(define-const var3644 String (toString/-2075883882 var421)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), isCanceled/77256038=([okhttp3.internal.connection.RealCall], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), forWebSocket/1819657946=([okhttp3.internal.connection.RealCall], boolean), redactedUrl$okhttp/584270565=([okhttp3.internal.connection.RealCall], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1217=okhttp3.internal.connection.RealCall, var3213=r1, var215=$r0, var2811=$z0, var3674=$r8, var2250=$r2, var442=$z1, var3172=$r9, var3751=$r3, var252=$r5, var3492=$r4, var421=$r6, var3644=$r7}
; {okhttp3.internal.connection.RealCall=var1217, r1=var3213, $r0=var215, $z0=var2811, $r8=var3674, $r2=var2250, $z1=var442, $r9=var3172, $r3=var3751, $r5=var252, $r4=var3492, $r6=var421, $r7=var3644}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.connection.RealCall;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = virtualinvoke r1.<okhttp3.internal.connection.RealCall: boolean isCanceled()>();	if $z0 == 0 goto $r8 = "";	$r8 = "canceled ";	goto [?= $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)];	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$z1 = r1.<okhttp3.internal.connection.RealCall: boolean forWebSocket>;	if $z1 == 0 goto $r9 = "call";	$r9 = "web socket";	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r4 = virtualinvoke r1.<okhttp3.internal.connection.RealCall: java.lang.String redactedUrl$okhttp()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 5