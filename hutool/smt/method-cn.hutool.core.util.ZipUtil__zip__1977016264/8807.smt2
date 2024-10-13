(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var555 0)
(declare-sort var1299 0)
(declare-sort var604 0)
(declare-sort var64 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParentFile/-182598033 (var555) var555)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var604_mainName/-1954199851 (var555) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var604_file/769926827 (var555 String) var555)
(declare-fun arr-var555-init () (Array Int var555))
(declare-fun var64_zip/-780515604 (var555 var1299 Bool (Array Int var555)) var555)
(declare-const null-var555 var555)
(declare-const null-var1299 var1299)
(declare-const null-__Array__Int__var555__ (Array Int var555))
(declare-const var1957 var555) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1957 null-var555)))
(declare-const var3068 var1299) ; Statement: r8 := @parameter1: java.nio.charset.Charset 
(assert (not (= var3068 null-var1299)))
(assert true)
(define-const var1920 var555 (getParentFile/-182598033 var1957)) ; Statement: $r6 = virtualinvoke r0.<java.io.File: java.io.File getParentFile()>() 
(define-const var2052 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2052)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2052!1 String)
(assert (= var2052!1 ""))
(define-const var123 String (var604_mainName/-1954199851 var1957)) ; Statement: $r2 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String mainName(java.io.File)>(r0) 
(assert true)
(define-const var2346 String (append/672562846 var2052!1 var123)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2052!2 String)
(assert (= var2052!2 (str.++ var2052!1 var123)))
(assert true)
(define-const var951 String (append/672562846 var2346 ".zip")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".zip") 
(declare-const var2346!1 String)
(assert (= var2346!1 (str.++ var2346 ".zip")))
(assert true)
(define-const var1555 String (toString/-2075883882 var951)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var393 var555 (var604_file/769926827 var1920 var1555)) ; Statement: r7 = staticinvoke <cn.hutool.core.io.FileUtil: java.io.File file(java.io.File,java.lang.String)>($r6, $r5) 
(define-const var1560 (Array Int var555) arr-var555-init) ; Statement: $r9 = newarray (java.io.File)[1] 
(declare-const var1560!1 (Array Int var555))
(assert (not (= var1560!1 null-__Array__Int__var555__)))
(assert (= (select var1560!1 0) var1957)) ; Statement: $r9[0] = r0 
;(assert (var64_zip/-780515604 var393 var3068 (ite (= 1 0) true false) var1560!1)) ; Statement: staticinvoke <cn.hutool.core.util.ZipUtil: java.io.File zip(java.io.File,java.nio.charset.Charset,boolean,java.io.File[])>(r7, r8, 0, $r9) 

(declare-const var393!1 var555)
(declare-const var3068!1 var1299)
(declare-const var2729 Int)
(declare-const var1560!2 (Array Int var555))
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getParentFile/-182598033=([java.io.File], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var604_mainName/-1954199851=([java.io.File], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var604_file/769926827=([java.io.File, java.lang.String], java.io.File), arr-var555-init=([], java.io.File[]), var64_zip/-780515604=([java.io.File, java.nio.charset.Charset, boolean, java.io.File[]], java.io.File)}
; {var555=java.io.File, var1957=r0, var1299=java.nio.charset.Charset, var3068=r8, var1920=$r6, var2052=$r1, var604=cn.hutool.core.io.FileUtil, var123=$r2, var2346=$r3, var951=$r4, var1555=$r5, var393=r7, var1560=$r9, var64=cn.hutool.core.util.ZipUtil, var2729=0}
; {java.io.File=var555, r0=var1957, java.nio.charset.Charset=var1299, r8=var3068, $r6=var1920, $r1=var2052, cn.hutool.core.io.FileUtil=var604, $r2=var123, $r3=var2346, $r4=var951, $r5=var1555, r7=var393, $r9=var1560, cn.hutool.core.util.ZipUtil=var64, 0=var2729}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.File;	r8 := @parameter1: java.nio.charset.Charset;	$r6 = virtualinvoke r0.<java.io.File: java.io.File getParentFile()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String mainName(java.io.File)>(r0);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".zip");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	r7 = staticinvoke <cn.hutool.core.io.FileUtil: java.io.File file(java.io.File,java.lang.String)>($r6, $r5);	$r9 = newarray (java.io.File)[1];	$r9[0] = r0;	staticinvoke <cn.hutool.core.util.ZipUtil: java.io.File zip(java.io.File,java.nio.charset.Charset,boolean,java.io.File[])>(r7, r8, 0, $r9);	return r7
;block_num 1