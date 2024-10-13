(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1500 0)
(declare-sort var870 0)
(declare-sort var3327 0)
(declare-sort var3047 0)
(declare-sort var1626 0)
(declare-sort var105 0)
(declare-sort var1608 0)
(declare-sort var2695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bindValues/1390366865 (var1500) (Array Int var870))
(declare-fun var870_isSet/478424581 (var870) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3327_getString/-1547297038 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun session/1390366865 (var1500) var3047)
(declare-fun var3047_getExceptionInterceptor/1444984725 (var3047) var1626)
(declare-fun var1608_createException/-1561813846 (String String Int Bool var2695 var1626) var105)
(declare-const null-var1500 var1500)
(declare-const null-Int Int)
(declare-const null-var2695 var2695)
(declare-const var384 var1500) ; Statement: r0 := @this: com.mysql.cj.NativeQueryBindings 
(assert (not (= var384 null-var1500)))
(declare-const var786 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var786 null-Int)))
(define-const var2540 (Array Int var870) (bindValues/1390366865 var384)) ; Statement: $r1 = r0.<com.mysql.cj.NativeQueryBindings: com.mysql.cj.BindValue[] bindValues> 
(define-const var3405 var870 (select var2540 var786)) ; Statement: $r2 = $r1[i0] 
(define-const var1652 Bool (var870_isSet/478424581 var3405)) ; Statement: $z0 = interfaceinvoke $r2.<com.mysql.cj.BindValue: boolean isSet()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var1652 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var932 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var932)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var932!1 String)
(assert (= var932!1 ""))
(define-const var2110 String (var3327_getString/-1547297038 "PreparedStatement.40")) ; Statement: $r4 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("PreparedStatement.40") 
(assert true)
(define-const var2158 String (append/672562846 var932!1 var2110)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var932!2 String)
(assert (= var932!2 (str.++ var932!1 var2110)))
(define-const var2389 Int (+ var786 1)) ; Statement: $i1 = i0 + 1 
(assert true)
(define-const var154 String (append/-1001720160 var2158 var2389)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2158!1 String)
(assert (str.prefixof var2158 var2158!1))
(assert true)
(define-const var3441 String (toString/-2075883882 var154)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2654 var3047 (session/1390366865 var384)) ; Statement: $r7 = r0.<com.mysql.cj.NativeQueryBindings: com.mysql.cj.Session session> 
(define-const var2497 var1626 (var3047_getExceptionInterceptor/1444984725 var2654)) ; Statement: $r8 = interfaceinvoke $r7.<com.mysql.cj.Session: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var962 var105 (var1608_createException/-1561813846 var3441 "07001" 0 (ite (= 1 1) true false) null-var2695 var2497)) ; Statement: $r10 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String,java.lang.String,int,boolean,java.lang.Throwable,com.mysql.cj.exceptions.ExceptionInterceptor)>($r9, "07001", 0, 1, null, $r8) 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {bindValues/1390366865=([com.mysql.cj.NativeQueryBindings], com.mysql.cj.BindValue[]), var870_isSet/478424581=([com.mysql.cj.BindValue], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3327_getString/-1547297038=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), session/1390366865=([com.mysql.cj.NativeQueryBindings], com.mysql.cj.Session), var3047_getExceptionInterceptor/1444984725=([com.mysql.cj.Session], com.mysql.cj.exceptions.ExceptionInterceptor), var1608_createException/-1561813846=([java.lang.String, java.lang.String, int, boolean, java.lang.Throwable, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException)}
; {var1500=com.mysql.cj.NativeQueryBindings, var384=r0, var786=i0, var870=com.mysql.cj.BindValue, var2540=$r1, var3405=$r2, var1652=$z0, var932=$r3, var3327=com.mysql.cj.Messages, var2110=$r4, var2158=$r5, var2389=$i1, var154=$r6, var3441=$r9, var3047=com.mysql.cj.Session, var2654=$r7, var1626=com.mysql.cj.exceptions.ExceptionInterceptor, var2497=$r8, var105=com.mysql.cj.exceptions.CJException, var1608=com.mysql.cj.exceptions.ExceptionFactory, var2695=java.lang.Throwable, var962=$r10}
; {com.mysql.cj.NativeQueryBindings=var1500, r0=var384, i0=var786, com.mysql.cj.BindValue=var870, $r1=var2540, $r2=var3405, $z0=var1652, $r3=var932, com.mysql.cj.Messages=var3327, $r4=var2110, $r5=var2158, $i1=var2389, $r6=var154, $r9=var3441, com.mysql.cj.Session=var3047, $r7=var2654, com.mysql.cj.exceptions.ExceptionInterceptor=var1626, $r8=var2497, com.mysql.cj.exceptions.CJException=var105, com.mysql.cj.exceptions.ExceptionFactory=var1608, java.lang.Throwable=var2695, $r10=var962}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.NativeQueryBindings;	i0 := @parameter0: int;	$r1 = r0.<com.mysql.cj.NativeQueryBindings: com.mysql.cj.BindValue[] bindValues>;	$r2 = $r1[i0];	$z0 = interfaceinvoke $r2.<com.mysql.cj.BindValue: boolean isSet()>();	if $z0 != 0 goto return;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("PreparedStatement.40");	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$i1 = i0 + 1;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r0.<com.mysql.cj.NativeQueryBindings: com.mysql.cj.Session session>;	$r8 = interfaceinvoke $r7.<com.mysql.cj.Session: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r10 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String,java.lang.String,int,boolean,java.lang.Throwable,com.mysql.cj.exceptions.ExceptionInterceptor)>($r9, "07001", 0, 1, null, $r8);	throw $r10
;block_num 2