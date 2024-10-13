(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var822 0)
(declare-sort var405 0)
(declare-sort var1533 0)
(declare-sort var496 0)
(declare-sort var1290 0)
(declare-sort var1606 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pathComponents/-814482109 (var822) var1533)
(declare-fun contains/-136988940 (var1533 var496) Bool)
(declare-fun cast-from-var405-to-var496 (var405) var496)
(declare-fun isDirectory/-2122094196 (var405) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getAbsolutePath/-802773300 (var405) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lastModified/415300308 (var405) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun length/-1852051827 (var405) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1290_get/1088891777 (var1290 var496) var496)
(declare-fun cast-from-String-to-var496 (String) var496)
(declare-fun cast-from-var496-to-String (var496) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var822 var822)
(declare-const null-var405 var405)
(declare-const var822-pathMap var1290)
(declare-const null-String String)
(declare-const var528 var822) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var528 null-var822)))
(declare-const var3396 var405) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var3396 null-var405)))
(define-const var3810 var1533 (pathComponents/-814482109 var528)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.util.Vector pathComponents> 
(assert true)
(define-const var3756 Bool (contains/-136988940 var3810 (cast-from-var405-to-var496 var3396))) ; Statement: $z0 = virtualinvoke $r2.<java.util.Vector: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r1.<java.io.File: boolean isDirectory()>() 
(assert (not (= (ite var3756 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var620 Bool (isDirectory/-2122094196 var3396)) ; Statement: $z1 = virtualinvoke r1.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z1 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var620 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1237 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1237)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1237!1 String)
(assert (= var1237!1 ""))
(assert true)
(define-const var3069 String (getAbsolutePath/-802773300 var3396)) ; Statement: $r4 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var2228 String (append/672562846 var1237!1 var3069)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1237!2 String)
(assert (= var1237!2 (str.++ var1237!1 var3069)))
(assert true)
(define-const var1591 Int (lastModified/415300308 var3396)) ; Statement: $l0 = virtualinvoke r1.<java.io.File: long lastModified()>() 
(assert true)
(define-const var233 String (append/-901862667 var2228 var1591)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2228!1 String)
(assert (str.prefixof var2228 var2228!1))
(assert true)
(define-const var2204 String (append/672562846 var233 "-")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var233!1 String)
(assert (= var233!1 (str.++ var233 "-")))
(assert true)
(define-const var2979 Int (length/-1852051827 var3396)) ; Statement: $l1 = virtualinvoke r1.<java.io.File: long length()>() 
(assert true)
(define-const var1049 String (append/-901862667 var2204 var2979)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var2204!1 String)
(assert (str.prefixof var2204 var2204!1))
(assert true)
(define-const var1669 String (toString/-2075883882 var1049)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3901 var1290 var822-pathMap) ; Statement: $r10 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.util.Map pathMap> 
(define-const var689 var496 (var1290_get/1088891777 var3901 (cast-from-String-to-var496 var1669))) ; Statement: $r11 = interfaceinvoke $r10.<java.util.Map: java.lang.Object get(java.lang.Object)>(r9) 
(define-const var3820 String (cast-from-var496-to-String var689)) ; Statement: r30 = (java.lang.String) $r11 
 ; Statement: if r30 != null goto $z5 = virtualinvoke r30.<java.lang.String: boolean isEmpty()>() 
(assert (not (= var3820 null-String))) ; Cond: r30 != null 
(assert true)
(define-const var260 Bool (isEmpty/-1285796103 var3820)) ; Statement: $z5 = virtualinvoke r30.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z5 != 0 goto return 
(assert (not (= (ite var260 1 0) 0))) ; Cond: $z5 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {pathComponents/-814482109=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader], java.util.Vector), contains/-136988940=([java.util.Vector, java.lang.Object], boolean), cast-from-var405-to-var496=([java.io.File], java.lang.Object), isDirectory/-2122094196=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getAbsolutePath/-802773300=([java.io.File], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lastModified/415300308=([java.io.File], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), length/-1852051827=([java.io.File], long), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1290_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var496=([java.lang.String], java.lang.Object), cast-from-var496-to-String=([java.lang.Object], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var822=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var528=r0, var405=java.io.File, var3396=r1, var1533=java.util.Vector, var3810=$r2, var496=java.lang.Object, var3756=$z0, var620=$z1, var1237=$r3, var3069=$r4, var2228=$r5, var1591=$l0, var233=$r6, var2204=$r7, var2979=$l1, var1049=$r8, var1669=r9, var1290=java.util.Map, var3901=$r10, var689=$r11, var3820=r30, var1606=null_type, var260=$z5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var822, r0=var528, java.io.File=var405, r1=var3396, java.util.Vector=var1533, $r2=var3810, java.lang.Object=var496, $z0=var3756, $z1=var620, $r3=var1237, $r4=var3069, $r5=var2228, $l0=var1591, $r6=var233, $r7=var2204, $l1=var2979, $r8=var1049, r9=var1669, java.util.Map=var1290, $r10=var3901, $r11=var689, r30=var3820, null_type=var1606, $z5=var260}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	r1 := @parameter0: java.io.File;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.util.Vector pathComponents>;	$z0 = virtualinvoke $r2.<java.util.Vector: boolean contains(java.lang.Object)>(r1);	if $z0 != 0 goto $z1 = virtualinvoke r1.<java.io.File: boolean isDirectory()>();	$z1 = virtualinvoke r1.<java.io.File: boolean isDirectory()>();	if $z1 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$l0 = virtualinvoke r1.<java.io.File: long lastModified()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$l1 = virtualinvoke r1.<java.io.File: long length()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.util.Map pathMap>;	$r11 = interfaceinvoke $r10.<java.util.Map: java.lang.Object get(java.lang.Object)>(r9);	r30 = (java.lang.String) $r11;	if r30 != null goto $z5 = virtualinvoke r30.<java.lang.String: boolean isEmpty()>();	$z5 = virtualinvoke r30.<java.lang.String: boolean isEmpty()>();	if $z5 != 0 goto return;	return
;block_num 5