(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var662 0)
(declare-sort var3161 0)
(declare-sort var2009 0)
(declare-sort var3087 0)
(declare-sort var1828 0)
(declare-sort var3677 0)
(declare-sort var2857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3087_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun isDirectory/-2122094196 (var2009) Bool)
(declare-fun var1828_getName/1338961181 (String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2009-init () var2009)
(declare-fun getParentFile/-182598033 (var2009) var2009)
(declare-fun <init>/-1833447926 (var2009 var2009 String) void)
(declare-fun var1828_del/1777529281 (var2009) Bool)
(declare-fun var2857-init () var2857)
(declare-fun <init>/-1439883720 (var2857 var3677) void)
(declare-const null-var662 var662)
(declare-const null-String String)
(declare-const null-var2009 var2009)
(declare-const null-var3677 var3677)
(declare-const var497 var662) ; Statement: r5 := @this: cn.hutool.extra.ftp.AbstractFtp 
(assert (not (= var497 null-var662)))
(declare-const var3875 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3875 null-String)))
(declare-const var2611 var2009) ; Statement: r10 := @parameter1: java.io.File 
(assert (not (= var2611 null-var2009)))
(declare-const var1737 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var1737 null-String)))
(define-const var3435 Bool (var3087_isBlank/-1569658263 (cast-from-String-to-String var1737))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r11) 
 ; Statement: if $z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".") 
(assert (not (= (ite var3435 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var797 String ".temp") ; Statement: r12 = ".temp" 
 ; Statement: goto [?= $z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3490 Bool (isDirectory/-2122094196 var2611)) ; Statement: $z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z1 == 0 goto $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>() 
(assert (not (= (ite var3490 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1037 String (var1828_getName/1338961181 var3875)) ; Statement: $r13 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String getName(java.lang.String)>(r6) 
 ; Statement: goto [?= r0 = $r13] 
(assert true) ; Non Conditional
(define-const var59 String var1037) ; Statement: r0 = $r13 
(define-const var495 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var495)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var495!1 String)
(assert (= var495!1 ""))
(assert true)
(define-const var396 String (append/672562846 var495!1 var1037)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var495!2 String)
(assert (= var495!2 (str.++ var495!1 var1037)))
(assert true)
(define-const var3233 String (append/672562846 var396 var797)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var396!1 String)
(assert (= var396!1 (str.++ var396 var797)))
(assert true)
(define-const var2680 String (toString/-2075883882 var3233)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3820 var2009 var2009-init) ; Statement: $r4 = new java.io.File 
(assert true)
(define-const var325 Bool (isDirectory/-2122094196 var2611)) ; Statement: $z2 = virtualinvoke r10.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z2 == 0 goto $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>() 
(assert (= (ite var325 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2993 var2009 (getParentFile/-182598033 var2611)) ; Statement: $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1833447926 var3820 var2993 var2680)) ; Statement: specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7) 

(declare-const var3820!1 var2009)
(declare-const var2993!1 var2009)
(declare-const var2680!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3576 var3677) ; Statement: $r8 := @caughtexception 
(assert (not (= var3576 null-var3677)))
;(assert (var1828_del/1777529281 var3820!1)) ; Statement: staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r4) 

(declare-const var3820!2 var2009)
(define-const var3608 var2857 var2857-init) ; Statement: $r9 = new cn.hutool.extra.ftp.FtpException 
(assert true)
;(assert (<init>/-1439883720 var3608 var3576)) ; Statement: specialinvoke $r9.<cn.hutool.extra.ftp.FtpException: void <init>(java.lang.Throwable)>($r8) 

(declare-const var3608!1 var2857)
(declare-const var3576!1 var3677)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3087_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), isDirectory/-2122094196=([java.io.File], boolean), var1828_getName/1338961181=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2009-init=([], java.io.File), getParentFile/-182598033=([java.io.File], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), var1828_del/1777529281=([java.io.File], boolean), var2857-init=([], cn.hutool.extra.ftp.FtpException), <init>/-1439883720=([cn.hutool.extra.ftp.FtpException, java.lang.Throwable], void)}
; {var662=cn.hutool.extra.ftp.AbstractFtp, var497=r5, var3875=r6, var3161=null_type, var2009=java.io.File, var2611=r10, var1737=r11, var3087=cn.hutool.core.text.CharSequenceUtil, var3435=$z0, var797=r12, var3490=$z1, var1828=cn.hutool.core.io.FileUtil, var1037=$r13, var59=r0, var495=$r1, var396=$r2, var3233=$r3, var2680=$r7, var3820=$r4, var325=$z2, var2993=$r14, var3677=java.lang.Throwable, var3576=$r8, var2857=cn.hutool.extra.ftp.FtpException, var3608=$r9}
; {cn.hutool.extra.ftp.AbstractFtp=var662, r5=var497, r6=var3875, null_type=var3161, java.io.File=var2009, r10=var2611, r11=var1737, cn.hutool.core.text.CharSequenceUtil=var3087, $z0=var3435, r12=var797, $z1=var3490, cn.hutool.core.io.FileUtil=var1828, $r13=var1037, r0=var59, $r1=var495, $r2=var396, $r3=var3233, $r7=var2680, $r4=var3820, $z2=var325, $r14=var2993, java.lang.Throwable=var3677, $r8=var3576, cn.hutool.extra.ftp.FtpException=var2857, $r9=var3608}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: cn.hutool.extra.ftp.AbstractFtp;	r6 := @parameter0: java.lang.String;	r10 := @parameter1: java.io.File;	r11 := @parameter2: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r11);	if $z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".");	r12 = ".temp";	goto [?= $z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>()];	$z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>();	if $z1 == 0 goto $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>();	$r13 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String getName(java.lang.String)>(r6);	goto [?= r0 = $r13];	r0 = $r13;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = new java.io.File;	$z2 = virtualinvoke r10.<java.io.File: boolean isDirectory()>();	if $z2 == 0 goto $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>();	$r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>();	specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7);	$r8 := @caughtexception;	staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r4);	$r9 = new cn.hutool.extra.ftp.FtpException;	specialinvoke $r9.<cn.hutool.extra.ftp.FtpException: void <init>(java.lang.Throwable)>($r8);	throw $r9
;block_num 8