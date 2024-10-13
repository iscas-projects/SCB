(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var474 0)
(declare-sort var2128 0)
(declare-sort var1191 0)
(declare-sort var210 0)
(declare-sort var1866 0)
(declare-sort var2240 0)
(declare-sort var3204 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkPath/-1324960772 (var474 String Bool) var210)
(declare-fun arr-String-init () (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1866) String)
(declare-fun cast-from-var210-to-var1866 (var210) var1866)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun performCommand/-1009984896 (var474 (Array Int String) Int var1191) var2240)
(declare-fun var2240_size/-959786421 (var2240) Int)
(declare-fun var3204-init () var3204)
(declare-fun <init>/-1557872005 (var3204 String) void)
(declare-const null-var474 var474)
(declare-const null-String String)
(declare-const null-var1191 var1191)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1743 var474) ; Statement: r0 := @this: org.apache.commons.io.FileSystemUtils 
(assert (not (= var1743 null-var474)))
(declare-const var2699 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2699 null-String)))
(declare-const var2125 var1191) ; Statement: r9 := @parameter1: java.time.Duration 
(assert (not (= var2125 null-var1191)))
(assert true)
(define-const var3603 var210 (checkPath/-1324960772 var1743 var2699 (ite (= 1 1) true false))) ; Statement: r2 = specialinvoke r0.<org.apache.commons.io.FileSystemUtils: java.nio.file.Path checkPath(java.lang.String,boolean)>(r1, 1) 
(define-const var2299 (Array Int String) arr-String-init) ; Statement: $r3 = newarray (java.lang.String)[3] 
(declare-const var2299!1 (Array Int String))
(assert (not (= var2299!1 null-__Array__Int__String__)))
(assert (= (select var2299!1 0) "cmd.exe")) ; Statement: $r3[0] = "cmd.exe" 
(declare-const var2299!2 (Array Int String))
(assert (not (= var2299!2 null-__Array__Int__String__)))
(assert (= (select var2299!2 1) "/C")) ; Statement: $r3[1] = "/C" 
(define-const var1854 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1854)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1854!1 String)
(assert (= var1854!1 ""))
(assert true)
(define-const var123 String (append/672562846 var1854!1 "dir /a /-c \u0022")) ; Statement: $r5 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dir /a /-c \"") 
(declare-const var1854!2 String)
(assert (= var1854!2 (str.++ var1854!1 "dir /a /-c \u0022")))
(assert true)
(define-const var2209 String (append/-1031950772 var123 (cast-from-var210-to-var1866 var3603))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var123!1 String)
(assert (str.prefixof var123 var123!1))
(assert true)
(define-const var1943 String (append/672562846 var2209 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2209!1 String)
(assert (= var2209!1 (str.++ var2209 "\u0022")))
(assert true)
(define-const var3380 String (toString/-2075883882 var1943)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2299!3 (Array Int String))
(assert (not (= var2299!3 null-__Array__Int__String__)))
(assert (= (select var2299!3 2) var3380)) ; Statement: $r3[2] = $r8 
(assert true)
(define-const var1451 var2240 (performCommand/-1009984896 var1743 var2299!3 2147483647 var2125)) ; Statement: r10 = specialinvoke r0.<org.apache.commons.io.FileSystemUtils: java.util.List performCommand(java.lang.String[],int,java.time.Duration)>($r3, 2147483647, r9) 
(define-const var2864 Int (var2240_size/-959786421 var1451)) ; Statement: $i0 = interfaceinvoke r10.<java.util.List: int size()>() 
(define-const var1570 Int (- var2864 1)) ; Statement: i2 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i2 < 0 goto $r21 = new java.io.IOException 
(assert (< var1570 0)) ; Cond: i2 < 0 
(define-const var3392 var3204 var3204-init) ; Statement: $r21 = new java.io.IOException 
(define-const var734 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var734)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var734!1 String)
(assert (= var734!1 ""))
(assert true)
(define-const var2154 String (append/672562846 var734!1 "Command \u0027dir\u0027 did not return any info for path \u0027")) ; Statement: $r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Command \'dir\' did not return any info for path \'") 
(declare-const var734!2 String)
(assert (= var734!2 (str.++ var734!1 "Command \u0027dir\u0027 did not return any info for path \u0027")))
(assert true)
(define-const var2525 String (append/-1031950772 var2154 (cast-from-var210-to-var1866 var3603))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2154!1 String)
(assert (str.prefixof var2154 var2154!1))
(assert true)
(define-const var819 String (append/672562846 var2525 "\u0027")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2525!1 String)
(assert (= var2525!1 (str.++ var2525 "\u0027")))
(assert true)
(define-const var1635 String (toString/-2075883882 var819)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var3392 var1635)) ; Statement: specialinvoke $r21.<java.io.IOException: void <init>(java.lang.String)>($r16) 

(declare-const var3392!1 var3204)
(declare-const var1635!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {checkPath/-1324960772=([org.apache.commons.io.FileSystemUtils, java.lang.String, boolean], java.nio.file.Path), arr-String-init=([], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var210-to-var1866=([java.nio.file.Path], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), performCommand/-1009984896=([org.apache.commons.io.FileSystemUtils, java.lang.String[], int, java.time.Duration], java.util.List), var2240_size/-959786421=([java.util.List], int), var3204-init=([], java.io.IOException), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var474=org.apache.commons.io.FileSystemUtils, var1743=r0, var2699=r1, var2128=null_type, var1191=java.time.Duration, var2125=r9, var210=java.nio.file.Path, var3603=r2, var2299=$r3, var1854=$r19, var123=$r5, var1866=java.lang.Object, var2209=$r6, var1943=$r7, var3380=$r8, var2240=java.util.List, var1451=r10, var2864=$i0, var1570=i2, var3204=java.io.IOException, var3392=$r21, var734=$r20, var2154=$r13, var2525=$r14, var819=$r15, var1635=$r16}
; {org.apache.commons.io.FileSystemUtils=var474, r0=var1743, r1=var2699, null_type=var2128, java.time.Duration=var1191, r9=var2125, java.nio.file.Path=var210, r2=var3603, $r3=var2299, $r19=var1854, $r5=var123, java.lang.Object=var1866, $r6=var2209, $r7=var1943, $r8=var3380, java.util.List=var2240, r10=var1451, $i0=var2864, i2=var1570, java.io.IOException=var3204, $r21=var3392, $r20=var734, $r13=var2154, $r14=var2525, $r15=var819, $r16=var1635}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: org.apache.commons.io.FileSystemUtils;	r1 := @parameter0: java.lang.String;	r9 := @parameter1: java.time.Duration;	r2 = specialinvoke r0.<org.apache.commons.io.FileSystemUtils: java.nio.file.Path checkPath(java.lang.String,boolean)>(r1, 1);	$r3 = newarray (java.lang.String)[3];	$r3[0] = "cmd.exe";	$r3[1] = "/C";	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dir /a /-c \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r3[2] = $r8;	r10 = specialinvoke r0.<org.apache.commons.io.FileSystemUtils: java.util.List performCommand(java.lang.String[],int,java.time.Duration)>($r3, 2147483647, r9);	$i0 = interfaceinvoke r10.<java.util.List: int size()>();	i2 = $i0 - 1;	if i2 < 0 goto $r21 = new java.io.IOException;	$r21 = new java.io.IOException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Command \'dir\' did not return any info for path \'");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.io.IOException: void <init>(java.lang.String)>($r16);	throw $r21
;block_num 3