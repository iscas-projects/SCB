(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1186 0)
(declare-sort var2414 0)
(declare-sort var400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var2414) Bool)
(declare-fun var400-init () var400)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAbsolutePath/-802773300 (var2414) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var400 String) void)
(declare-const null-var1186 var1186)
(declare-const null-var2414 var2414)
(declare-const var3926 var1186) ; Statement: r13 := @this: org.apache.commons.io.output.LockableFileWriter 
(assert (not (= var3926 null-var1186)))
(declare-const var1794 var2414) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1794 null-var2414)))
(assert true)
(define-const var3199 Bool (exists/1072868559 var1794)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r0.<java.io.File: boolean canWrite()>() 
(assert (not (not (= (ite var3199 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1552 var400 var400-init) ; Statement: $r7 = new java.io.IOException 
(define-const var158 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var158)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var158!1 String)
(assert (= var158!1 ""))
(assert true)
(define-const var2738 String (append/672562846 var158!1 "Could not find lockDir: ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find lockDir: ") 
(declare-const var158!2 String)
(assert (= var158!2 (str.++ var158!1 "Could not find lockDir: ")))
(assert true)
(define-const var1721 String (getAbsolutePath/-802773300 var1794)) ; Statement: $r9 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var1416 String (append/672562846 var2738 var1721)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2738!1 String)
(assert (= var2738!1 (str.++ var2738 var1721)))
(assert true)
(define-const var3470 String (toString/-2075883882 var1416)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var1552 var3470)) ; Statement: specialinvoke $r7.<java.io.IOException: void <init>(java.lang.String)>($r12) 

(declare-const var1552!1 var400)
(declare-const var3470!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), var400-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAbsolutePath/-802773300=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1186=org.apache.commons.io.output.LockableFileWriter, var3926=r13, var2414=java.io.File, var1794=r0, var3199=$z0, var400=java.io.IOException, var1552=$r7, var158=$r8, var2738=$r10, var1721=$r9, var1416=$r11, var3470=$r12}
; {org.apache.commons.io.output.LockableFileWriter=var1186, r13=var3926, java.io.File=var2414, r0=var1794, $z0=var3199, java.io.IOException=var400, $r7=var1552, $r8=var158, $r10=var2738, $r9=var1721, $r11=var1416, $r12=var3470}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: org.apache.commons.io.output.LockableFileWriter;	r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $z1 = virtualinvoke r0.<java.io.File: boolean canWrite()>();	$r7 = new java.io.IOException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find lockDir: ");	$r9 = virtualinvoke r0.<java.io.File: java.lang.String getAbsolutePath()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.io.IOException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 2