(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2414 0)
(declare-sort var1285 0)
(declare-sort var909 0)
(declare-sort var2833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2833_getSystemResourceAsStream/-651782480 (String) var909)
(declare-fun var2414_readClass/-923665482 (var909 Bool) (Array Int Int))
(declare-fun <init>/-684329124 (var2414 (Array Int Int)) void)
(declare-const null-var2414 var2414)
(declare-const null-String String)
(declare-const var3157 var2414) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.ClassReader 
(assert (not (= var3157 null-var2414)))
(declare-const var2531 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2531 null-String)))
(define-const var2562 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2562)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2562!1 String)
(assert (= var2562!1 ""))
(assert true)
(define-const var1064 String (replace/1524665721 var2531 46 47)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var920 String (append/672562846 var2562!1 var1064)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2562!2 String)
(assert (= var2562!2 (str.++ var2562!1 var1064)))
(assert true)
(define-const var3413 String (append/672562846 var920 ".class")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var920!1 String)
(assert (= var920!1 (str.++ var920 ".class")))
(assert true)
(define-const var2171 String (toString/-2075883882 var3413)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3789 var909 (var2833_getSystemResourceAsStream/-651782480 var2171)) ; Statement: $r7 = staticinvoke <java.lang.ClassLoader: java.io.InputStream getSystemResourceAsStream(java.lang.String)>($r6) 
(define-const var3541 (Array Int Int) (var2414_readClass/-923665482 var3789 (ite (= 1 1) true false))) ; Statement: $r8 = staticinvoke <jdk.internal.org.objectweb.asm.ClassReader: byte[] readClass(java.io.InputStream,boolean)>($r7, 1) 
(assert true)
;(assert (<init>/-684329124 var3157 var3541)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassReader: void <init>(byte[])>($r8) 

(declare-const var3157!1 var2414)
(declare-const var3541!1 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2833_getSystemResourceAsStream/-651782480=([java.lang.String], java.io.InputStream), var2414_readClass/-923665482=([java.io.InputStream, boolean], byte[]), <init>/-684329124=([jdk.internal.org.objectweb.asm.ClassReader, byte[]], void)}
; {var2414=jdk.internal.org.objectweb.asm.ClassReader, var3157=r0, var2531=r2, var1285=null_type, var2562=$r1, var1064=$r3, var920=$r4, var3413=$r5, var2171=$r6, var909=java.io.InputStream, var2833=java.lang.ClassLoader, var3789=$r7, var3541=$r8}
; {jdk.internal.org.objectweb.asm.ClassReader=var2414, r0=var3157, r2=var2531, null_type=var1285, $r1=var2562, $r3=var1064, $r4=var920, $r5=var3413, $r6=var2171, java.io.InputStream=var909, java.lang.ClassLoader=var2833, $r7=var3789, $r8=var3541}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.ClassReader;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = staticinvoke <java.lang.ClassLoader: java.io.InputStream getSystemResourceAsStream(java.lang.String)>($r6);	$r8 = staticinvoke <jdk.internal.org.objectweb.asm.ClassReader: byte[] readClass(java.io.InputStream,boolean)>($r7, 1);	specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassReader: void <init>(byte[])>($r8);	return
;block_num 1