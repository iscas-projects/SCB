(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1375 0)
(declare-sort var1201 0)
(declare-sort var883 0)
(declare-sort var3862 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1375-init () var1375)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var883_getDefault/273610319 () var1201)
(declare-fun append/-1031950772 (String var3862) String)
(declare-fun cast-from-var1201-to-var3862 (var1201) var3862)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1375 String) void)
(define-const var1722 var1375 var1375-init) ; Statement: $r0 = new java.io.IOException 
(define-const var2679 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2679)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2679!1 String)
(assert (= var2679!1 ""))
(assert true)
(define-const var2209 String (append/672562846 var2679!1 "unrecognized FileSystem type ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unrecognized FileSystem type ") 
(declare-const var2679!2 String)
(assert (= var2679!2 (str.++ var2679!1 "unrecognized FileSystem type ")))
(define-const var1110 var1201 var883_getDefault/273610319) ; Statement: $r2 = staticinvoke <java.nio.file.FileSystems: java.nio.file.FileSystem getDefault()>() 
(assert true)
(define-const var2046 String (append/-1031950772 var2209 (cast-from-var1201-to-var3862 var1110))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2209!1 String)
(assert (str.prefixof var2209 var2209!1))
(assert true)
(define-const var3171 String (toString/-2075883882 var2046)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var1722 var3171)) ; Statement: specialinvoke $r0.<java.io.IOException: void <init>(java.lang.String)>($r5) 

(declare-const var1722!1 var1375)
(declare-const var3171!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1375-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var883_getDefault/273610319=([], java.nio.file.FileSystem), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1201-to-var3862=([java.nio.file.FileSystem], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1375=java.io.IOException, var1722=$r0, var2679=$r1, var2209=$r3, var1201=java.nio.file.FileSystem, var883=java.nio.file.FileSystems, var1110=$r2, var3862=java.lang.Object, var2046=$r4, var3171=$r5}
; {java.io.IOException=var1375, $r0=var1722, $r1=var2679, $r3=var2209, java.nio.file.FileSystem=var1201, java.nio.file.FileSystems=var883, $r2=var1110, java.lang.Object=var3862, $r4=var2046, $r5=var3171}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.io.IOException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unrecognized FileSystem type ");	$r2 = staticinvoke <java.nio.file.FileSystems: java.nio.file.FileSystem getDefault()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.IOException: void <init>(java.lang.String)>($r5);	throw $r0
;block_num 1