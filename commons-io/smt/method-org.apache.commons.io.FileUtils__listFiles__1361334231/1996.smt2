(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3516 0)
(declare-sort var2355 0)
(declare-sort var29 0)
(declare-sort var1459 0)
(declare-sort var3572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var29_requireDirectoryExists/-1197812669 (var3516 String) void)
(declare-fun listFiles/1368441200 (var3516) (Array Int var3516))
(declare-fun var1459-init () var1459)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3572) String)
(declare-fun cast-from-var3516-to-var3572 (var3516) var3572)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1459 String) void)
(declare-const null-var3516 var3516)
(declare-const null-var2355 var2355)
(declare-const null-__Array__Int__var3516__ (Array Int var3516))
(declare-const var2238 var3516) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var2238 null-var3516)))
(declare-const var598 var2355) ; Statement: r1 := @parameter1: java.io.FileFilter 
(assert (not (= var598 null-var2355)))
;(assert (var29_requireDirectoryExists/-1197812669 var2238 "directory")) ; Statement: staticinvoke <org.apache.commons.io.FileUtils: void requireDirectoryExists(java.io.File,java.lang.String)>(r0, "directory") 

(declare-const var2238!1 var3516)
(declare-const var2349 String)
 ; Statement: if r1 != null goto $r7 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles(java.io.FileFilter)>(r1) 
(assert (not (not (= var598 null-var2355)))) ; Negate: Cond: r1 != null  
(assert true)
(define-const var2665 (Array Int var3516) (listFiles/1368441200 var2238!1)) ; Statement: $r7 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r7 != null goto return $r7 
(assert (not (not (= var2665 null-__Array__Int__var3516__)))) ; Negate: Cond: $r7 != null  
(define-const var2008 var1459 var1459-init) ; Statement: $r2 = new java.io.IOException 
(define-const var2518 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2518)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2518!1 String)
(assert (= var2518!1 ""))
(assert true)
(define-const var470 String (append/672562846 var2518!1 "Unknown I/O error listing contents of directory: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown I/O error listing contents of directory: ") 
(declare-const var2518!2 String)
(assert (= var2518!2 (str.++ var2518!1 "Unknown I/O error listing contents of directory: ")))
(assert true)
(define-const var3951 String (append/-1031950772 var470 (cast-from-var3516-to-var3572 var2238!1))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var470!1 String)
(assert (str.prefixof var470 var470!1))
(assert true)
(define-const var3374 String (toString/-2075883882 var3951)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var2008 var3374)) ; Statement: specialinvoke $r2.<java.io.IOException: void <init>(java.lang.String)>($r6) 

(declare-const var2008!1 var1459)
(declare-const var3374!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var29_requireDirectoryExists/-1197812669=([java.io.File, java.lang.String], void), listFiles/1368441200=([java.io.File], java.io.File[]), var1459-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3516-to-var3572=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var3516=java.io.File, var2238=r0, var2355=java.io.FileFilter, var598=r1, var29=org.apache.commons.io.FileUtils, var2349="directory", var2665=$r7, var1459=java.io.IOException, var2008=$r2, var2518=$r3, var470=$r4, var3572=java.lang.Object, var3951=$r5, var3374=$r6}
; {java.io.File=var3516, r0=var2238, java.io.FileFilter=var2355, r1=var598, org.apache.commons.io.FileUtils=var29, "directory"=var2349, $r7=var2665, java.io.IOException=var1459, $r2=var2008, $r3=var2518, $r4=var470, java.lang.Object=var3572, $r5=var3951, $r6=var3374}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.File;	r1 := @parameter1: java.io.FileFilter;	staticinvoke <org.apache.commons.io.FileUtils: void requireDirectoryExists(java.io.File,java.lang.String)>(r0, "directory");	if r1 != null goto $r7 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles(java.io.FileFilter)>(r1);	$r7 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles()>();	goto [?= (branch)];	if $r7 != null goto return $r7;	$r2 = new java.io.IOException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown I/O error listing contents of directory: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.IOException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 4