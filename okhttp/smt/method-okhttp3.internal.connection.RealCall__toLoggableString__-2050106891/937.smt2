(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun isCanceled/77256038 (var2256) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun forWebSocket/1819657946 (var2256) Bool)
(declare-fun redactedUrl$okhttp/584270565 (var2256) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2256 var2256)
(declare-const var910 var2256) ; Statement: r1 := @this: okhttp3.internal.connection.RealCall 
(assert (not (= var910 null-var2256)))
(define-const var1302 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1302)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1302!1 String)
(assert (= var1302!1 ""))
(assert true)
(define-const var1677 Bool (isCanceled/77256038 var910)) ; Statement: $z0 = virtualinvoke r1.<okhttp3.internal.connection.RealCall: boolean isCanceled()>() 
 ; Statement: if $z0 == 0 goto $r8 = "" 
(assert (= (ite var1677 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1115 String "") ; Statement: $r8 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var836 String (append/672562846 var1302!1 var1115)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1302!2 String)
(assert (= var1302!2 (str.++ var1302!1 var1115)))
(define-const var260 Bool (forWebSocket/1819657946 var910)) ; Statement: $z1 = r1.<okhttp3.internal.connection.RealCall: boolean forWebSocket> 
 ; Statement: if $z1 == 0 goto $r9 = "call" 
(assert (not (= (ite var260 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var935 String "web socket") ; Statement: $r9 = "web socket" 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2595 String (append/672562846 var836 var935)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var836!1 String)
(assert (= var836!1 (str.++ var836 var935)))
(assert true)
(define-const var3207 String (append/672562846 var2595 " to ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var2595!1 String)
(assert (= var2595!1 (str.++ var2595 " to ")))
(assert true)
(define-const var2036 String (redactedUrl$okhttp/584270565 var910)) ; Statement: $r4 = virtualinvoke r1.<okhttp3.internal.connection.RealCall: java.lang.String redactedUrl$okhttp()>() 
(assert true)
(define-const var622 String (append/672562846 var3207 var2036)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3207!1 String)
(assert (= var3207!1 (str.++ var3207 var2036)))
(assert true)
(define-const var3670 String (toString/-2075883882 var622)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), isCanceled/77256038=([okhttp3.internal.connection.RealCall], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), forWebSocket/1819657946=([okhttp3.internal.connection.RealCall], boolean), redactedUrl$okhttp/584270565=([okhttp3.internal.connection.RealCall], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2256=okhttp3.internal.connection.RealCall, var910=r1, var1302=$r0, var1677=$z0, var1115=$r8, var836=$r2, var260=$z1, var935=$r9, var2595=$r3, var3207=$r5, var2036=$r4, var622=$r6, var3670=$r7}
; {okhttp3.internal.connection.RealCall=var2256, r1=var910, $r0=var1302, $z0=var1677, $r8=var1115, $r2=var836, $z1=var260, $r9=var935, $r3=var2595, $r5=var3207, $r4=var2036, $r6=var622, $r7=var3670}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.connection.RealCall;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = virtualinvoke r1.<okhttp3.internal.connection.RealCall: boolean isCanceled()>();	if $z0 == 0 goto $r8 = "";	$r8 = "";	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$z1 = r1.<okhttp3.internal.connection.RealCall: boolean forWebSocket>;	if $z1 == 0 goto $r9 = "call";	$r9 = "web socket";	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r4 = virtualinvoke r1.<okhttp3.internal.connection.RealCall: java.lang.String redactedUrl$okhttp()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 5