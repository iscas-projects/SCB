(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1986 0)
(declare-sort var3724 0)
(declare-sort var3329 0)
(declare-sort var1072 0)
(declare-sort var1862 0)
(declare-sort var2491 0)
(declare-sort var34 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1072_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun isDirectory/-2122094196 (var3329) Bool)
(declare-fun getName/1128186653 (var3329) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3329-init () var3329)
(declare-fun <init>/-1833447926 (var3329 var3329 String) void)
(declare-fun var2491_del/1777529281 (var3329) Bool)
(declare-fun var34-init () var34)
(declare-fun <init>/-1439883720 (var34 var1862) void)
(declare-const null-var1986 var1986)
(declare-const null-String String)
(declare-const null-var3329 var3329)
(declare-const null-var1862 var1862)
(declare-const var1896 var1986) ; Statement: r5 := @this: cn.hutool.extra.ftp.AbstractFtp 
(assert (not (= var1896 null-var1986)))
(declare-const var2995 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2995 null-String)))
(declare-const var1661 var3329) ; Statement: r10 := @parameter1: java.io.File 
(assert (not (= var1661 null-var3329)))
(declare-const var3732 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var3732 null-String)))
(define-const var1637 Bool (var1072_isBlank/-1569658263 (cast-from-String-to-String var3732))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r11) 
 ; Statement: if $z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".") 
(assert (not (= (ite var1637 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1267 String ".temp") ; Statement: r12 = ".temp" 
 ; Statement: goto [?= $z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3638 Bool (isDirectory/-2122094196 var1661)) ; Statement: $z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z1 == 0 goto $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>() 
(assert (= (ite var3638 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2165 String (getName/1128186653 var1661)) ; Statement: $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>() 
(assert true) ; Non Conditional
(define-const var3863 String var2165) ; Statement: r0 = $r13 
(define-const var2225 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2225)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2225!1 String)
(assert (= var2225!1 ""))
(assert true)
(define-const var104 String (append/672562846 var2225!1 var2165)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2225!2 String)
(assert (= var2225!2 (str.++ var2225!1 var2165)))
(assert true)
(define-const var3235 String (append/672562846 var104 var1267)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var104!1 String)
(assert (= var104!1 (str.++ var104 var1267)))
(assert true)
(define-const var190 String (toString/-2075883882 var3235)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var859 var3329 var3329-init) ; Statement: $r4 = new java.io.File 
(assert true)
(define-const var708 Bool (isDirectory/-2122094196 var1661)) ; Statement: $z2 = virtualinvoke r10.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z2 == 0 goto $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>() 
(assert (not (= (ite var708 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3740 var3329 var1661) ; Statement: $r14 = r10 
 ; Statement: goto [?= specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1833447926 var859 var3740 var190)) ; Statement: specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7) 

(declare-const var859!1 var3329)
(declare-const var3740!1 var3329)
(declare-const var190!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var53 var1862) ; Statement: $r8 := @caughtexception 
(assert (not (= var53 null-var1862)))
;(assert (var2491_del/1777529281 var859!1)) ; Statement: staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r4) 

(declare-const var859!2 var3329)
(define-const var259 var34 var34-init) ; Statement: $r9 = new cn.hutool.extra.ftp.FtpException 
(assert true)
;(assert (<init>/-1439883720 var259 var53)) ; Statement: specialinvoke $r9.<cn.hutool.extra.ftp.FtpException: void <init>(java.lang.Throwable)>($r8) 

(declare-const var259!1 var34)
(declare-const var53!1 var1862)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1072_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), isDirectory/-2122094196=([java.io.File], boolean), getName/1128186653=([java.io.File], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3329-init=([], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), var2491_del/1777529281=([java.io.File], boolean), var34-init=([], cn.hutool.extra.ftp.FtpException), <init>/-1439883720=([cn.hutool.extra.ftp.FtpException, java.lang.Throwable], void)}
; {var1986=cn.hutool.extra.ftp.AbstractFtp, var1896=r5, var2995=r6, var3724=null_type, var3329=java.io.File, var1661=r10, var3732=r11, var1072=cn.hutool.core.text.CharSequenceUtil, var1637=$z0, var1267=r12, var3638=$z1, var2165=$r13, var3863=r0, var2225=$r1, var104=$r2, var3235=$r3, var190=$r7, var859=$r4, var708=$z2, var3740=$r14, var1862=java.lang.Throwable, var53=$r8, var2491=cn.hutool.core.io.FileUtil, var34=cn.hutool.extra.ftp.FtpException, var259=$r9}
; {cn.hutool.extra.ftp.AbstractFtp=var1986, r5=var1896, r6=var2995, null_type=var3724, java.io.File=var3329, r10=var1661, r11=var3732, cn.hutool.core.text.CharSequenceUtil=var1072, $z0=var1637, r12=var1267, $z1=var3638, $r13=var2165, r0=var3863, $r1=var2225, $r2=var104, $r3=var3235, $r7=var190, $r4=var859, $z2=var708, $r14=var3740, java.lang.Throwable=var1862, $r8=var53, cn.hutool.core.io.FileUtil=var2491, cn.hutool.extra.ftp.FtpException=var34, $r9=var259}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: cn.hutool.extra.ftp.AbstractFtp;	r6 := @parameter0: java.lang.String;	r10 := @parameter1: java.io.File;	r11 := @parameter2: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r11);	if $z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".");	r12 = ".temp";	goto [?= $z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>()];	$z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>();	if $z1 == 0 goto $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>();	$r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>();	r0 = $r13;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = new java.io.File;	$z2 = virtualinvoke r10.<java.io.File: boolean isDirectory()>();	if $z2 == 0 goto $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>();	$r14 = r10;	goto [?= specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7)];	specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7);	$r8 := @caughtexception;	staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r4);	$r9 = new cn.hutool.extra.ftp.FtpException;	specialinvoke $r9.<cn.hutool.extra.ftp.FtpException: void <init>(java.lang.Throwable)>($r8);	throw $r9
;block_num 8