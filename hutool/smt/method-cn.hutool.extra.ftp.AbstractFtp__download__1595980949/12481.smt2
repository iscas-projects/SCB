(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3629 0)
(declare-sort var3750 0)
(declare-sort var1797 0)
(declare-sort var622 0)
(declare-sort var1412 0)
(declare-sort var1290 0)
(declare-sort var1224 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var622_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var622_addPrefixIfNot/-1816210460 (String String) String)
(declare-fun isDirectory/-2122094196 (var1797) Bool)
(declare-fun var1412_getName/1338961181 (String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1797-init () var1797)
(declare-fun getParentFile/-182598033 (var1797) var1797)
(declare-fun <init>/-1833447926 (var1797 var1797 String) void)
(declare-fun var1412_del/1777529281 (var1797) Bool)
(declare-fun var1224-init () var1224)
(declare-fun <init>/-1439883720 (var1224 var1290) void)
(declare-const null-var3629 var3629)
(declare-const null-String String)
(declare-const null-var1797 var1797)
(declare-const null-var1290 var1290)
(declare-const var1795 var3629) ; Statement: r5 := @this: cn.hutool.extra.ftp.AbstractFtp 
(assert (not (= var1795 null-var3629)))
(declare-const var3545 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3545 null-String)))
(declare-const var2857 var1797) ; Statement: r10 := @parameter1: java.io.File 
(assert (not (= var2857 null-var1797)))
(declare-const var2043 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var2043 null-String)))
(define-const var328 Bool (var622_isBlank/-1569658263 (cast-from-String-to-String var2043))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r11) 
 ; Statement: if $z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".") 
(assert (= (ite var328 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1359 String (var622_addPrefixIfNot/-1816210460 (cast-from-String-to-String var2043) (cast-from-String-to-String "."))) ; Statement: r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".") 
(assert true) ; Non Conditional
(assert true)
(define-const var1855 Bool (isDirectory/-2122094196 var2857)) ; Statement: $z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z1 == 0 goto $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>() 
(assert (not (= (ite var1855 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2988 String (var1412_getName/1338961181 var3545)) ; Statement: $r13 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String getName(java.lang.String)>(r6) 
 ; Statement: goto [?= r0 = $r13] 
(assert true) ; Non Conditional
(define-const var2758 String var2988) ; Statement: r0 = $r13 
(define-const var477 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var477)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var477!1 String)
(assert (= var477!1 ""))
(assert true)
(define-const var1713 String (append/672562846 var477!1 var2988)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var477!2 String)
(assert (= var477!2 (str.++ var477!1 var2988)))
(assert true)
(define-const var2926 String (append/672562846 var1713 var1359)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var1713!1 String)
(assert (= var1713!1 (str.++ var1713 var1359)))
(assert true)
(define-const var1449 String (toString/-2075883882 var2926)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3583 var1797 var1797-init) ; Statement: $r4 = new java.io.File 
(assert true)
(define-const var3848 Bool (isDirectory/-2122094196 var2857)) ; Statement: $z2 = virtualinvoke r10.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z2 == 0 goto $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>() 
(assert (= (ite var3848 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var525 var1797 (getParentFile/-182598033 var2857)) ; Statement: $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1833447926 var3583 var525 var1449)) ; Statement: specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7) 

(declare-const var3583!1 var1797)
(declare-const var525!1 var1797)
(declare-const var1449!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2982 var1290) ; Statement: $r8 := @caughtexception 
(assert (not (= var2982 null-var1290)))
;(assert (var1412_del/1777529281 var3583!1)) ; Statement: staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r4) 

(declare-const var3583!2 var1797)
(define-const var3268 var1224 var1224-init) ; Statement: $r9 = new cn.hutool.extra.ftp.FtpException 
(assert true)
;(assert (<init>/-1439883720 var3268 var2982)) ; Statement: specialinvoke $r9.<cn.hutool.extra.ftp.FtpException: void <init>(java.lang.Throwable)>($r8) 

(declare-const var3268!1 var1224)
(declare-const var2982!1 var1290)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var622_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var622_addPrefixIfNot/-1816210460=([java.lang.CharSequence, java.lang.CharSequence], java.lang.String), isDirectory/-2122094196=([java.io.File], boolean), var1412_getName/1338961181=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1797-init=([], java.io.File), getParentFile/-182598033=([java.io.File], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), var1412_del/1777529281=([java.io.File], boolean), var1224-init=([], cn.hutool.extra.ftp.FtpException), <init>/-1439883720=([cn.hutool.extra.ftp.FtpException, java.lang.Throwable], void)}
; {var3629=cn.hutool.extra.ftp.AbstractFtp, var1795=r5, var3545=r6, var3750=null_type, var1797=java.io.File, var2857=r10, var2043=r11, var622=cn.hutool.core.text.CharSequenceUtil, var328=$z0, var1359=r12, var1855=$z1, var1412=cn.hutool.core.io.FileUtil, var2988=$r13, var2758=r0, var477=$r1, var1713=$r2, var2926=$r3, var1449=$r7, var3583=$r4, var3848=$z2, var525=$r14, var1290=java.lang.Throwable, var2982=$r8, var1224=cn.hutool.extra.ftp.FtpException, var3268=$r9}
; {cn.hutool.extra.ftp.AbstractFtp=var3629, r5=var1795, r6=var3545, null_type=var3750, java.io.File=var1797, r10=var2857, r11=var2043, cn.hutool.core.text.CharSequenceUtil=var622, $z0=var328, r12=var1359, $z1=var1855, cn.hutool.core.io.FileUtil=var1412, $r13=var2988, r0=var2758, $r1=var477, $r2=var1713, $r3=var2926, $r7=var1449, $r4=var3583, $z2=var3848, $r14=var525, java.lang.Throwable=var1290, $r8=var2982, cn.hutool.extra.ftp.FtpException=var1224, $r9=var3268}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: cn.hutool.extra.ftp.AbstractFtp;	r6 := @parameter0: java.lang.String;	r10 := @parameter1: java.io.File;	r11 := @parameter2: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r11);	if $z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".");	r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".");	$z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>();	if $z1 == 0 goto $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>();	$r13 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String getName(java.lang.String)>(r6);	goto [?= r0 = $r13];	r0 = $r13;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = new java.io.File;	$z2 = virtualinvoke r10.<java.io.File: boolean isDirectory()>();	if $z2 == 0 goto $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>();	$r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>();	specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7);	$r8 := @caughtexception;	staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r4);	$r9 = new cn.hutool.extra.ftp.FtpException;	specialinvoke $r9.<cn.hutool.extra.ftp.FtpException: void <init>(java.lang.Throwable)>($r8);	throw $r9
;block_num 8