(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1623 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun isCanceled/77256038 (var1623) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun forWebSocket/1819657946 (var1623) Bool)
(declare-fun redactedUrl$okhttp/584270565 (var1623) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1623 var1623)
(declare-const var2276 var1623) ; Statement: r1 := @this: okhttp3.internal.connection.RealCall 
(assert (not (= var2276 null-var1623)))
(define-const var2345 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2345)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2345!1 String)
(assert (= var2345!1 ""))
(assert true)
(define-const var830 Bool (isCanceled/77256038 var2276)) ; Statement: $z0 = virtualinvoke r1.<okhttp3.internal.connection.RealCall: boolean isCanceled()>() 
 ; Statement: if $z0 == 0 goto $r8 = "" 
(assert (not (= (ite var830 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2631 String "canceled ") ; Statement: $r8 = "canceled " 
 ; Statement: goto [?= $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2421 String (append/672562846 var2345!1 var2631)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2345!2 String)
(assert (= var2345!2 (str.++ var2345!1 var2631)))
(define-const var739 Bool (forWebSocket/1819657946 var2276)) ; Statement: $z1 = r1.<okhttp3.internal.connection.RealCall: boolean forWebSocket> 
 ; Statement: if $z1 == 0 goto $r9 = "call" 
(assert (= (ite var739 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3601 String "call") ; Statement: $r9 = "call" 
(assert true) ; Non Conditional
(assert true)
(define-const var1196 String (append/672562846 var2421 var3601)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2421!1 String)
(assert (= var2421!1 (str.++ var2421 var3601)))
(assert true)
(define-const var680 String (append/672562846 var1196 " to ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var1196!1 String)
(assert (= var1196!1 (str.++ var1196 " to ")))
(assert true)
(define-const var2694 String (redactedUrl$okhttp/584270565 var2276)) ; Statement: $r4 = virtualinvoke r1.<okhttp3.internal.connection.RealCall: java.lang.String redactedUrl$okhttp()>() 
(assert true)
(define-const var2489 String (append/672562846 var680 var2694)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var680!1 String)
(assert (= var680!1 (str.++ var680 var2694)))
(assert true)
(define-const var1222 String (toString/-2075883882 var2489)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), isCanceled/77256038=([okhttp3.internal.connection.RealCall], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), forWebSocket/1819657946=([okhttp3.internal.connection.RealCall], boolean), redactedUrl$okhttp/584270565=([okhttp3.internal.connection.RealCall], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1623=okhttp3.internal.connection.RealCall, var2276=r1, var2345=$r0, var830=$z0, var2631=$r8, var2421=$r2, var739=$z1, var3601=$r9, var1196=$r3, var680=$r5, var2694=$r4, var2489=$r6, var1222=$r7}
; {okhttp3.internal.connection.RealCall=var1623, r1=var2276, $r0=var2345, $z0=var830, $r8=var2631, $r2=var2421, $z1=var739, $r9=var3601, $r3=var1196, $r5=var680, $r4=var2694, $r6=var2489, $r7=var1222}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.connection.RealCall;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = virtualinvoke r1.<okhttp3.internal.connection.RealCall: boolean isCanceled()>();	if $z0 == 0 goto $r8 = "";	$r8 = "canceled ";	goto [?= $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)];	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$z1 = r1.<okhttp3.internal.connection.RealCall: boolean forWebSocket>;	if $z1 == 0 goto $r9 = "call";	$r9 = "call";	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r4 = virtualinvoke r1.<okhttp3.internal.connection.RealCall: java.lang.String redactedUrl$okhttp()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 5