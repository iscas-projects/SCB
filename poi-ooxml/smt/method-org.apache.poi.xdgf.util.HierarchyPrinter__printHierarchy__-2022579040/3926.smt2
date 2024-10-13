(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1431 0)
(declare-sort var1677 0)
(declare-sort var2134 0)
(declare-sort var3378 0)
(declare-sort var3411 0)
(declare-sort var1348 0)
(declare-sort var1446 0)
(declare-sort var1539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1677-init () var1677)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPageNumber/-687000866 (var1431) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun getName/-1507286814 (var1431) String)
(declare-fun var2134_sanitizeFilename/82100422 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var1677 var1677 String) void)
(declare-fun toPath/-1698179320 (var1677) var3378)
(declare-fun arr-var3411-init () (Array Int var3411))
(declare-fun var1446_newOutputStream/1123210472 (var3378 (Array Int var3411)) var1348)
(declare-const null-var1431 var1431)
(declare-const null-var1677 var1677)
(declare-const null-var1539 var1539)
(declare-const null-var1348 var1348)
(declare-const var3742 var1431) ; Statement: r3 := @parameter0: org.apache.poi.xdgf.usermodel.XDGFPage 
(assert (not (= var3742 null-var1431)))
(declare-const var2717 var1677) ; Statement: r1 := @parameter1: java.io.File 
(assert (not (= var2717 null-var1677)))
(define-const var1143 var1677 var1677-init) ; Statement: $r0 = new java.io.File 
(define-const var1039 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1039)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1039!1 String)
(assert (= var1039!1 ""))
(assert true)
(define-const var847 String (append/672562846 var1039!1 "page")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("page") 
(declare-const var1039!2 String)
(assert (= var1039!2 (str.++ var1039!1 "page")))
(assert true)
(define-const var2315 Int (getPageNumber/-687000866 var3742)) ; Statement: $l0 = virtualinvoke r3.<org.apache.poi.xdgf.usermodel.XDGFPage: long getPageNumber()>() 
(assert true)
(define-const var1168 String (append/-901862667 var847 var2315)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var847!1 String)
(assert (str.prefixof var847 var847!1))
(assert true)
(define-const var2546 String (append/672562846 var1168 "-")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var1168!1 String)
(assert (= var1168!1 (str.++ var1168 "-")))
(assert true)
(define-const var1102 String (getName/-1507286814 var3742)) ; Statement: $r6 = virtualinvoke r3.<org.apache.poi.xdgf.usermodel.XDGFPage: java.lang.String getName()>() 
(define-const var2015 String (var2134_sanitizeFilename/82100422 var1102)) ; Statement: $r7 = staticinvoke <org.apache.poi.xdgf.util.Util: java.lang.String sanitizeFilename(java.lang.String)>($r6) 
(assert true)
(define-const var3079 String (append/672562846 var2546 var2015)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2546!1 String)
(assert (= var2546!1 (str.++ var2546 var2015)))
(assert true)
(define-const var3969 String (append/672562846 var3079 ".txt")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".txt") 
(declare-const var3079!1 String)
(assert (= var3079!1 (str.++ var3079 ".txt")))
(assert true)
(define-const var3375 String (toString/-2075883882 var3969)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var1143 var2717 var3375)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>(r1, $r11) 

(declare-const var1143!1 var1677)
(declare-const var2717!1 var1677)
(declare-const var3375!1 String)
(assert true)
(define-const var333 var3378 (toPath/-1698179320 var1143!1)) ; Statement: $r13 = virtualinvoke $r0.<java.io.File: java.nio.file.Path toPath()>() 
(define-const var2341 (Array Int var3411) arr-var3411-init) ; Statement: $r12 = newarray (java.nio.file.OpenOption)[0] 
(define-const var2695 var1348 (var1446_newOutputStream/1123210472 var333 var2341)) ; Statement: r14 = staticinvoke <java.nio.file.Files: java.io.OutputStream newOutputStream(java.nio.file.Path,java.nio.file.OpenOption[])>($r13, $r12) 
(define-const var3937 var1539 null-var1539) ; Statement: r26 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3371 var1539) ; Statement: $r19 := @caughtexception 
(assert (not (= var3371 null-var1539)))
(assert true) ; Non Conditional
 ; Statement: if r14 == null goto throw $r19 
(assert (= var2695 null-var1348)) ; Cond: r14 == null 
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var1677-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPageNumber/-687000866=([org.apache.poi.xdgf.usermodel.XDGFPage], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), getName/-1507286814=([org.apache.poi.xdgf.usermodel.XDGFPage], java.lang.String), var2134_sanitizeFilename/82100422=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), toPath/-1698179320=([java.io.File], java.nio.file.Path), arr-var3411-init=([], java.nio.file.OpenOption[]), var1446_newOutputStream/1123210472=([java.nio.file.Path, java.nio.file.OpenOption[]], java.io.OutputStream)}
; {var1431=org.apache.poi.xdgf.usermodel.XDGFPage, var3742=r3, var1677=java.io.File, var2717=r1, var1143=$r0, var1039=$r2, var847=$r4, var2315=$l0, var1168=$r5, var2546=$r8, var1102=$r6, var2134=org.apache.poi.xdgf.util.Util, var2015=$r7, var3079=$r9, var3969=$r10, var3375=$r11, var3378=java.nio.file.Path, var333=$r13, var3411=java.nio.file.OpenOption, var2341=$r12, var1348=java.io.OutputStream, var1446=java.nio.file.Files, var2695=r14, var1539=java.lang.Throwable, var3937=r26, var3371=$r19}
; {org.apache.poi.xdgf.usermodel.XDGFPage=var1431, r3=var3742, java.io.File=var1677, r1=var2717, $r0=var1143, $r2=var1039, $r4=var847, $l0=var2315, $r5=var1168, $r8=var2546, $r6=var1102, org.apache.poi.xdgf.util.Util=var2134, $r7=var2015, $r9=var3079, $r10=var3969, $r11=var3375, java.nio.file.Path=var3378, $r13=var333, java.nio.file.OpenOption=var3411, $r12=var2341, java.io.OutputStream=var1348, java.nio.file.Files=var1446, r14=var2695, java.lang.Throwable=var1539, r26=var3937, $r19=var3371}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: org.apache.poi.xdgf.usermodel.XDGFPage;	r1 := @parameter1: java.io.File;	$r0 = new java.io.File;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("page");	$l0 = virtualinvoke r3.<org.apache.poi.xdgf.usermodel.XDGFPage: long getPageNumber()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r6 = virtualinvoke r3.<org.apache.poi.xdgf.usermodel.XDGFPage: java.lang.String getName()>();	$r7 = staticinvoke <org.apache.poi.xdgf.util.Util: java.lang.String sanitizeFilename(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".txt");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>(r1, $r11);	$r13 = virtualinvoke $r0.<java.io.File: java.nio.file.Path toPath()>();	$r12 = newarray (java.nio.file.OpenOption)[0];	r14 = staticinvoke <java.nio.file.Files: java.io.OutputStream newOutputStream(java.nio.file.Path,java.nio.file.OpenOption[])>($r13, $r12);	r26 = null;	$r19 := @caughtexception;	if r14 == null goto throw $r19;	throw $r19
;block_num 4