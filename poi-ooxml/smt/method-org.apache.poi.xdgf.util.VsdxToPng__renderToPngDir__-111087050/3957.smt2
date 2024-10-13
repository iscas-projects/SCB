(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3224 0)
(declare-sort var932 0)
(declare-sort var3953 0)
(declare-sort var23 0)
(declare-sort var2282 0)
(declare-sort var64 0)
(declare-sort var3398 0)
(declare-sort var2293 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var932-init () var932)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPageNumber/-687000866 (var3224) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun getName/-1507286814 (var3224) String)
(declare-fun var23_sanitizeFilename/82100422 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var932 var932 String) void)
(declare-fun append/-1031950772 (String var3398) String)
(declare-fun cast-from-var932-to-var3398 (var932) var3398)
(declare-fun println/1773605060 (var2282 String) void)
(declare-fun var2293_renderToPng/1989917171 (var3224 var932 Float64 var3953) void)
(declare-const null-var3224 var3224)
(declare-const null-var932 var932)
(declare-const null-Float64 Float64)
(declare-const null-var3953 var3953)
(declare-const var64-out var2282)
(declare-const var2651 var3224) ; Statement: r3 := @parameter0: org.apache.poi.xdgf.usermodel.XDGFPage 
(assert (not (= var2651 null-var3224)))
(declare-const var735 var932) ; Statement: r1 := @parameter1: java.io.File 
(assert (not (= var735 null-var932)))
(declare-const var3800 Float64) ; Statement: d0 := @parameter2: double 
(assert (not (= var3800 null-Float64)))
(declare-const var1464 var3953) ; Statement: r17 := @parameter3: org.apache.poi.xdgf.usermodel.shape.ShapeRenderer 
(assert (not (= var1464 null-var3953)))
(define-const var3981 var932 var932-init) ; Statement: $r0 = new java.io.File 
(define-const var155 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var155)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var155!1 String)
(assert (= var155!1 ""))
(assert true)
(define-const var185 String (append/672562846 var155!1 "page")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("page") 
(declare-const var155!2 String)
(assert (= var155!2 (str.++ var155!1 "page")))
(assert true)
(define-const var3188 Int (getPageNumber/-687000866 var2651)) ; Statement: $l0 = virtualinvoke r3.<org.apache.poi.xdgf.usermodel.XDGFPage: long getPageNumber()>() 
(assert true)
(define-const var1960 String (append/-901862667 var185 var3188)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var185!1 String)
(assert (str.prefixof var185 var185!1))
(assert true)
(define-const var3528 String (append/672562846 var1960 "-")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var1960!1 String)
(assert (= var1960!1 (str.++ var1960 "-")))
(assert true)
(define-const var3327 String (getName/-1507286814 var2651)) ; Statement: $r6 = virtualinvoke r3.<org.apache.poi.xdgf.usermodel.XDGFPage: java.lang.String getName()>() 
(define-const var2383 String (var23_sanitizeFilename/82100422 var3327)) ; Statement: $r7 = staticinvoke <org.apache.poi.xdgf.util.Util: java.lang.String sanitizeFilename(java.lang.String)>($r6) 
(assert true)
(define-const var1315 String (append/672562846 var3528 var2383)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3528!1 String)
(assert (= var3528!1 (str.++ var3528 var2383)))
(assert true)
(define-const var3890 String (append/672562846 var1315 ".png")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".png") 
(declare-const var1315!1 String)
(assert (= var1315!1 (str.++ var1315 ".png")))
(assert true)
(define-const var3718 String (toString/-2075883882 var3890)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var3981 var735 var3718)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>(r1, $r11) 

(declare-const var3981!1 var932)
(declare-const var735!1 var932)
(declare-const var3718!1 String)
(define-const var3248 var2282 var64-out) ; Statement: $r13 = <java.lang.System: java.io.PrintStream out> 
(define-const var519 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var519)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var519!1 String)
(assert (= var519!1 ""))
(assert true)
(define-const var2074 String (append/672562846 var519!1 "** Writing image to ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("** Writing image to ") 
(declare-const var519!2 String)
(assert (= var519!2 (str.++ var519!1 "** Writing image to ")))
(assert true)
(define-const var2693 String (append/-1031950772 var2074 (cast-from-var932-to-var3398 var3981!1))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0) 
(declare-const var2074!1 String)
(assert (str.prefixof var2074 var2074!1))
(assert true)
(define-const var3991 String (toString/-2075883882 var2693)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3248 var3991)) ; Statement: virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>($r16) 

(declare-const var3248!1 var2282)
(declare-const var3991!1 String)
;(assert (var2293_renderToPng/1989917171 var2651 var3981!1 var3800 var1464)) ; Statement: staticinvoke <org.apache.poi.xdgf.util.VsdxToPng: void renderToPng(org.apache.poi.xdgf.usermodel.XDGFPage,java.io.File,double,org.apache.poi.xdgf.usermodel.shape.ShapeRenderer)>(r3, $r0, d0, r17) 

(declare-const var2651!1 var3224)
(declare-const var3981!2 var932)
(declare-const var3800!1 Float64)
(declare-const var1464!1 var3953)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var932-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPageNumber/-687000866=([org.apache.poi.xdgf.usermodel.XDGFPage], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), getName/-1507286814=([org.apache.poi.xdgf.usermodel.XDGFPage], java.lang.String), var23_sanitizeFilename/82100422=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var932-to-var3398=([java.io.File], java.lang.Object), println/1773605060=([java.io.PrintStream, java.lang.String], void), var2293_renderToPng/1989917171=([org.apache.poi.xdgf.usermodel.XDGFPage, java.io.File, double, org.apache.poi.xdgf.usermodel.shape.ShapeRenderer], void)}
; {var3224=org.apache.poi.xdgf.usermodel.XDGFPage, var2651=r3, var932=java.io.File, var735=r1, var3800=d0, var3953=org.apache.poi.xdgf.usermodel.shape.ShapeRenderer, var1464=r17, var3981=$r0, var155=$r2, var185=$r4, var3188=$l0, var1960=$r5, var3528=$r8, var3327=$r6, var23=org.apache.poi.xdgf.util.Util, var2383=$r7, var1315=$r9, var3890=$r10, var3718=$r11, var2282=java.io.PrintStream, var64=java.lang.System, var3248=$r13, var519=$r12, var2074=$r14, var3398=java.lang.Object, var2693=$r15, var3991=$r16, var2293=org.apache.poi.xdgf.util.VsdxToPng}
; {org.apache.poi.xdgf.usermodel.XDGFPage=var3224, r3=var2651, java.io.File=var932, r1=var735, d0=var3800, org.apache.poi.xdgf.usermodel.shape.ShapeRenderer=var3953, r17=var1464, $r0=var3981, $r2=var155, $r4=var185, $l0=var3188, $r5=var1960, $r8=var3528, $r6=var3327, org.apache.poi.xdgf.util.Util=var23, $r7=var2383, $r9=var1315, $r10=var3890, $r11=var3718, java.io.PrintStream=var2282, java.lang.System=var64, $r13=var3248, $r12=var519, $r14=var2074, java.lang.Object=var3398, $r15=var2693, $r16=var3991, org.apache.poi.xdgf.util.VsdxToPng=var2293}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r3 := @parameter0: org.apache.poi.xdgf.usermodel.XDGFPage;	r1 := @parameter1: java.io.File;	d0 := @parameter2: double;	r17 := @parameter3: org.apache.poi.xdgf.usermodel.shape.ShapeRenderer;	$r0 = new java.io.File;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("page");	$l0 = virtualinvoke r3.<org.apache.poi.xdgf.usermodel.XDGFPage: long getPageNumber()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r6 = virtualinvoke r3.<org.apache.poi.xdgf.usermodel.XDGFPage: java.lang.String getName()>();	$r7 = staticinvoke <org.apache.poi.xdgf.util.Util: java.lang.String sanitizeFilename(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".png");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>(r1, $r11);	$r13 = <java.lang.System: java.io.PrintStream out>;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("** Writing image to ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>($r16);	staticinvoke <org.apache.poi.xdgf.util.VsdxToPng: void renderToPng(org.apache.poi.xdgf.usermodel.XDGFPage,java.io.File,double,org.apache.poi.xdgf.usermodel.shape.ShapeRenderer)>(r3, $r0, d0, r17);	return
;block_num 1