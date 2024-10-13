(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3389 0)
(declare-sort var184 0)
(declare-sort var1564 0)
(declare-sort var3233 0)
(declare-sort var3079 0)
(declare-sort var1713 0)
(declare-sort var2948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3233_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3233_addPrefixIfNot/-1816210460 (String String) String)
(declare-fun isDirectory/-2122094196 (var1564) Bool)
(declare-fun getName/1128186653 (var1564) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1564-init () var1564)
(declare-fun <init>/-1833447926 (var1564 var1564 String) void)
(declare-fun var1713_del/1777529281 (var1564) Bool)
(declare-fun var2948-init () var2948)
(declare-fun <init>/-1439883720 (var2948 var3079) void)
(declare-const null-var3389 var3389)
(declare-const null-String String)
(declare-const null-var1564 var1564)
(declare-const null-var3079 var3079)
(declare-const var1271 var3389) ; Statement: r5 := @this: cn.hutool.extra.ftp.AbstractFtp 
(assert (not (= var1271 null-var3389)))
(declare-const var3919 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3919 null-String)))
(declare-const var309 var1564) ; Statement: r10 := @parameter1: java.io.File 
(assert (not (= var309 null-var1564)))
(declare-const var975 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var975 null-String)))
(define-const var3548 Bool (var3233_isBlank/-1569658263 (cast-from-String-to-String var975))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r11) 
 ; Statement: if $z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".") 
(assert (= (ite var3548 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2463 String (var3233_addPrefixIfNot/-1816210460 (cast-from-String-to-String var975) (cast-from-String-to-String "."))) ; Statement: r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".") 
(assert true) ; Non Conditional
(assert true)
(define-const var427 Bool (isDirectory/-2122094196 var309)) ; Statement: $z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z1 == 0 goto $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>() 
(assert (= (ite var427 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2700 String (getName/1128186653 var309)) ; Statement: $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>() 
(assert true) ; Non Conditional
(define-const var307 String var2700) ; Statement: r0 = $r13 
(define-const var2510 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2510)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2510!1 String)
(assert (= var2510!1 ""))
(assert true)
(define-const var1948 String (append/672562846 var2510!1 var2700)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2510!2 String)
(assert (= var2510!2 (str.++ var2510!1 var2700)))
(assert true)
(define-const var429 String (append/672562846 var1948 var2463)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var1948!1 String)
(assert (= var1948!1 (str.++ var1948 var2463)))
(assert true)
(define-const var3665 String (toString/-2075883882 var429)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3936 var1564 var1564-init) ; Statement: $r4 = new java.io.File 
(assert true)
(define-const var1634 Bool (isDirectory/-2122094196 var309)) ; Statement: $z2 = virtualinvoke r10.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z2 == 0 goto $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>() 
(assert (not (= (ite var1634 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2419 var1564 var309) ; Statement: $r14 = r10 
 ; Statement: goto [?= specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1833447926 var3936 var2419 var3665)) ; Statement: specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7) 

(declare-const var3936!1 var1564)
(declare-const var2419!1 var1564)
(declare-const var3665!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2539 var3079) ; Statement: $r8 := @caughtexception 
(assert (not (= var2539 null-var3079)))
;(assert (var1713_del/1777529281 var3936!1)) ; Statement: staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r4) 

(declare-const var3936!2 var1564)
(define-const var2616 var2948 var2948-init) ; Statement: $r9 = new cn.hutool.extra.ftp.FtpException 
(assert true)
;(assert (<init>/-1439883720 var2616 var2539)) ; Statement: specialinvoke $r9.<cn.hutool.extra.ftp.FtpException: void <init>(java.lang.Throwable)>($r8) 

(declare-const var2616!1 var2948)
(declare-const var2539!1 var3079)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3233_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3233_addPrefixIfNot/-1816210460=([java.lang.CharSequence, java.lang.CharSequence], java.lang.String), isDirectory/-2122094196=([java.io.File], boolean), getName/1128186653=([java.io.File], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1564-init=([], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), var1713_del/1777529281=([java.io.File], boolean), var2948-init=([], cn.hutool.extra.ftp.FtpException), <init>/-1439883720=([cn.hutool.extra.ftp.FtpException, java.lang.Throwable], void)}
; {var3389=cn.hutool.extra.ftp.AbstractFtp, var1271=r5, var3919=r6, var184=null_type, var1564=java.io.File, var309=r10, var975=r11, var3233=cn.hutool.core.text.CharSequenceUtil, var3548=$z0, var2463=r12, var427=$z1, var2700=$r13, var307=r0, var2510=$r1, var1948=$r2, var429=$r3, var3665=$r7, var3936=$r4, var1634=$z2, var2419=$r14, var3079=java.lang.Throwable, var2539=$r8, var1713=cn.hutool.core.io.FileUtil, var2948=cn.hutool.extra.ftp.FtpException, var2616=$r9}
; {cn.hutool.extra.ftp.AbstractFtp=var3389, r5=var1271, r6=var3919, null_type=var184, java.io.File=var1564, r10=var309, r11=var975, cn.hutool.core.text.CharSequenceUtil=var3233, $z0=var3548, r12=var2463, $z1=var427, $r13=var2700, r0=var307, $r1=var2510, $r2=var1948, $r3=var429, $r7=var3665, $r4=var3936, $z2=var1634, $r14=var2419, java.lang.Throwable=var3079, $r8=var2539, cn.hutool.core.io.FileUtil=var1713, cn.hutool.extra.ftp.FtpException=var2948, $r9=var2616}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: cn.hutool.extra.ftp.AbstractFtp;	r6 := @parameter0: java.lang.String;	r10 := @parameter1: java.io.File;	r11 := @parameter2: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r11);	if $z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".");	r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".");	$z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>();	if $z1 == 0 goto $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>();	$r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>();	r0 = $r13;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = new java.io.File;	$z2 = virtualinvoke r10.<java.io.File: boolean isDirectory()>();	if $z2 == 0 goto $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>();	$r14 = r10;	goto [?= specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7)];	specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7);	$r8 := @caughtexception;	staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r4);	$r9 = new cn.hutool.extra.ftp.FtpException;	specialinvoke $r9.<cn.hutool.extra.ftp.FtpException: void <init>(java.lang.Throwable)>($r8);	throw $r9
;block_num 8