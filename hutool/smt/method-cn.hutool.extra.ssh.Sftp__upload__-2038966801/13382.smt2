(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var34 0)
(declare-sort var2675 0)
(declare-sort var1050 0)
(declare-sort var1141 0)
(declare-sort var109 0)
(declare-sort var239 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1141_addSuffixIfNot/-1841592187 (String String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1141_removePrefix/1458295415 (String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun put/991590876 (var34 var1050 String var239 var109) var34)
(declare-const null-var34 var34)
(declare-const null-String String)
(declare-const null-var1050 var1050)
(declare-const var109-OVERWRITE var109)
(declare-const null-NullType var2675)
(declare-const null-var239 var239)
(declare-const var670 var34) ; Statement: r6 := @this: cn.hutool.extra.ssh.Sftp 
(assert (not (= var670 null-var34)))
(declare-const var2328 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var2328 null-String)))
(declare-const var309 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var309 null-String)))
(declare-const var3124 var1050) ; Statement: r7 := @parameter2: java.io.InputStream 
(assert (not (= var3124 null-var1050)))
(define-const var812 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var812)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var812!1 String)
(assert (= var812!1 ""))
(define-const var3541 String (var1141_addSuffixIfNot/-1841592187 (cast-from-String-to-String var2328) (cast-from-String-to-String "/"))) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addSuffixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r9, "/") 
(assert true)
(define-const var3841 String (append/672562846 var812!1 var3541)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var812!2 String)
(assert (= var812!2 (str.++ var812!1 var3541)))
(define-const var3687 String (var1141_removePrefix/1458295415 (cast-from-String-to-String var309) (cast-from-String-to-String "/"))) ; Statement: $r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String removePrefix(java.lang.CharSequence,java.lang.CharSequence)>(r2, "/") 
(assert true)
(define-const var322 String (append/672562846 var3841 var3687)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3841!1 String)
(assert (= var3841!1 (str.++ var3841 var3687)))
(assert true)
(define-const var3488 String (toString/-2075883882 var322)) ; Statement: r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2205 var109 var109-OVERWRITE) ; Statement: $r8 = <cn.hutool.extra.ssh.Sftp$Mode: cn.hutool.extra.ssh.Sftp$Mode OVERWRITE> 
(assert true)
;(assert (put/991590876 var670 var3124 var3488 null-var239 var2205)) ; Statement: virtualinvoke r6.<cn.hutool.extra.ssh.Sftp: cn.hutool.extra.ssh.Sftp put(java.io.InputStream,java.lang.String,com.jcraft.jsch.SftpProgressMonitor,cn.hutool.extra.ssh.Sftp$Mode)>(r7, r10, null, $r8) 

(declare-const var670!1 var34)
(declare-const var3124!1 var1050)
(declare-const var3488!1 String)
(declare-const var2276 var2675)
(declare-const var2205!1 var109)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1141_addSuffixIfNot/-1841592187=([java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1141_removePrefix/1458295415=([java.lang.CharSequence, java.lang.CharSequence], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), put/991590876=([cn.hutool.extra.ssh.Sftp, java.io.InputStream, java.lang.String, com.jcraft.jsch.SftpProgressMonitor, cn.hutool.extra.ssh.Sftp$Mode], cn.hutool.extra.ssh.Sftp)}
; {var34=cn.hutool.extra.ssh.Sftp, var670=r6, var2328=r9, var2675=null_type, var309=r2, var1050=java.io.InputStream, var3124=r7, var812=$r0, var1141=cn.hutool.core.text.CharSequenceUtil, var3541=$r1, var3841=$r4, var3687=$r3, var322=$r5, var3488=r10, var109=cn.hutool.extra.ssh.Sftp$Mode, var2205=$r8, var239=com.jcraft.jsch.SftpProgressMonitor, var2276=null}
; {cn.hutool.extra.ssh.Sftp=var34, r6=var670, r9=var2328, null_type=var2675, r2=var309, java.io.InputStream=var1050, r7=var3124, $r0=var812, cn.hutool.core.text.CharSequenceUtil=var1141, $r1=var3541, $r4=var3841, $r3=var3687, $r5=var322, r10=var3488, cn.hutool.extra.ssh.Sftp$Mode=var109, $r8=var2205, com.jcraft.jsch.SftpProgressMonitor=var239, null=var2276}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: cn.hutool.extra.ssh.Sftp;	r9 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r7 := @parameter2: java.io.InputStream;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String addSuffixIfNot(java.lang.CharSequence,java.lang.CharSequence)>(r9, "/");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String removePrefix(java.lang.CharSequence,java.lang.CharSequence)>(r2, "/");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = <cn.hutool.extra.ssh.Sftp$Mode: cn.hutool.extra.ssh.Sftp$Mode OVERWRITE>;	virtualinvoke r6.<cn.hutool.extra.ssh.Sftp: cn.hutool.extra.ssh.Sftp put(java.io.InputStream,java.lang.String,com.jcraft.jsch.SftpProgressMonitor,cn.hutool.extra.ssh.Sftp$Mode)>(r7, r10, null, $r8);	return 1
;block_num 1