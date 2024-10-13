(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2847 0)
(declare-sort var3579 0)
(declare-sort var3786 0)
(declare-sort var2535 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isFile/1016913701 (var2847) Bool)
(declare-fun var3786-init () var3786)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var2535) String)
(declare-fun cast-from-var2847-to-var2535 (var2847) var2535)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3786 String) void)
(declare-const null-var2847 var2847)
(declare-const null-var3579 var3579)
(declare-const var3629 var2847) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3629 null-var2847)))
(declare-const var1914 var3579) ; Statement: r3 := @parameter1: java.nio.charset.Charset 
(assert (not (= var1914 null-var3579)))
(assert true)
(define-const var3977 Bool (isFile/1016913701 var3629)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean isFile()>() 
 ; Statement: if $z0 != 0 goto $r1 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>() 
(assert (not (not (= (ite var3977 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1126 var3786 var3786-init) ; Statement: $r5 = new java.io.IOException 
(define-const var2598 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2598)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2598!1 String)
(assert (= var2598!1 ""))
(assert true)
(define-const var1415 String (append/-1031950772 var2598!1 (cast-from-var2847-to-var2535 var3629))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2598!2 String)
(assert (str.prefixof var2598!1 var2598!2))
(assert true)
(define-const var2086 String (append/672562846 var1415 " is not a file")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a file") 
(declare-const var1415!1 String)
(assert (= var1415!1 (str.++ var1415 " is not a file")))
(assert true)
(define-const var1581 String (toString/-2075883882 var2086)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var1126 var1581)) ; Statement: specialinvoke $r5.<java.io.IOException: void <init>(java.lang.String)>($r9) 

(declare-const var1126!1 var3786)
(declare-const var1581!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {isFile/1016913701=([java.io.File], boolean), var3786-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2847-to-var2535=([java.io.File], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var2847=java.io.File, var3629=r0, var3579=java.nio.charset.Charset, var1914=r3, var3977=$z0, var3786=java.io.IOException, var1126=$r5, var2598=$r6, var2535=java.lang.Object, var1415=$r7, var2086=$r8, var1581=$r9}
; {java.io.File=var2847, r0=var3629, java.nio.charset.Charset=var3579, r3=var1914, $z0=var3977, java.io.IOException=var3786, $r5=var1126, $r6=var2598, java.lang.Object=var2535, $r7=var1415, $r8=var2086, $r9=var1581}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.File;	r3 := @parameter1: java.nio.charset.Charset;	$z0 = virtualinvoke r0.<java.io.File: boolean isFile()>();	if $z0 != 0 goto $r1 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>();	$r5 = new java.io.IOException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a file");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.io.IOException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2