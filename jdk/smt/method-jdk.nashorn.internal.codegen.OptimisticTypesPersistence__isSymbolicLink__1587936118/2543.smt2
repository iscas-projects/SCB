(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3765 0)
(declare-sort var2723 0)
(declare-sort var2647 0)
(declare-sort var1567 0)
(declare-sort var2488 0)
(declare-sort var771 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toPath/-1698179320 (var3765) var2723)
(declare-fun var2647_isSymbolicLink/-1512531317 (var2723) Bool)
(declare-fun var2488_getLogger/813639185 () var1567)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var771) String)
(declare-fun cast-from-var3765-to-var771 (var3765) var771)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun warning/884040667 (var1567 String) void)
(declare-const null-var3765 var3765)
(declare-const var3198 var3765) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3198 null-var3765)))
(assert true)
(define-const var3551 var2723 (toPath/-1698179320 var3198)) ; Statement: $r1 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>() 
(define-const var1796 Bool (var2647_isSymbolicLink/-1512531317 var3551)) ; Statement: $z0 = staticinvoke <java.nio.file.Files: boolean isSymbolicLink(java.nio.file.Path)>($r1) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var1796 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3738 var1567 var2488_getLogger/813639185) ; Statement: $r7 = staticinvoke <jdk.nashorn.internal.codegen.OptimisticTypesPersistence: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger()>() 
(define-const var686 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var686)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var686!1 String)
(assert (= var686!1 ""))
(assert true)
(define-const var2623 String (append/672562846 var686!1 "Directory ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Directory ") 
(declare-const var686!2 String)
(assert (= var686!2 (str.++ var686!1 "Directory ")))
(assert true)
(define-const var46 String (append/-1031950772 var2623 (cast-from-var3765-to-var771 var3198))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2623!1 String)
(assert (str.prefixof var2623 var2623!1))
(assert true)
(define-const var2659 String (append/672562846 var46 " is a symlink")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is a symlink") 
(declare-const var46!1 String)
(assert (= var46!1 (str.++ var46 " is a symlink")))
(assert true)
(define-const var2828 String (toString/-2075883882 var2659)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (warning/884040667 var3738 var2828)) ; Statement: virtualinvoke $r7.<jdk.nashorn.internal.runtime.logging.DebugLogger: void warning(java.lang.String)>($r6) 

(declare-const var3738!1 var1567)
(declare-const var2828!1 String)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {toPath/-1698179320=([java.io.File], java.nio.file.Path), var2647_isSymbolicLink/-1512531317=([java.nio.file.Path], boolean), var2488_getLogger/813639185=([], jdk.nashorn.internal.runtime.logging.DebugLogger), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3765-to-var771=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), warning/884040667=([jdk.nashorn.internal.runtime.logging.DebugLogger, java.lang.String], void)}
; {var3765=java.io.File, var3198=r0, var2723=java.nio.file.Path, var3551=$r1, var2647=java.nio.file.Files, var1796=$z0, var1567=jdk.nashorn.internal.runtime.logging.DebugLogger, var2488=jdk.nashorn.internal.codegen.OptimisticTypesPersistence, var3738=$r7, var686=$r2, var2623=$r3, var771=java.lang.Object, var46=$r4, var2659=$r5, var2828=$r6}
; {java.io.File=var3765, r0=var3198, java.nio.file.Path=var2723, $r1=var3551, java.nio.file.Files=var2647, $z0=var1796, jdk.nashorn.internal.runtime.logging.DebugLogger=var1567, jdk.nashorn.internal.codegen.OptimisticTypesPersistence=var2488, $r7=var3738, $r2=var686, $r3=var2623, java.lang.Object=var771, $r4=var46, $r5=var2659, $r6=var2828}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.File;	$r1 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>();	$z0 = staticinvoke <java.nio.file.Files: boolean isSymbolicLink(java.nio.file.Path)>($r1);	if $z0 == 0 goto return 0;	$r7 = staticinvoke <jdk.nashorn.internal.codegen.OptimisticTypesPersistence: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Directory ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is a symlink");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r7.<jdk.nashorn.internal.runtime.logging.DebugLogger: void warning(java.lang.String)>($r6);	return 1
;block_num 2