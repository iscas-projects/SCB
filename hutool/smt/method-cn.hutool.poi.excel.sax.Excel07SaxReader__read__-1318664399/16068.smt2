(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1591 0)
(declare-sort var3404 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun read/-1051991635 (var1591 var3404 String) var1591)
(declare-const null-var1591 var1591)
(declare-const null-var3404 var3404)
(declare-const null-Int Int)
(declare-const var1113 var1591) ; Statement: r0 := @this: cn.hutool.poi.excel.sax.Excel07SaxReader 
(assert (not (= var1113 null-var1591)))
(declare-const var1412 var3404) ; Statement: r1 := @parameter0: org.apache.poi.openxml4j.opc.OPCPackage 
(assert (not (= var1412 null-var3404)))
(declare-const var3956 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3956 null-Int)))
(define-const var988 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var988)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var988!1 String)
(assert (= var988!1 ""))
(assert true)
(define-const var2435 String (append/672562846 var988!1 "rId")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rId") 
(declare-const var988!2 String)
(assert (= var988!2 (str.++ var988!1 "rId")))
(assert true)
(define-const var599 String (append/-1001720160 var2435 var3956)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2435!1 String)
(assert (str.prefixof var2435 var2435!1))
(assert true)
(define-const var373 String (toString/-2075883882 var599)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var320 var1591 (read/-1051991635 var1113 var1412 var373)) ; Statement: $r6 = virtualinvoke r0.<cn.hutool.poi.excel.sax.Excel07SaxReader: cn.hutool.poi.excel.sax.Excel07SaxReader read(org.apache.poi.openxml4j.opc.OPCPackage,java.lang.String)>(r1, $r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), read/-1051991635=([cn.hutool.poi.excel.sax.Excel07SaxReader, org.apache.poi.openxml4j.opc.OPCPackage, java.lang.String], cn.hutool.poi.excel.sax.Excel07SaxReader)}
; {var1591=cn.hutool.poi.excel.sax.Excel07SaxReader, var1113=r0, var3404=org.apache.poi.openxml4j.opc.OPCPackage, var1412=r1, var3956=i0, var988=$r2, var2435=$r3, var599=$r4, var373=$r5, var320=$r6}
; {cn.hutool.poi.excel.sax.Excel07SaxReader=var1591, r0=var1113, org.apache.poi.openxml4j.opc.OPCPackage=var3404, r1=var1412, i0=var3956, $r2=var988, $r3=var2435, $r4=var599, $r5=var373, $r6=var320}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.poi.excel.sax.Excel07SaxReader;	r1 := @parameter0: org.apache.poi.openxml4j.opc.OPCPackage;	i0 := @parameter1: int;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rId");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r0.<cn.hutool.poi.excel.sax.Excel07SaxReader: cn.hutool.poi.excel.sax.Excel07SaxReader read(org.apache.poi.openxml4j.opc.OPCPackage,java.lang.String)>(r1, $r5);	return $r6
;block_num 1