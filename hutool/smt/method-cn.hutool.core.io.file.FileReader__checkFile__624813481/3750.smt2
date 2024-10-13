(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2755 0)
(declare-sort var585 0)
(declare-sort var2060 0)
(declare-sort var1726 0)
(declare-sort var542 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun file/1765163268 (var2060) var585)
(declare-fun cast-from-var2755-to-var2060 (var2755) var2060)
(declare-fun exists/1072868559 (var585) Bool)
(declare-fun var1726-init () var1726)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var542) String)
(declare-fun cast-from-var585-to-var542 (var585) var542)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/769422370 (var1726 String) void)
(declare-const null-var2755 var2755)
(declare-const var1903 var2755) ; Statement: r0 := @this: cn.hutool.core.io.file.FileReader 
(assert (not (= var1903 null-var2755)))
(define-const var2499 var585 (file/1765163268 (cast-from-var2755-to-var2060 var1903))) ; Statement: $r1 = r0.<cn.hutool.core.io.file.FileReader: java.io.File file> 
(assert true)
(define-const var3377 Bool (exists/1072868559 var2499)) ; Statement: $z0 = virtualinvoke $r1.<java.io.File: boolean exists()>() 
 ; Statement: if 0 != $z0 goto $r2 = r0.<cn.hutool.core.io.file.FileReader: java.io.File file> 
(assert (not (not (= 0 (ite var3377 1 0))))) ; Negate: Cond: 0 != $z0  
(define-const var3585 var1726 var1726-init) ; Statement: $r9 = new cn.hutool.core.io.IORuntimeException 
(define-const var811 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var811)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var811!1 String)
(assert (= var811!1 ""))
(assert true)
(define-const var3925 String (append/672562846 var811!1 "File not exist: ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File not exist: ") 
(declare-const var811!2 String)
(assert (= var811!2 (str.++ var811!1 "File not exist: ")))
(define-const var23 var585 (file/1765163268 (cast-from-var2755-to-var2060 var1903))) ; Statement: $r11 = r0.<cn.hutool.core.io.file.FileReader: java.io.File file> 
(assert true)
(define-const var3993 String (append/-1031950772 var3925 (cast-from-var585-to-var542 var23))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var3925!1 String)
(assert (str.prefixof var3925 var3925!1))
(assert true)
(define-const var197 String (toString/-2075883882 var3993)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/769422370 var3585 var197)) ; Statement: specialinvoke $r9.<cn.hutool.core.io.IORuntimeException: void <init>(java.lang.String)>($r14) 

(declare-const var3585!1 var1726)
(declare-const var197!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {file/1765163268=([cn.hutool.core.io.file.FileWrapper], java.io.File), cast-from-var2755-to-var2060=([cn.hutool.core.io.file.FileReader], cn.hutool.core.io.file.FileWrapper), exists/1072868559=([java.io.File], boolean), var1726-init=([], cn.hutool.core.io.IORuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var585-to-var542=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/769422370=([cn.hutool.core.io.IORuntimeException, java.lang.String], void)}
; {var2755=cn.hutool.core.io.file.FileReader, var1903=r0, var585=java.io.File, var2060=cn.hutool.core.io.file.FileWrapper, var2499=$r1, var3377=$z0, var1726=cn.hutool.core.io.IORuntimeException, var3585=$r9, var811=$r10, var3925=$r12, var23=$r11, var542=java.lang.Object, var3993=$r13, var197=$r14}
; {cn.hutool.core.io.file.FileReader=var2755, r0=var1903, java.io.File=var585, cn.hutool.core.io.file.FileWrapper=var2060, $r1=var2499, $z0=var3377, cn.hutool.core.io.IORuntimeException=var1726, $r9=var3585, $r10=var811, $r12=var3925, $r11=var23, java.lang.Object=var542, $r13=var3993, $r14=var197}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.io.file.FileReader;	$r1 = r0.<cn.hutool.core.io.file.FileReader: java.io.File file>;	$z0 = virtualinvoke $r1.<java.io.File: boolean exists()>();	if 0 != $z0 goto $r2 = r0.<cn.hutool.core.io.file.FileReader: java.io.File file>;	$r9 = new cn.hutool.core.io.IORuntimeException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File not exist: ");	$r11 = r0.<cn.hutool.core.io.file.FileReader: java.io.File file>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<cn.hutool.core.io.IORuntimeException: void <init>(java.lang.String)>($r14);	throw $r9
;block_num 2