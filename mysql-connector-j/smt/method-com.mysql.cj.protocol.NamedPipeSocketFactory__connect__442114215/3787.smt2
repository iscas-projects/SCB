(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var584 0)
(declare-sort var1937 0)
(declare-sort var2722 0)
(declare-sort var1202 0)
(declare-sort var1812 0)
(declare-sort var3948 0)
(declare-sort var3973 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2722_getStringProperty/-80189395 (var2722 var1202) var1812)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3948-init () var3948)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3973_getString/-1547297038 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCcAlias/-1342817152 (var1202) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1564088315 (var3948 String) void)
(declare-const null-var584 var584)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2722 var2722)
(declare-const var1202-PATH var1202)
(declare-const null-var1812 var1812)
(declare-const var3332 var584) ; Statement: r8 := @this: com.mysql.cj.protocol.NamedPipeSocketFactory 
(assert (not (= var3332 null-var584)))
(declare-const var1414 String) ; Statement: r20 := @parameter0: java.lang.String 
(assert (not (= var1414 null-String)))
(declare-const var2901 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var2901 null-Int)))
(declare-const var2046 var2722) ; Statement: r0 := @parameter2: com.mysql.cj.conf.PropertySet 
(assert (not (= var2046 null-var2722)))
(declare-const var3438 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3438 null-Int)))
(define-const var3813 String null-String) ; Statement: r21 = null 
(define-const var3866 var1202 var1202-PATH) ; Statement: $r1 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey PATH> 
(define-const var1303 var1812 (var2722_getStringProperty/-80189395 var2046 var3866)) ; Statement: r2 = interfaceinvoke r0.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getStringProperty(com.mysql.cj.conf.PropertyKey)>($r1) 
 ; Statement: if r2 == null goto (branch) 
(assert (= var1303 null-var1812)) ; Cond: r2 == null 
 ; Statement: if r21 != null goto $i0 = virtualinvoke r21.<java.lang.String: int length()>() 
(assert (not (= var3813 null-String))) ; Cond: r21 != null 
(assert true)
(define-const var3943 Int (length/-134980193 var3813)) ; Statement: $i0 = virtualinvoke r21.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r3 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey connectTimeout> 
(assert (not (not (= var3943 0)))) ; Negate: Cond: $i0 != 0  
(define-const var3466 var3948 var3948-init) ; Statement: $r9 = new java.net.SocketException 
(define-const var1118 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1118)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1118!1 String)
(assert (= var1118!1 ""))
(define-const var1356 String (var3973_getString/-1547297038 "NamedPipeSocketFactory.2")) ; Statement: $r11 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("NamedPipeSocketFactory.2") 
(assert true)
(define-const var157 String (append/672562846 var1118!1 var1356)) ; Statement: $r14 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1118!2 String)
(assert (= var1118!2 (str.++ var1118!1 var1356)))
(define-const var3865 var1202 var1202-PATH) ; Statement: $r12 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey PATH> 
(assert true)
(define-const var3962 String (getCcAlias/-1342817152 var3865)) ; Statement: $r13 = virtualinvoke $r12.<com.mysql.cj.conf.PropertyKey: java.lang.String getCcAlias()>() 
(assert true)
(define-const var273 String (append/672562846 var157 var3962)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var157!1 String)
(assert (= var157!1 (str.++ var157 var3962)))
(define-const var648 String (var3973_getString/-1547297038 "NamedPipeSocketFactory.3")) ; Statement: $r15 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("NamedPipeSocketFactory.3") 
(assert true)
(define-const var2370 String (append/672562846 var273 var648)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var273!1 String)
(assert (= var273!1 (str.++ var273 var648)))
(assert true)
(define-const var1160 String (toString/-2075883882 var2370)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1564088315 var3466 var1160)) ; Statement: specialinvoke $r9.<java.net.SocketException: void <init>(java.lang.String)>($r18) 

(declare-const var3466!1 var3948)
(declare-const var1160!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2722_getStringProperty/-80189395=([com.mysql.cj.conf.PropertySet, com.mysql.cj.conf.PropertyKey], com.mysql.cj.conf.RuntimeProperty), length/-134980193=([java.lang.String], int), var3948-init=([], java.net.SocketException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3973_getString/-1547297038=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCcAlias/-1342817152=([com.mysql.cj.conf.PropertyKey], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1564088315=([java.net.SocketException, java.lang.String], void)}
; {var584=com.mysql.cj.protocol.NamedPipeSocketFactory, var3332=r8, var1414=r20, var1937=null_type, var2901=i3, var2722=com.mysql.cj.conf.PropertySet, var2046=r0, var3438=i1, var3813=r21, var1202=com.mysql.cj.conf.PropertyKey, var3866=$r1, var1812=com.mysql.cj.conf.RuntimeProperty, var1303=r2, var3943=$i0, var3948=java.net.SocketException, var3466=$r9, var1118=$r10, var3973=com.mysql.cj.Messages, var1356=$r11, var157=$r14, var3865=$r12, var3962=$r13, var273=$r16, var648=$r15, var2370=$r17, var1160=$r18}
; {com.mysql.cj.protocol.NamedPipeSocketFactory=var584, r8=var3332, r20=var1414, null_type=var1937, i3=var2901, com.mysql.cj.conf.PropertySet=var2722, r0=var2046, i1=var3438, r21=var3813, com.mysql.cj.conf.PropertyKey=var1202, $r1=var3866, com.mysql.cj.conf.RuntimeProperty=var1812, r2=var1303, $i0=var3943, java.net.SocketException=var3948, $r9=var3466, $r10=var1118, com.mysql.cj.Messages=var3973, $r11=var1356, $r14=var157, $r12=var3865, $r13=var3962, $r16=var273, $r15=var648, $r17=var2370, $r18=var1160}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.mysql.cj.protocol.NamedPipeSocketFactory;	r20 := @parameter0: java.lang.String;	i3 := @parameter1: int;	r0 := @parameter2: com.mysql.cj.conf.PropertySet;	i1 := @parameter3: int;	r21 = null;	$r1 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey PATH>;	r2 = interfaceinvoke r0.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getStringProperty(com.mysql.cj.conf.PropertyKey)>($r1);	if r2 == null goto (branch);	if r21 != null goto $i0 = virtualinvoke r21.<java.lang.String: int length()>();	$i0 = virtualinvoke r21.<java.lang.String: int length()>();	if $i0 != 0 goto $r3 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey connectTimeout>;	$r9 = new java.net.SocketException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("NamedPipeSocketFactory.2");	$r14 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r12 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey PATH>;	$r13 = virtualinvoke $r12.<com.mysql.cj.conf.PropertyKey: java.lang.String getCcAlias()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r15 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("NamedPipeSocketFactory.3");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.net.SocketException: void <init>(java.lang.String)>($r18);	throw $r9
;block_num 4