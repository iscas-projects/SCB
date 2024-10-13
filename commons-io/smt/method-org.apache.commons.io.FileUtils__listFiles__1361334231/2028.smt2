(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3945 0)
(declare-sort var1459 0)
(declare-sort var3117 0)
(declare-sort var2881 0)
(declare-sort var668 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3117_requireDirectoryExists/-1197812669 (var3945 String) void)
(declare-fun listFiles/1458550752 (var3945 var1459) (Array Int var3945))
(declare-fun var2881-init () var2881)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var668) String)
(declare-fun cast-from-var3945-to-var668 (var3945) var668)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2881 String) void)
(declare-const null-var3945 var3945)
(declare-const null-var1459 var1459)
(declare-const null-__Array__Int__var3945__ (Array Int var3945))
(declare-const var1591 var3945) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1591 null-var3945)))
(declare-const var1221 var1459) ; Statement: r1 := @parameter1: java.io.FileFilter 
(assert (not (= var1221 null-var1459)))
;(assert (var3117_requireDirectoryExists/-1197812669 var1591 "directory")) ; Statement: staticinvoke <org.apache.commons.io.FileUtils: void requireDirectoryExists(java.io.File,java.lang.String)>(r0, "directory") 

(declare-const var1591!1 var3945)
(declare-const var3137 String)
 ; Statement: if r1 != null goto $r7 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles(java.io.FileFilter)>(r1) 
(assert (not (= var1221 null-var1459))) ; Cond: r1 != null 
(assert true)
(define-const var739 (Array Int var3945) (listFiles/1458550752 var1591!1 var1221)) ; Statement: $r7 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles(java.io.FileFilter)>(r1) 
(assert true) ; Non Conditional
 ; Statement: if $r7 != null goto return $r7 
(assert (not (not (= var739 null-__Array__Int__var3945__)))) ; Negate: Cond: $r7 != null  
(define-const var745 var2881 var2881-init) ; Statement: $r2 = new java.io.IOException 
(define-const var3641 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3641)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3641!1 String)
(assert (= var3641!1 ""))
(assert true)
(define-const var204 String (append/672562846 var3641!1 "Unknown I/O error listing contents of directory: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown I/O error listing contents of directory: ") 
(declare-const var3641!2 String)
(assert (= var3641!2 (str.++ var3641!1 "Unknown I/O error listing contents of directory: ")))
(assert true)
(define-const var3443 String (append/-1031950772 var204 (cast-from-var3945-to-var668 var1591!1))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var204!1 String)
(assert (str.prefixof var204 var204!1))
(assert true)
(define-const var3496 String (toString/-2075883882 var3443)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var745 var3496)) ; Statement: specialinvoke $r2.<java.io.IOException: void <init>(java.lang.String)>($r6) 

(declare-const var745!1 var2881)
(declare-const var3496!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3117_requireDirectoryExists/-1197812669=([java.io.File, java.lang.String], void), listFiles/1458550752=([java.io.File, java.io.FileFilter], java.io.File[]), var2881-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3945-to-var668=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var3945=java.io.File, var1591=r0, var1459=java.io.FileFilter, var1221=r1, var3117=org.apache.commons.io.FileUtils, var3137="directory", var739=$r7, var2881=java.io.IOException, var745=$r2, var3641=$r3, var204=$r4, var668=java.lang.Object, var3443=$r5, var3496=$r6}
; {java.io.File=var3945, r0=var1591, java.io.FileFilter=var1459, r1=var1221, org.apache.commons.io.FileUtils=var3117, "directory"=var3137, $r7=var739, java.io.IOException=var2881, $r2=var745, $r3=var3641, $r4=var204, java.lang.Object=var668, $r5=var3443, $r6=var3496}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.File;	r1 := @parameter1: java.io.FileFilter;	staticinvoke <org.apache.commons.io.FileUtils: void requireDirectoryExists(java.io.File,java.lang.String)>(r0, "directory");	if r1 != null goto $r7 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles(java.io.FileFilter)>(r1);	$r7 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles(java.io.FileFilter)>(r1);	if $r7 != null goto return $r7;	$r2 = new java.io.IOException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown I/O error listing contents of directory: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.IOException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 4