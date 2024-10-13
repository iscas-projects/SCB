(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1287 0)
(declare-sort var3022 0)
(declare-sort var1516 0)
(declare-sort var3069 0)
(declare-sort var3538 0)
(declare-sort var1120 0)
(declare-sort var2666 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3069_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun isDirectory/-2122094196 (var1516) Bool)
(declare-fun getName/1128186653 (var1516) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1516-init () var1516)
(declare-fun getParentFile/-182598033 (var1516) var1516)
(declare-fun <init>/-1833447926 (var1516 var1516 String) void)
(declare-fun var1120_del/1777529281 (var1516) Bool)
(declare-fun var2666-init () var2666)
(declare-fun <init>/-1439883720 (var2666 var3538) void)
(declare-const null-var1287 var1287)
(declare-const null-String String)
(declare-const null-var1516 var1516)
(declare-const null-var3538 var3538)
(declare-const var2037 var1287) ; Statement: r5 := @this: cn.hutool.extra.ftp.AbstractFtp 
(assert (not (= var2037 null-var1287)))
(declare-const var2930 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2930 null-String)))
(declare-const var2415 var1516) ; Statement: r10 := @parameter1: java.io.File 
(assert (not (= var2415 null-var1516)))
(declare-const var2600 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var2600 null-String)))
(define-const var933 Bool (var3069_isBlank/-1569658263 (cast-from-String-to-String var2600))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r11) 
 ; Statement: if $z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".") 
(assert (not (= (ite var933 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1515 String ".temp") ; Statement: r12 = ".temp" 
 ; Statement: goto [?= $z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2664 Bool (isDirectory/-2122094196 var2415)) ; Statement: $z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z1 == 0 goto $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>() 
(assert (= (ite var2664 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3304 String (getName/1128186653 var2415)) ; Statement: $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>() 
(assert true) ; Non Conditional
(define-const var1173 String var3304) ; Statement: r0 = $r13 
(define-const var2836 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2836)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2836!1 String)
(assert (= var2836!1 ""))
(assert true)
(define-const var1959 String (append/672562846 var2836!1 var3304)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2836!2 String)
(assert (= var2836!2 (str.++ var2836!1 var3304)))
(assert true)
(define-const var3024 String (append/672562846 var1959 var1515)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var1959!1 String)
(assert (= var1959!1 (str.++ var1959 var1515)))
(assert true)
(define-const var1644 String (toString/-2075883882 var3024)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2804 var1516 var1516-init) ; Statement: $r4 = new java.io.File 
(assert true)
(define-const var3822 Bool (isDirectory/-2122094196 var2415)) ; Statement: $z2 = virtualinvoke r10.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z2 == 0 goto $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>() 
(assert (= (ite var3822 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2732 var1516 (getParentFile/-182598033 var2415)) ; Statement: $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1833447926 var2804 var2732 var1644)) ; Statement: specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7) 

(declare-const var2804!1 var1516)
(declare-const var2732!1 var1516)
(declare-const var1644!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3409 var3538) ; Statement: $r8 := @caughtexception 
(assert (not (= var3409 null-var3538)))
;(assert (var1120_del/1777529281 var2804!1)) ; Statement: staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r4) 

(declare-const var2804!2 var1516)
(define-const var1324 var2666 var2666-init) ; Statement: $r9 = new cn.hutool.extra.ftp.FtpException 
(assert true)
;(assert (<init>/-1439883720 var1324 var3409)) ; Statement: specialinvoke $r9.<cn.hutool.extra.ftp.FtpException: void <init>(java.lang.Throwable)>($r8) 

(declare-const var1324!1 var2666)
(declare-const var3409!1 var3538)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3069_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), isDirectory/-2122094196=([java.io.File], boolean), getName/1128186653=([java.io.File], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1516-init=([], java.io.File), getParentFile/-182598033=([java.io.File], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), var1120_del/1777529281=([java.io.File], boolean), var2666-init=([], cn.hutool.extra.ftp.FtpException), <init>/-1439883720=([cn.hutool.extra.ftp.FtpException, java.lang.Throwable], void)}
; {var1287=cn.hutool.extra.ftp.AbstractFtp, var2037=r5, var2930=r6, var3022=null_type, var1516=java.io.File, var2415=r10, var2600=r11, var3069=cn.hutool.core.text.CharSequenceUtil, var933=$z0, var1515=r12, var2664=$z1, var3304=$r13, var1173=r0, var2836=$r1, var1959=$r2, var3024=$r3, var1644=$r7, var2804=$r4, var3822=$z2, var2732=$r14, var3538=java.lang.Throwable, var3409=$r8, var1120=cn.hutool.core.io.FileUtil, var2666=cn.hutool.extra.ftp.FtpException, var1324=$r9}
; {cn.hutool.extra.ftp.AbstractFtp=var1287, r5=var2037, r6=var2930, null_type=var3022, java.io.File=var1516, r10=var2415, r11=var2600, cn.hutool.core.text.CharSequenceUtil=var3069, $z0=var933, r12=var1515, $z1=var2664, $r13=var3304, r0=var1173, $r1=var2836, $r2=var1959, $r3=var3024, $r7=var1644, $r4=var2804, $z2=var3822, $r14=var2732, java.lang.Throwable=var3538, $r8=var3409, cn.hutool.core.io.FileUtil=var1120, cn.hutool.extra.ftp.FtpException=var2666, $r9=var1324}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: cn.hutool.extra.ftp.AbstractFtp;	r6 := @parameter0: java.lang.String;	r10 := @parameter1: java.io.File;	r11 := @parameter2: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r11);	if $z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addPrefixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r11, ".");	r12 = ".temp";	goto [?= $z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>()];	$z1 = virtualinvoke r10.<java.io.File: boolean isDirectory()>();	if $z1 == 0 goto $r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>();	$r13 = virtualinvoke r10.<java.io.File: java.lang.String getName()>();	r0 = $r13;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = new java.io.File;	$z2 = virtualinvoke r10.<java.io.File: boolean isDirectory()>();	if $z2 == 0 goto $r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>();	$r14 = virtualinvoke r10.<java.io.File: java.io.File getParentFile()>();	specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>($r14, $r7);	$r8 := @caughtexception;	staticinvoke <cn.hutool.core.io.FileUtil: boolean del(java.io.File)>($r4);	$r9 = new cn.hutool.extra.ftp.FtpException;	specialinvoke $r9.<cn.hutool.extra.ftp.FtpException: void <init>(java.lang.Throwable)>($r8);	throw $r9
;block_num 8