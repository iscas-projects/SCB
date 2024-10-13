(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1183 0)
(declare-sort var2337 0)
(declare-sort var1445 0)
(declare-sort var1491 0)
(declare-sort var920 0)
(declare-sort var461 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun src/424251918 (var1445) var2337)
(declare-fun cast-from-var1183-to-var1445 (var1183) var1445)
(declare-fun cast-from-var2337-to-var1491 (var2337) var1491)
(declare-fun dest/424251918 (var1445) var2337)
(declare-fun arr-var2337-init () (Array Int var2337))
(declare-fun var920_notNull/515149844 (var2337 String (Array Int var2337)) var2337)
(declare-fun cast-from-var1491-to-var2337 (var1491) var2337)
(declare-fun exists/1072868559 (var1491) Bool)
(declare-fun var461-init () var461)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2337) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/769422370 (var461 String) void)
(declare-const null-var1183 var1183)
(declare-const var716 var1183) ; Statement: r0 := @this: cn.hutool.core.io.file.FileCopier 
(assert (not (= var716 null-var1183)))
(define-const var3132 var2337 (src/424251918 (cast-from-var1183-to-var1445 var716))) ; Statement: $r1 = r0.<cn.hutool.core.io.file.FileCopier: java.lang.Object src> 
(define-const var3341 var1491 (cast-from-var2337-to-var1491 var3132)) ; Statement: r2 = (java.io.File) $r1 
(define-const var904 var2337 (dest/424251918 (cast-from-var1183-to-var1445 var716))) ; Statement: $r3 = r0.<cn.hutool.core.io.file.FileCopier: java.lang.Object dest> 
(define-const var2980 var1491 (cast-from-var2337-to-var1491 var904)) ; Statement: r17 = (java.io.File) $r3 
(define-const var2427 (Array Int var2337) arr-var2337-init) ; Statement: $r4 = newarray (java.lang.Object)[0] 
;(assert (var920_notNull/515149844 (cast-from-var1491-to-var2337 var3341) "Source File is null !" var2427)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r2, "Source File is null !", $r4) 

(declare-const var3341!1 var1491)
(declare-const var426 String)
(declare-const var2427!1 (Array Int var2337))
(assert true)
(define-const var643 Bool (exists/1072868559 var3341!1)) ; Statement: $z0 = virtualinvoke r2.<java.io.File: boolean exists()>() 
 ; Statement: if 0 != $z0 goto $r5 = newarray (java.lang.Object)[0] 
(assert (not (not (= 0 (ite var643 1 0))))) ; Negate: Cond: 0 != $z0  
(define-const var1396 var461 var461-init) ; Statement: $r12 = new cn.hutool.core.io.IORuntimeException 
(define-const var3618 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3618)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3618!1 String)
(assert (= var3618!1 ""))
(assert true)
(define-const var3174 String (append/672562846 var3618!1 "File not exist: ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File not exist: ") 
(declare-const var3618!2 String)
(assert (= var3618!2 (str.++ var3618!1 "File not exist: ")))
(assert true)
(define-const var2268 String (append/-1031950772 var3174 (cast-from-var1491-to-var2337 var3341!1))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3174!1 String)
(assert (str.prefixof var3174 var3174!1))
(assert true)
(define-const var1663 String (toString/-2075883882 var2268)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/769422370 var1396 var1663)) ; Statement: specialinvoke $r12.<cn.hutool.core.io.IORuntimeException: void <init>(java.lang.String)>($r16) 

(declare-const var1396!1 var461)
(declare-const var1663!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {src/424251918=([cn.hutool.core.lang.copier.SrcToDestCopier], java.lang.Object), cast-from-var1183-to-var1445=([cn.hutool.core.io.file.FileCopier], cn.hutool.core.lang.copier.SrcToDestCopier), cast-from-var2337-to-var1491=([java.lang.Object], java.io.File), dest/424251918=([cn.hutool.core.lang.copier.SrcToDestCopier], java.lang.Object), arr-var2337-init=([], java.lang.Object[]), var920_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-var1491-to-var2337=([java.io.File], java.lang.Object), exists/1072868559=([java.io.File], boolean), var461-init=([], cn.hutool.core.io.IORuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/769422370=([cn.hutool.core.io.IORuntimeException, java.lang.String], void)}
; {var1183=cn.hutool.core.io.file.FileCopier, var716=r0, var2337=java.lang.Object, var1445=cn.hutool.core.lang.copier.SrcToDestCopier, var3132=$r1, var1491=java.io.File, var3341=r2, var904=$r3, var2980=r17, var2427=$r4, var920=cn.hutool.core.lang.Assert, var426="Source File is null !", var643=$z0, var461=cn.hutool.core.io.IORuntimeException, var1396=$r12, var3618=$r13, var3174=$r14, var2268=$r15, var1663=$r16}
; {cn.hutool.core.io.file.FileCopier=var1183, r0=var716, java.lang.Object=var2337, cn.hutool.core.lang.copier.SrcToDestCopier=var1445, $r1=var3132, java.io.File=var1491, r2=var3341, $r3=var904, r17=var2980, $r4=var2427, cn.hutool.core.lang.Assert=var920, "Source File is null !"=var426, $z0=var643, cn.hutool.core.io.IORuntimeException=var461, $r12=var1396, $r13=var3618, $r14=var3174, $r15=var2268, $r16=var1663}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.io.file.FileCopier;	$r1 = r0.<cn.hutool.core.io.file.FileCopier: java.lang.Object src>;	r2 = (java.io.File) $r1;	$r3 = r0.<cn.hutool.core.io.file.FileCopier: java.lang.Object dest>;	r17 = (java.io.File) $r3;	$r4 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r2, "Source File is null !", $r4);	$z0 = virtualinvoke r2.<java.io.File: boolean exists()>();	if 0 != $z0 goto $r5 = newarray (java.lang.Object)[0];	$r12 = new cn.hutool.core.io.IORuntimeException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("File not exist: ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<cn.hutool.core.io.IORuntimeException: void <init>(java.lang.String)>($r16);	throw $r12
;block_num 2