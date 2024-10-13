(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var181 0)
(declare-sort var1013 0)
(declare-sort var961 0)
(declare-sort var2221 0)
(declare-sort var1952 0)
(declare-sort var2059 0)
(declare-sort var3153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2221_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2221_addPrefixIfNot/-1816210460 (String String) String)
(declare-fun isDirectory/-2122094196 (var961) Bool)
(declare-fun var1952_getName/1338961181 (String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var961-init () var961)
(declare-fun <init>/-1833447926 (var961 var961 String) void)
(declare-fun var1952_del/1777529281 (var961) Bool)
(declare-fun var3153-init () var3153)
(declare-fun <init>/-1439883720 (var3153 var2059) void)
(declare-const null-var181 var181)
(declare-const null-String String)
(declare-const null-var961 var961)
(declare-const null-var2059 var2059)
(declare-const var980 var181) ; Statement: r5 := @this: cn.hutool.extra.ftp.AbstractFtp 
(assert (not (= var980 null-var181)))
(declare-const var2958 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2958 null-String)))
(declare-const var3734 var961) ; Statement: r10 := @parameter1: java.io.File 
(assert (not (= var3734 null-var961)))
(declare-const var1722 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var1722 null-String)))
(define-const var1070 Bool (var2221_isBlank/-1569658263 (cast-from-String-to-String var1722))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r11) 
 ; Statement: if $z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".") 
(assert (= (ite var1070 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3408 String (var2221_addPrefixIfNot/-1816210460 (cast-from-String-to-String var1722) (cast-from-String-to-String "."))) ; Statement: r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".") 
(assert true) ; Non Conditional
(assert true)
(define-const var3049 Bool (isDirectory/-2122094196 var3734)) ; Statement: $z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z1 == 0 goto $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>() 
(assert (not (= (ite var3049 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2817 String (var1952_getName/1338961181 var2958)) ; Statement: $r13 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String getName(java.lang.String)>(r6) 
 ; Statement: goto [?= r0 = $r13] 
(assert true) ; Non Conditional
(define-const var3041 String var2817) ; Statement: r0 = $r13 
(define-const var767 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var767)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var767!1 String)
(assert (= var767!1 ""))
(assert true)
(define-const var2025 String (append/672562846 var767!1 var2817)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var767!2 String)
(assert (= var767!2 (str.++ var767!1 var2817)))
(assert true)
(define-const var1613 String (append/672562846 var2025 var3408)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var2025!1 String)
(assert (= var2025!1 (str.++ var2025 var3408)))
(assert true)
(define-const var1179 String (toString/-2075883882 var1613)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3769 var961 var961-init) ; Statement: $r4 = new java.io.File 
(assert true)
(define-const var1174 Bool (isDirectory/-2122094196 var3734)) ; Statement: $z2 = virtualinvoke r10.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z2 == 0 goto $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>() 
(assert (not (= (ite var1174 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3585 var961 var3734) ; Statement: $r14 = r10 
 ; Statement: goto [?= specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1833447926 var3769 var3585 var1179)) ; Statement: specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7) 

(declare-const var3769!1 var961)
(declare-const var3585!1 var961)
(declare-const var1179!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2834 var2059) ; Statement: $r8 := @caughtexception 
(assert (not (= var2834 null-var2059)))
;(assert (var1952_del/1777529281 var3769!1)) ; Statement: staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r4) 

(declare-const var3769!2 var961)
(define-const var2172 var3153 var3153-init) ; Statement: $r9 = new cn.hutool.extra.ftp.FtpException 
(assert true)
;(assert (<init>/-1439883720 var2172 var2834)) ; Statement: specialinvoke $r9.<cn.hutool.extra.ftp.FtpException: void <init>(java.lang.Throwable)>($r8) 

(declare-const var2172!1 var3153)
(declare-const var2834!1 var2059)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2221_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2221_addPrefixIfNot/-1816210460=([java.lang.CharSequence, java.lang.CharSequence], java.lang.String), isDirectory/-2122094196=([java.io.File], boolean), var1952_getName/1338961181=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var961-init=([], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), var1952_del/1777529281=([java.io.File], boolean), var3153-init=([], cn.hutool.extra.ftp.FtpException), <init>/-1439883720=([cn.hutool.extra.ftp.FtpException, java.lang.Throwable], void)}
; {var181=cn.hutool.extra.ftp.AbstractFtp, var980=r5, var2958=r6, var1013=null_type, var961=java.io.File, var3734=r10, var1722=r11, var2221=cn.hutool.core.text.CharSequenceUtil, var1070=$z0, var3408=r12, var3049=$z1, var1952=cn.hutool.core.io.FileUtil, var2817=$r13, var3041=r0, var767=$r1, var2025=$r2, var1613=$r3, var1179=$r7, var3769=$r4, var1174=$z2, var3585=$r14, var2059=java.lang.Throwable, var2834=$r8, var3153=cn.hutool.extra.ftp.FtpException, var2172=$r9}
; {cn.hutool.extra.ftp.AbstractFtp=var181, r5=var980, r6=var2958, null_type=var1013, java.io.File=var961, r10=var3734, r11=var1722, cn.hutool.core.text.CharSequenceUtil=var2221, $z0=var1070, r12=var3408, $z1=var3049, cn.hutool.core.io.FileUtil=var1952, $r13=var2817, r0=var3041, $r1=var767, $r2=var2025, $r3=var1613, $r7=var1179, $r4=var3769, $z2=var1174, $r14=var3585, java.lang.Throwable=var2059, $r8=var2834, cn.hutool.extra.ftp.FtpException=var3153, $r9=var2172}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: cn.hutool.extra.ftp.AbstractFtp;	r6 := @parameter0: java.lang.String;	r10 := @parameter1: java.io.File;	r11 := @parameter2: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r11);	if $z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".");	r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".");	$z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>();	if $z1 == 0 goto $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>();	$r13 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String getName(java.lang.String)>(r6);	goto [?= r0 = $r13];	r0 = $r13;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = new java.io.File;	$z2 = virtualinvoke r10.<java.io.File: boolean isDirectory()>();	if $z2 == 0 goto $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>();	$r14 = r10;	goto [?= specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7)];	specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7);	$r8 := @caughtexception;	staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r4);	$r9 = new cn.hutool.extra.ftp.FtpException;	specialinvoke $r9.<cn.hutool.extra.ftp.FtpException: void <init>(java.lang.Throwable)>($r8);	throw $r9
;block_num 8