(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2788 0)
(declare-sort var3606 0)
(declare-sort var2819 0)
(declare-sort var3886 0)
(declare-sort var2895 0)
(declare-sort var2075 0)
(declare-sort var3915 0)
(declare-sort var2283 0)
(declare-sort var979 0)
(declare-sort var828 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2895) void)
(declare-fun cast-from-var2788-to-var2895 (var2788) var2895)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var2075-init () var2075)
(declare-fun var3915-init () var3915)
(declare-fun var979-init () var979)
(declare-fun <init>/1329437145 (var979 var828) void)
(declare-fun cast-from-var2283-to-var828 (var2283) var828)
(declare-const null-var2788 var2788)
(declare-const null-var3606 var3606)
(declare-const null-String String)
(declare-const null-var3886 var3886)
(declare-const null-var2283 var2283)
(declare-const var1864 var2788) ; Statement: r0 := @this: cn.hutool.extra.compress.archiver.StreamArchiver 
(assert (not (= var1864 null-var2788)))
(declare-const var3788 var3606) ; Statement: r14 := @parameter0: java.nio.charset.Charset 
(assert (not (= var3788 null-var3606)))
(declare-const var2840 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2840 null-String)))
(declare-const var2149 var3886) ; Statement: r5 := @parameter2: java.io.OutputStream 
(assert (not (= var2149 null-var3886)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2788-to-var2895 var1864))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1864!1 var2788)
(define-const var2031 String "tgz") ; Statement: $r2 = "tgz" 
(assert true)
(define-const var2391 Bool (equalsIgnoreCase/-92311102 var2031 var2840)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1) 
 ; Statement: if $z0 != 0 goto $r22 = new org.apache.commons.compress.archivers.tar.TarArchiveOutputStream 
(assert (not (= (ite var2391 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1958 var2075 var2075-init) ; Statement: $r22 = new org.apache.commons.compress.archivers.tar.TarArchiveOutputStream 
(define-const var2885 var3915 var3915-init) ; Statement: $r21 = new org.apache.commons.compress.compressors.gzip.GzipCompressorOutputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2318 var2283) ; Statement: $r19 := @caughtexception 
(assert (not (= var2318 null-var2283)))
(define-const var2154 var979 var979-init) ; Statement: $r23 = new cn.hutool.core.io.IORuntimeException 
(assert true)
;(assert (<init>/1329437145 var2154 (cast-from-var2283-to-var828 var2318))) ; Statement: specialinvoke $r23.<cn.hutool.core.io.IORuntimeException: void <init>(java.lang.Throwable)>($r19) 

(declare-const var2154!1 var979)
(declare-const var2318!1 var2283)
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2788-to-var2895=([cn.hutool.extra.compress.archiver.StreamArchiver], java.lang.Object), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var2075-init=([], org.apache.commons.compress.archivers.tar.TarArchiveOutputStream), var3915-init=([], org.apache.commons.compress.compressors.gzip.GzipCompressorOutputStream), var979-init=([], cn.hutool.core.io.IORuntimeException), <init>/1329437145=([cn.hutool.core.io.IORuntimeException, java.lang.Throwable], void), cast-from-var2283-to-var828=([java.io.IOException], java.lang.Throwable)}
; {var2788=cn.hutool.extra.compress.archiver.StreamArchiver, var1864=r0, var3606=java.nio.charset.Charset, var3788=r14, var2840=r1, var2819=null_type, var3886=java.io.OutputStream, var2149=r5, var2895=java.lang.Object, var2031=$r2, var2391=$z0, var2075=org.apache.commons.compress.archivers.tar.TarArchiveOutputStream, var1958=$r22, var3915=org.apache.commons.compress.compressors.gzip.GzipCompressorOutputStream, var2885=$r21, var2283=java.io.IOException, var2318=$r19, var979=cn.hutool.core.io.IORuntimeException, var2154=$r23, var828=java.lang.Throwable}
; {cn.hutool.extra.compress.archiver.StreamArchiver=var2788, r0=var1864, java.nio.charset.Charset=var3606, r14=var3788, r1=var2840, null_type=var2819, java.io.OutputStream=var3886, r5=var2149, java.lang.Object=var2895, $r2=var2031, $z0=var2391, org.apache.commons.compress.archivers.tar.TarArchiveOutputStream=var2075, $r22=var1958, org.apache.commons.compress.compressors.gzip.GzipCompressorOutputStream=var3915, $r21=var2885, java.io.IOException=var2283, $r19=var2318, cn.hutool.core.io.IORuntimeException=var979, $r23=var2154, java.lang.Throwable=var828}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.extra.compress.archiver.StreamArchiver;	r14 := @parameter0: java.nio.charset.Charset;	r1 := @parameter1: java.lang.String;	r5 := @parameter2: java.io.OutputStream;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = "tgz";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1);	if $z0 != 0 goto $r22 = new org.apache.commons.compress.archivers.tar.TarArchiveOutputStream;	$r22 = new org.apache.commons.compress.archivers.tar.TarArchiveOutputStream;	$r21 = new org.apache.commons.compress.compressors.gzip.GzipCompressorOutputStream;	$r19 := @caughtexception;	$r23 = new cn.hutool.core.io.IORuntimeException;	specialinvoke $r23.<cn.hutool.core.io.IORuntimeException: void <init>(java.lang.Throwable)>($r19);	throw $r23
;block_num 3