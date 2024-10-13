(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var100 0)
(declare-sort var2142 0)
(declare-sort var1901 0)
(declare-sort var1611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/925620624 (var100) var2142)
(declare-fun redactedUrl$okhttp/584270565 (var2142) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1901_currentThread/-1037784612 () var1901)
(declare-fun getName/-942182377 (var1901) String)
(declare-fun setName/-1126170079 (var1901 String) void)
(declare-const null-var100 var100)
(declare-const null-var1611 var1611)
(declare-const var2588 var100) ; Statement: r1 := @this: okhttp3.internal.connection.RealCall$AsyncCall 
(assert (not (= var2588 null-var100)))
(define-const var1350 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1350)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1350!1 String)
(assert (= var1350!1 ""))
(assert true)
(define-const var890 String (append/672562846 var1350!1 "OkHttp ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OkHttp ") 
(declare-const var1350!2 String)
(assert (= var1350!2 (str.++ var1350!1 "OkHttp ")))
(define-const var3574 var2142 (this$0/925620624 var2588)) ; Statement: $r2 = r1.<okhttp3.internal.connection.RealCall$AsyncCall: okhttp3.internal.connection.RealCall this$0> 
(assert true)
(define-const var629 String (redactedUrl$okhttp/584270565 var3574)) ; Statement: $r3 = virtualinvoke $r2.<okhttp3.internal.connection.RealCall: java.lang.String redactedUrl$okhttp()>() 
(assert true)
(define-const var1467 String (append/672562846 var890 var629)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var890!1 String)
(assert (= var890!1 (str.++ var890 var629)))
(assert true)
(define-const var3063 String (toString/-2075883882 var1467)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1613 var2142 (this$0/925620624 var2588)) ; Statement: r7 = r1.<okhttp3.internal.connection.RealCall$AsyncCall: okhttp3.internal.connection.RealCall this$0> 
(define-const var484 var1901 var1901_currentThread/-1037784612) ; Statement: r8 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var989 String (getName/-942182377 var484)) ; Statement: r9 = virtualinvoke r8.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
;(assert (setName/-1126170079 var484 var3063)) ; Statement: virtualinvoke r8.<java.lang.Thread: void setName(java.lang.String)>(r6) 

(declare-const var484!1 var1901)
(declare-const var3063!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1566 var1611) ; Statement: $r15 := @caughtexception 
(assert (not (= var1566 null-var1611)))
(assert true) ; Non Conditional
(assert true)
;(assert (setName/-1126170079 var484!1 var989)) ; Statement: virtualinvoke r8.<java.lang.Thread: void setName(java.lang.String)>(r9) 

(declare-const var484!2 var1901)
(declare-const var989!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/925620624=([okhttp3.internal.connection.RealCall$AsyncCall], okhttp3.internal.connection.RealCall), redactedUrl$okhttp/584270565=([okhttp3.internal.connection.RealCall], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1901_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), setName/-1126170079=([java.lang.Thread, java.lang.String], void)}
; {var100=okhttp3.internal.connection.RealCall$AsyncCall, var2588=r1, var1350=$r0, var890=$r4, var2142=okhttp3.internal.connection.RealCall, var3574=$r2, var629=$r3, var1467=$r5, var3063=r6, var1613=r7, var1901=java.lang.Thread, var484=r8, var989=r9, var1611=java.lang.Throwable, var1566=$r15}
; {okhttp3.internal.connection.RealCall$AsyncCall=var100, r1=var2588, $r0=var1350, $r4=var890, okhttp3.internal.connection.RealCall=var2142, $r2=var3574, $r3=var629, $r5=var1467, r6=var3063, r7=var1613, java.lang.Thread=var1901, r8=var484, r9=var989, java.lang.Throwable=var1611, $r15=var1566}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.connection.RealCall$AsyncCall;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OkHttp ");	$r2 = r1.<okhttp3.internal.connection.RealCall$AsyncCall: okhttp3.internal.connection.RealCall this$0>;	$r3 = virtualinvoke $r2.<okhttp3.internal.connection.RealCall: java.lang.String redactedUrl$okhttp()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r7 = r1.<okhttp3.internal.connection.RealCall$AsyncCall: okhttp3.internal.connection.RealCall this$0>;	r8 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	r9 = virtualinvoke r8.<java.lang.Thread: java.lang.String getName()>();	virtualinvoke r8.<java.lang.Thread: void setName(java.lang.String)>(r6);	$r15 := @caughtexception;	virtualinvoke r8.<java.lang.Thread: void setName(java.lang.String)>(r9);	throw $r15
;block_num 3