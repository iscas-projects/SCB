(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2436 0)
(declare-sort var1077 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun read/1311871986 (var2436 var1077 String) var2436)
(declare-const null-var2436 var2436)
(declare-const null-var1077 var1077)
(declare-const null-Int Int)
(declare-const var1913 var2436) ; Statement: r0 := @this: cn.hutool.poi.excel.sax.Excel07SaxReader 
(assert (not (= var1913 null-var2436)))
(declare-const var3232 var1077) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var3232 null-var1077)))
(declare-const var2579 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2579 null-Int)))
(define-const var2892 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2892)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2892!1 String)
(assert (= var2892!1 ""))
(assert true)
(define-const var1396 String (append/672562846 var2892!1 "rId")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rId") 
(declare-const var2892!2 String)
(assert (= var2892!2 (str.++ var2892!1 "rId")))
(assert true)
(define-const var798 String (append/-1001720160 var1396 var2579)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1396!1 String)
(assert (str.prefixof var1396 var1396!1))
(assert true)
(define-const var2772 String (toString/-2075883882 var798)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2400 var2436 (read/1311871986 var1913 var3232 var2772)) ; Statement: $r6 = virtualinvoke r0.<cn.hutool.poi.excel.sax.Excel07SaxReader: cn.hutool.poi.excel.sax.Excel07SaxReader read(java.io.File,java.lang.String)>(r1, $r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), read/1311871986=([cn.hutool.poi.excel.sax.Excel07SaxReader, java.io.File, java.lang.String], cn.hutool.poi.excel.sax.Excel07SaxReader)}
; {var2436=cn.hutool.poi.excel.sax.Excel07SaxReader, var1913=r0, var1077=java.io.File, var3232=r1, var2579=i0, var2892=$r2, var1396=$r3, var798=$r4, var2772=$r5, var2400=$r6}
; {cn.hutool.poi.excel.sax.Excel07SaxReader=var2436, r0=var1913, java.io.File=var1077, r1=var3232, i0=var2579, $r2=var2892, $r3=var1396, $r4=var798, $r5=var2772, $r6=var2400}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.poi.excel.sax.Excel07SaxReader;	r1 := @parameter0: java.io.File;	i0 := @parameter1: int;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rId");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r0.<cn.hutool.poi.excel.sax.Excel07SaxReader: cn.hutool.poi.excel.sax.Excel07SaxReader read(java.io.File,java.lang.String)>(r1, $r5);	return $r6
;block_num 1