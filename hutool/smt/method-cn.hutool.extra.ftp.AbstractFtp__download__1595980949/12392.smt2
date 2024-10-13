(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2116 0)
(declare-sort var1310 0)
(declare-sort var249 0)
(declare-sort var3027 0)
(declare-sort var509 0)
(declare-sort var2834 0)
(declare-sort var2702 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3027_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun isDirectory/-2122094196 (var249) Bool)
(declare-fun var509_getName/1338961181 (String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var249-init () var249)
(declare-fun <init>/-1833447926 (var249 var249 String) void)
(declare-fun var509_del/1777529281 (var249) Bool)
(declare-fun var2702-init () var2702)
(declare-fun <init>/-1439883720 (var2702 var2834) void)
(declare-const null-var2116 var2116)
(declare-const null-String String)
(declare-const null-var249 var249)
(declare-const null-var2834 var2834)
(declare-const var351 var2116) ; Statement: r5 := @this: cn.hutool.extra.ftp.AbstractFtp 
(assert (not (= var351 null-var2116)))
(declare-const var1065 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var1065 null-String)))
(declare-const var110 var249) ; Statement: r10 := @parameter1: java.io.File 
(assert (not (= var110 null-var249)))
(declare-const var1176 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var1176 null-String)))
(define-const var2976 Bool (var3027_isBlank/-1569658263 (cast-from-String-to-String var1176))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r11) 
 ; Statement: if $z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".") 
(assert (not (= (ite var2976 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2438 String ".temp") ; Statement: r12 = ".temp" 
 ; Statement: goto [?= $z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2468 Bool (isDirectory/-2122094196 var110)) ; Statement: $z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z1 == 0 goto $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>() 
(assert (not (= (ite var2468 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var149 String (var509_getName/1338961181 var1065)) ; Statement: $r13 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String getName(java.lang.String)>(r6) 
 ; Statement: goto [?= r0 = $r13] 
(assert true) ; Non Conditional
(define-const var2701 String var149) ; Statement: r0 = $r13 
(define-const var1708 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1708)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1708!1 String)
(assert (= var1708!1 ""))
(assert true)
(define-const var447 String (append/672562846 var1708!1 var149)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1708!2 String)
(assert (= var1708!2 (str.++ var1708!1 var149)))
(assert true)
(define-const var1713 String (append/672562846 var447 var2438)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var447!1 String)
(assert (= var447!1 (str.++ var447 var2438)))
(assert true)
(define-const var1505 String (toString/-2075883882 var1713)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2969 var249 var249-init) ; Statement: $r4 = new java.io.File 
(assert true)
(define-const var1521 Bool (isDirectory/-2122094196 var110)) ; Statement: $z2 = virtualinvoke r10.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z2 == 0 goto $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>() 
(assert (not (= (ite var1521 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1490 var249 var110) ; Statement: $r14 = r10 
 ; Statement: goto [?= specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1833447926 var2969 var1490 var1505)) ; Statement: specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7) 

(declare-const var2969!1 var249)
(declare-const var1490!1 var249)
(declare-const var1505!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2761 var2834) ; Statement: $r8 := @caughtexception 
(assert (not (= var2761 null-var2834)))
;(assert (var509_del/1777529281 var2969!1)) ; Statement: staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r4) 

(declare-const var2969!2 var249)
(define-const var2812 var2702 var2702-init) ; Statement: $r9 = new cn.hutool.extra.ftp.FtpException 
(assert true)
;(assert (<init>/-1439883720 var2812 var2761)) ; Statement: specialinvoke $r9.<cn.hutool.extra.ftp.FtpException: void <init>(java.lang.Throwable)>($r8) 

(declare-const var2812!1 var2702)
(declare-const var2761!1 var2834)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3027_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), isDirectory/-2122094196=([java.io.File], boolean), var509_getName/1338961181=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var249-init=([], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), var509_del/1777529281=([java.io.File], boolean), var2702-init=([], cn.hutool.extra.ftp.FtpException), <init>/-1439883720=([cn.hutool.extra.ftp.FtpException, java.lang.Throwable], void)}
; {var2116=cn.hutool.extra.ftp.AbstractFtp, var351=r5, var1065=r6, var1310=null_type, var249=java.io.File, var110=r10, var1176=r11, var3027=cn.hutool.core.text.CharSequenceUtil, var2976=$z0, var2438=r12, var2468=$z1, var509=cn.hutool.core.io.FileUtil, var149=$r13, var2701=r0, var1708=$r1, var447=$r2, var1713=$r3, var1505=$r7, var2969=$r4, var1521=$z2, var1490=$r14, var2834=java.lang.Throwable, var2761=$r8, var2702=cn.hutool.extra.ftp.FtpException, var2812=$r9}
; {cn.hutool.extra.ftp.AbstractFtp=var2116, r5=var351, r6=var1065, null_type=var1310, java.io.File=var249, r10=var110, r11=var1176, cn.hutool.core.text.CharSequenceUtil=var3027, $z0=var2976, r12=var2438, $z1=var2468, cn.hutool.core.io.FileUtil=var509, $r13=var149, r0=var2701, $r1=var1708, $r2=var447, $r3=var1713, $r7=var1505, $r4=var2969, $z2=var1521, $r14=var1490, java.lang.Throwable=var2834, $r8=var2761, cn.hutool.extra.ftp.FtpException=var2702, $r9=var2812}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: cn.hutool.extra.ftp.AbstractFtp;	r6 := @parameter0: java.lang.String;	r10 := @parameter1: java.io.File;	r11 := @parameter2: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r11);	if $z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".");	r12 = ".temp";	goto [?= $z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>()];	$z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>();	if $z1 == 0 goto $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>();	$r13 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String getName(java.lang.String)>(r6);	goto [?= r0 = $r13];	r0 = $r13;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = new java.io.File;	$z2 = virtualinvoke r10.<java.io.File: boolean isDirectory()>();	if $z2 == 0 goto $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>();	$r14 = r10;	goto [?= specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7)];	specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7);	$r8 := @caughtexception;	staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r4);	$r9 = new cn.hutool.extra.ftp.FtpException;	specialinvoke $r9.<cn.hutool.extra.ftp.FtpException: void <init>(java.lang.Throwable)>($r8);	throw $r9
;block_num 8