(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var152 0)
(declare-sort var2528 0)
(declare-sort var1943 0)
(declare-sort var2383 0)
(declare-sort var2414 0)
(declare-sort var1430 0)
(declare-sort var3077 0)
(declare-sort var468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun streamingData/48556100 (var152) var2528)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1943_getString/-1547297038 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2383) String)
(declare-fun cast-from-var2528-to-var2383 (var2528) var2383)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun exceptionInterceptor/1107860514 (var1430) var2414)
(declare-fun cast-from-var152-to-var1430 (var152) var1430)
(declare-fun var468_createException/-1494009588 (String var2414) var3077)
(declare-const null-var152 var152)
(declare-const null-var2528 var2528)
(declare-const var1387 var152) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativeProtocol 
(assert (not (= var1387 null-var152)))
(declare-const var2677 var2528) ; Statement: r2 := @parameter0: com.mysql.cj.protocol.ResultsetRows 
(assert (not (= var2677 null-var2528)))
(define-const var1560 var2528 (streamingData/48556100 var1387)) ; Statement: $r1 = r0.<com.mysql.cj.protocol.a.NativeProtocol: com.mysql.cj.protocol.ResultsetRows streamingData> 
 ; Statement: if $r1 != null goto $r3 = r0.<com.mysql.cj.protocol.a.NativeProtocol: com.mysql.cj.protocol.ResultsetRows streamingData> 
(assert (not (not (= var1560 null-var2528)))) ; Negate: Cond: $r1 != null  
(define-const var1701 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1701)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1701!1 String)
(assert (= var1701!1 ""))
(define-const var3649 String (var1943_getString/-1547297038 "MysqlIO.17")) ; Statement: $r5 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("MysqlIO.17") 
(assert true)
(define-const var1450 String (append/672562846 var1701!1 var3649)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1701!2 String)
(assert (= var1701!2 (str.++ var1701!1 var3649)))
(assert true)
(define-const var1877 String (append/-1031950772 var1450 (cast-from-var2528-to-var2383 var2677))) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1450!1 String)
(assert (str.prefixof var1450 var1450!1))
(define-const var2905 String (var1943_getString/-1547297038 "MysqlIO.18")) ; Statement: $r7 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("MysqlIO.18") 
(assert true)
(define-const var493 String (append/672562846 var1877 var2905)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1877!1 String)
(assert (= var1877!1 (str.++ var1877 var2905)))
(assert true)
(define-const var3466 String (toString/-2075883882 var493)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var564 var2414 (exceptionInterceptor/1107860514 (cast-from-var152-to-var1430 var1387))) ; Statement: $r10 = r0.<com.mysql.cj.protocol.a.NativeProtocol: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor> 
(define-const var1540 var3077 (var468_createException/-1494009588 var3466 var564)) ; Statement: $r12 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r11, $r10) 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {streamingData/48556100=([com.mysql.cj.protocol.a.NativeProtocol], com.mysql.cj.protocol.ResultsetRows), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1943_getString/-1547297038=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2528-to-var2383=([com.mysql.cj.protocol.ResultsetRows], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), exceptionInterceptor/1107860514=([com.mysql.cj.protocol.AbstractProtocol], com.mysql.cj.exceptions.ExceptionInterceptor), cast-from-var152-to-var1430=([com.mysql.cj.protocol.a.NativeProtocol], com.mysql.cj.protocol.AbstractProtocol), var468_createException/-1494009588=([java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException)}
; {var152=com.mysql.cj.protocol.a.NativeProtocol, var1387=r0, var2528=com.mysql.cj.protocol.ResultsetRows, var2677=r2, var1560=$r1, var1701=$r4, var1943=com.mysql.cj.Messages, var3649=$r5, var1450=$r6, var2383=java.lang.Object, var1877=$r8, var2905=$r7, var493=$r9, var3466=$r11, var2414=com.mysql.cj.exceptions.ExceptionInterceptor, var1430=com.mysql.cj.protocol.AbstractProtocol, var564=$r10, var3077=com.mysql.cj.exceptions.CJException, var468=com.mysql.cj.exceptions.ExceptionFactory, var1540=$r12}
; {com.mysql.cj.protocol.a.NativeProtocol=var152, r0=var1387, com.mysql.cj.protocol.ResultsetRows=var2528, r2=var2677, $r1=var1560, $r4=var1701, com.mysql.cj.Messages=var1943, $r5=var3649, $r6=var1450, java.lang.Object=var2383, $r8=var1877, $r7=var2905, $r9=var493, $r11=var3466, com.mysql.cj.exceptions.ExceptionInterceptor=var2414, com.mysql.cj.protocol.AbstractProtocol=var1430, $r10=var564, com.mysql.cj.exceptions.CJException=var3077, com.mysql.cj.exceptions.ExceptionFactory=var468, $r12=var1540}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativeProtocol;	r2 := @parameter0: com.mysql.cj.protocol.ResultsetRows;	$r1 = r0.<com.mysql.cj.protocol.a.NativeProtocol: com.mysql.cj.protocol.ResultsetRows streamingData>;	if $r1 != null goto $r3 = r0.<com.mysql.cj.protocol.a.NativeProtocol: com.mysql.cj.protocol.ResultsetRows streamingData>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("MysqlIO.17");	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r7 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("MysqlIO.18");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = r0.<com.mysql.cj.protocol.a.NativeProtocol: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor>;	$r12 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r11, $r10);	throw $r12
;block_num 2