(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var290 0)
(declare-sort var493 0)
(declare-sort var394 0)
(declare-sort var1302 0)
(declare-sort var1483 0)
(declare-sort var399 0)
(declare-sort var2895 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1302_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1302_addPrefixIfNot/-1816210460 (String String) String)
(declare-fun isDirectory/-2122094196 (var394) Bool)
(declare-fun getName/1128186653 (var394) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var394-init () var394)
(declare-fun getParentFile/-182598033 (var394) var394)
(declare-fun <init>/-1833447926 (var394 var394 String) void)
(declare-fun var399_del/1777529281 (var394) Bool)
(declare-fun var2895-init () var2895)
(declare-fun <init>/-1439883720 (var2895 var1483) void)
(declare-const null-var290 var290)
(declare-const null-String String)
(declare-const null-var394 var394)
(declare-const null-var1483 var1483)
(declare-const var2299 var290) ; Statement: r5 := @this: cn.hutool.extra.ftp.AbstractFtp 
(assert (not (= var2299 null-var290)))
(declare-const var3784 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3784 null-String)))
(declare-const var1269 var394) ; Statement: r10 := @parameter1: java.io.File 
(assert (not (= var1269 null-var394)))
(declare-const var3332 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var3332 null-String)))
(define-const var378 Bool (var1302_isBlank/-1569658263 (cast-from-String-to-String var3332))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r11) 
 ; Statement: if $z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".") 
(assert (= (ite var378 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1965 String (var1302_addPrefixIfNot/-1816210460 (cast-from-String-to-String var3332) (cast-from-String-to-String "."))) ; Statement: r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".") 
(assert true) ; Non Conditional
(assert true)
(define-const var1434 Bool (isDirectory/-2122094196 var1269)) ; Statement: $z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z1 == 0 goto $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>() 
(assert (= (ite var1434 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var655 String (getName/1128186653 var1269)) ; Statement: $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>() 
(assert true) ; Non Conditional
(define-const var3612 String var655) ; Statement: r0 = $r13 
(define-const var1713 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1713)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1713!1 String)
(assert (= var1713!1 ""))
(assert true)
(define-const var2716 String (append/672562846 var1713!1 var655)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1713!2 String)
(assert (= var1713!2 (str.++ var1713!1 var655)))
(assert true)
(define-const var1185 String (append/672562846 var2716 var1965)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var2716!1 String)
(assert (= var2716!1 (str.++ var2716 var1965)))
(assert true)
(define-const var1126 String (toString/-2075883882 var1185)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1941 var394 var394-init) ; Statement: $r4 = new java.io.File 
(assert true)
(define-const var328 Bool (isDirectory/-2122094196 var1269)) ; Statement: $z2 = virtualinvoke r10.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z2 == 0 goto $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>() 
(assert (= (ite var328 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2085 var394 (getParentFile/-182598033 var1269)) ; Statement: $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1833447926 var1941 var2085 var1126)) ; Statement: specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7) 

(declare-const var1941!1 var394)
(declare-const var2085!1 var394)
(declare-const var1126!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3356 var1483) ; Statement: $r8 := @caughtexception 
(assert (not (= var3356 null-var1483)))
;(assert (var399_del/1777529281 var1941!1)) ; Statement: staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r4) 

(declare-const var1941!2 var394)
(define-const var2635 var2895 var2895-init) ; Statement: $r9 = new cn.hutool.extra.ftp.FtpException 
(assert true)
;(assert (<init>/-1439883720 var2635 var3356)) ; Statement: specialinvoke $r9.<cn.hutool.extra.ftp.FtpException: void <init>(java.lang.Throwable)>($r8) 

(declare-const var2635!1 var2895)
(declare-const var3356!1 var1483)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1302_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1302_addPrefixIfNot/-1816210460=([java.lang.CharSequence, java.lang.CharSequence], java.lang.String), isDirectory/-2122094196=([java.io.File], boolean), getName/1128186653=([java.io.File], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var394-init=([], java.io.File), getParentFile/-182598033=([java.io.File], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), var399_del/1777529281=([java.io.File], boolean), var2895-init=([], cn.hutool.extra.ftp.FtpException), <init>/-1439883720=([cn.hutool.extra.ftp.FtpException, java.lang.Throwable], void)}
; {var290=cn.hutool.extra.ftp.AbstractFtp, var2299=r5, var3784=r6, var493=null_type, var394=java.io.File, var1269=r10, var3332=r11, var1302=cn.hutool.core.text.CharSequenceUtil, var378=$z0, var1965=r12, var1434=$z1, var655=$r13, var3612=r0, var1713=$r1, var2716=$r2, var1185=$r3, var1126=$r7, var1941=$r4, var328=$z2, var2085=$r14, var1483=java.lang.Throwable, var3356=$r8, var399=cn.hutool.core.io.FileUtil, var2895=cn.hutool.extra.ftp.FtpException, var2635=$r9}
; {cn.hutool.extra.ftp.AbstractFtp=var290, r5=var2299, r6=var3784, null_type=var493, java.io.File=var394, r10=var1269, r11=var3332, cn.hutool.core.text.CharSequenceUtil=var1302, $z0=var378, r12=var1965, $z1=var1434, $r13=var655, r0=var3612, $r1=var1713, $r2=var2716, $r3=var1185, $r7=var1126, $r4=var1941, $z2=var328, $r14=var2085, java.lang.Throwable=var1483, $r8=var3356, cn.hutool.core.io.FileUtil=var399, cn.hutool.extra.ftp.FtpException=var2895, $r9=var2635}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: cn.hutool.extra.ftp.AbstractFtp;	r6 := @parameter0: java.lang.String;	r10 := @parameter1: java.io.File;	r11 := @parameter2: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r11);	if $z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".");	r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".");	$z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>();	if $z1 == 0 goto $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>();	$r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>();	r0 = $r13;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = new java.io.File;	$z2 = virtualinvoke r10.<java.io.File: boolean isDirectory()>();	if $z2 == 0 goto $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>();	$r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>();	specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7);	$r8 := @caughtexception;	staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r4);	$r9 = new cn.hutool.extra.ftp.FtpException;	specialinvoke $r9.<cn.hutool.extra.ftp.FtpException: void <init>(java.lang.Throwable)>($r8);	throw $r9
;block_num 8