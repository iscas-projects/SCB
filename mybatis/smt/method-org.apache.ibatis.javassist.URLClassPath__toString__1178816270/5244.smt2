(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun hostname/43390966 (var2437) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun port/43390966 (var2437) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun directory/43390966 (var2437) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2437 var2437)
(declare-const var210 var2437) ; Statement: r1 := @this: org.apache.ibatis.javassist.URLClassPath 
(assert (not (= var210 null-var2437)))
(define-const var1648 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1648)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1648!1 String)
(assert (= var1648!1 ""))
(define-const var2603 String (hostname/43390966 var210)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.URLClassPath: java.lang.String hostname> 
(assert true)
(define-const var2712 String (append/672562846 var1648!1 var2603)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1648!2 String)
(assert (= var1648!2 (str.++ var1648!1 var2603)))
(assert true)
(define-const var2572 String (append/672562846 var2712 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2712!1 String)
(assert (= var2712!1 (str.++ var2712 ":")))
(define-const var3040 Int (port/43390966 var210)) ; Statement: $i0 = r1.<org.apache.ibatis.javassist.URLClassPath: int port> 
(assert true)
(define-const var847 String (append/-1001720160 var2572 var3040)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2572!1 String)
(assert (str.prefixof var2572 var2572!1))
(define-const var1634 String (directory/43390966 var210)) ; Statement: $r5 = r1.<org.apache.ibatis.javassist.URLClassPath: java.lang.String directory> 
(assert true)
(define-const var3896 String (append/672562846 var847 var1634)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var847!1 String)
(assert (= var847!1 (str.++ var847 var1634)))
(assert true)
(define-const var2245 String (toString/-2075883882 var3896)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), hostname/43390966=([org.apache.ibatis.javassist.URLClassPath], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), port/43390966=([org.apache.ibatis.javassist.URLClassPath], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), directory/43390966=([org.apache.ibatis.javassist.URLClassPath], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2437=org.apache.ibatis.javassist.URLClassPath, var210=r1, var1648=$r0, var2603=$r2, var2712=$r3, var2572=$r4, var3040=$i0, var847=$r6, var1634=$r5, var3896=$r7, var2245=$r8}
; {org.apache.ibatis.javassist.URLClassPath=var2437, r1=var210, $r0=var1648, $r2=var2603, $r3=var2712, $r4=var2572, $i0=var3040, $r6=var847, $r5=var1634, $r7=var3896, $r8=var2245}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.URLClassPath;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.ibatis.javassist.URLClassPath: java.lang.String hostname>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i0 = r1.<org.apache.ibatis.javassist.URLClassPath: int port>;	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r5 = r1.<org.apache.ibatis.javassist.URLClassPath: java.lang.String directory>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1