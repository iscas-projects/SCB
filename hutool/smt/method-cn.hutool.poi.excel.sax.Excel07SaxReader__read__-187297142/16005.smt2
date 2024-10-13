(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3664 0)
(declare-sort var1080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun read/1248431860 (var3664 var1080 String) var3664)
(declare-const null-var3664 var3664)
(declare-const null-var1080 var1080)
(declare-const null-Int Int)
(declare-const var1631 var3664) ; Statement: r0 := @this: cn.hutool.poi.excel.sax.Excel07SaxReader 
(assert (not (= var1631 null-var3664)))
(declare-const var3471 var1080) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var3471 null-var1080)))
(declare-const var2070 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2070 null-Int)))
(define-const var2502 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2502)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2502!1 String)
(assert (= var2502!1 ""))
(assert true)
(define-const var3347 String (append/672562846 var2502!1 "rId")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rId") 
(declare-const var2502!2 String)
(assert (= var2502!2 (str.++ var2502!1 "rId")))
(assert true)
(define-const var691 String (append/-1001720160 var3347 var2070)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3347!1 String)
(assert (str.prefixof var3347 var3347!1))
(assert true)
(define-const var1054 String (toString/-2075883882 var691)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var868 var3664 (read/1248431860 var1631 var3471 var1054)) ; Statement: $r6 = virtualinvoke r0.<cn.hutool.poi.excel.sax.Excel07SaxReader: cn.hutool.poi.excel.sax.Excel07SaxReader read(java.io.InputStream,java.lang.String)>(r1, $r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), read/1248431860=([cn.hutool.poi.excel.sax.Excel07SaxReader, java.io.InputStream, java.lang.String], cn.hutool.poi.excel.sax.Excel07SaxReader)}
; {var3664=cn.hutool.poi.excel.sax.Excel07SaxReader, var1631=r0, var1080=java.io.InputStream, var3471=r1, var2070=i0, var2502=$r2, var3347=$r3, var691=$r4, var1054=$r5, var868=$r6}
; {cn.hutool.poi.excel.sax.Excel07SaxReader=var3664, r0=var1631, java.io.InputStream=var1080, r1=var3471, i0=var2070, $r2=var2502, $r3=var3347, $r4=var691, $r5=var1054, $r6=var868}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.poi.excel.sax.Excel07SaxReader;	r1 := @parameter0: java.io.InputStream;	i0 := @parameter1: int;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rId");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r0.<cn.hutool.poi.excel.sax.Excel07SaxReader: cn.hutool.poi.excel.sax.Excel07SaxReader read(java.io.InputStream,java.lang.String)>(r1, $r5);	return $r6
;block_num 1