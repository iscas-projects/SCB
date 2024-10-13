(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1764 0)
(declare-sort var2987 0)
(declare-sort var2225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isFile/1016913701 (var1764) Bool)
(declare-fun var2987-init () var2987)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var2225) String)
(declare-fun cast-from-var1764-to-var2225 (var1764) var2225)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2987 String) void)
(declare-const null-var1764 var1764)
(declare-const var3842 var1764) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3842 null-var1764)))
(assert true)
(define-const var777 Bool (isFile/1016913701 var3842)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean isFile()>() 
 ; Statement: if $z0 != 0 goto $r1 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>() 
(assert (not (not (= (ite var777 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var320 var2987 var2987-init) ; Statement: $r4 = new java.io.IOException 
(define-const var1804 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1804)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1804!1 String)
(assert (= var1804!1 ""))
(assert true)
(define-const var1711 String (append/-1031950772 var1804!1 (cast-from-var1764-to-var2225 var3842))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1804!2 String)
(assert (str.prefixof var1804!1 var1804!2))
(assert true)
(define-const var1916 String (append/672562846 var1711 " is not a file")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a file") 
(declare-const var1711!1 String)
(assert (= var1711!1 (str.++ var1711 " is not a file")))
(assert true)
(define-const var882 String (toString/-2075883882 var1916)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var320 var882)) ; Statement: specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r8) 

(declare-const var320!1 var2987)
(declare-const var882!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {isFile/1016913701=([java.io.File], boolean), var2987-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1764-to-var2225=([java.io.File], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1764=java.io.File, var3842=r0, var777=$z0, var2987=java.io.IOException, var320=$r4, var1804=$r5, var2225=java.lang.Object, var1711=$r6, var1916=$r7, var882=$r8}
; {java.io.File=var1764, r0=var3842, $z0=var777, java.io.IOException=var2987, $r4=var320, $r5=var1804, java.lang.Object=var2225, $r6=var1711, $r7=var1916, $r8=var882}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean isFile()>();	if $z0 != 0 goto $r1 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>();	$r4 = new java.io.IOException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a file");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2