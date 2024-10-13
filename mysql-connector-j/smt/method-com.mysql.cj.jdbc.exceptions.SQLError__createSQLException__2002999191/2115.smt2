(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var195 0)
(declare-sort var2906 0)
(declare-sort var3933 0)
(declare-sort var3568 0)
(declare-sort var136 0)
(declare-sort var457 0)
(declare-sort var1505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var136-init () var136)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var457_stackTraceToString/237506299 (var2906) String)
(declare-fun cast-from-var3568-to-var2906 (var3568) var2906)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1654072928 (var136 String String) void)
(declare-fun var1505_runThroughExceptionInterceptor/-2096013244 (var3933 var136) var136)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var2906 var2906)
(declare-const null-var3933 var3933)
(declare-const null-var3568 var3568)
(declare-const var3870 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3870 null-String)))
(declare-const var53 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var53 null-String)))
(declare-const var1466 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1466 null-Int)))
(declare-const var2476 Bool) ; Statement: z6 := @parameter3: boolean 
(assert (not (= var2476 null-Bool)))
(declare-const var1027 var2906) ; Statement: r3 := @parameter4: java.lang.Throwable 
(assert (not (= var1027 null-var2906)))
(declare-const var3611 var3933) ; Statement: r4 := @parameter5: com.mysql.cj.exceptions.ExceptionInterceptor 
(assert (not (= var3611 null-var3933)))
 ; Statement: if r0 == null goto $r1 = new java.sql.SQLException 
(assert (not (= var53 null-String))) ; Negate: Cond: r0 == null  
(declare-const var742 var3568) ; Statement: $r13 := @caughtexception 
(assert (not (= var742 null-var3568)))
(define-const var3912 var136 var136-init) ; Statement: $r14 = new java.sql.SQLException 
(define-const var1832 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1832)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1832!1 String)
(assert (= var1832!1 ""))
(assert true)
(define-const var2312 String (append/672562846 var1832!1 "Unable to create correct SQLException class instance, error class/codes may be incorrect. Reason: ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create correct SQLException class instance, error class/codes may be incorrect. Reason: ") 
(declare-const var1832!2 String)
(assert (= var1832!2 (str.++ var1832!1 "Unable to create correct SQLException class instance, error class/codes may be incorrect. Reason: ")))
(define-const var900 String (var457_stackTraceToString/237506299 (cast-from-var3568-to-var2906 var742))) ; Statement: $r16 = staticinvoke <com.mysql.cj.util.Util: java.lang.String stackTraceToString(java.lang.Throwable)>($r13) 
(assert true)
(define-const var3691 String (append/672562846 var2312 var900)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var2312!1 String)
(assert (= var2312!1 (str.++ var2312 var900)))
(assert true)
(define-const var2096 String (toString/-2075883882 var3691)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1654072928 var3912 var2096 "S1000")) ; Statement: specialinvoke $r14.<java.sql.SQLException: void <init>(java.lang.String,java.lang.String)>($r19, "S1000") 

(declare-const var3912!1 var136)
(declare-const var2096!1 String)
(declare-const var1502 String)
(define-const var3827 var136 (var1505_runThroughExceptionInterceptor/-2096013244 var3611 var3912!1)) ; Statement: $r20 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException runThroughExceptionInterceptor(com.mysql.cj.exceptions.ExceptionInterceptor,java.sql.SQLException)>(r4, $r14) 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var136-init=([], java.sql.SQLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var457_stackTraceToString/237506299=([java.lang.Throwable], java.lang.String), cast-from-var3568-to-var2906=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1654072928=([java.sql.SQLException, java.lang.String, java.lang.String], void), var1505_runThroughExceptionInterceptor/-2096013244=([com.mysql.cj.exceptions.ExceptionInterceptor, java.sql.SQLException], java.sql.SQLException)}
; {var3870=r2, var195=null_type, var53=r0, var1466=i0, var2476=z6, var2906=java.lang.Throwable, var1027=r3, var3933=com.mysql.cj.exceptions.ExceptionInterceptor, var3611=r4, var3568=java.lang.Exception, var742=$r13, var136=java.sql.SQLException, var3912=$r14, var1832=$r15, var2312=$r17, var457=com.mysql.cj.util.Util, var900=$r16, var3691=$r18, var2096=$r19, var1502="S1000", var1505=com.mysql.cj.jdbc.exceptions.SQLError, var3827=$r20}
; {r2=var3870, null_type=var195, r0=var53, i0=var1466, z6=var2476, java.lang.Throwable=var2906, r3=var1027, com.mysql.cj.exceptions.ExceptionInterceptor=var3933, r4=var3611, java.lang.Exception=var3568, $r13=var742, java.sql.SQLException=var136, $r14=var3912, $r15=var1832, $r17=var2312, com.mysql.cj.util.Util=var457, $r16=var900, $r18=var3691, $r19=var2096, "S1000"=var1502, com.mysql.cj.jdbc.exceptions.SQLError=var1505, $r20=var3827}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	i0 := @parameter2: int;	z6 := @parameter3: boolean;	r3 := @parameter4: java.lang.Throwable;	r4 := @parameter5: com.mysql.cj.exceptions.ExceptionInterceptor;	if r0 == null goto $r1 = new java.sql.SQLException;	$r13 := @caughtexception;	$r14 = new java.sql.SQLException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create correct SQLException class instance, error class/codes may be incorrect. Reason: ");	$r16 = staticinvoke <com.mysql.cj.util.Util: java.lang.String stackTraceToString(java.lang.Throwable)>($r13);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.sql.SQLException: void <init>(java.lang.String,java.lang.String)>($r19, "S1000");	$r20 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException runThroughExceptionInterceptor(com.mysql.cj.exceptions.ExceptionInterceptor,java.sql.SQLException)>(r4, $r14);	return $r20
;block_num 2