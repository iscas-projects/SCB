(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1628 0)
(declare-sort var3239 0)
(declare-sort var3054 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var1628_read/1782858092 (var1628 var3239 String) var3054)
(declare-const null-var1628 var1628)
(declare-const null-var3239 var3239)
(declare-const null-Int Int)
(declare-const var761 var1628) ; Statement: r0 := @this: cn.hutool.poi.excel.sax.ExcelSaxReader 
(assert (not (= var761 null-var1628)))
(declare-const var1769 var3239) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var1769 null-var3239)))
(declare-const var3664 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3664 null-Int)))
(define-const var3576 String (String_valueOf/1240665136 var3664)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(define-const var3463 var3054 (var1628_read/1782858092 var761 var1769 var3576)) ; Statement: $r3 = interfaceinvoke r0.<cn.hutool.poi.excel.sax.ExcelSaxReader: java.lang.Object read(java.io.File,java.lang.String)>(r1, $r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/1240665136=([int], java.lang.String), var1628_read/1782858092=([cn.hutool.poi.excel.sax.ExcelSaxReader, java.io.File, java.lang.String], java.lang.Object)}
; {var1628=cn.hutool.poi.excel.sax.ExcelSaxReader, var761=r0, var3239=java.io.File, var1769=r1, var3664=i0, var3576=$r2, var3054=java.lang.Object, var3463=$r3}
; {cn.hutool.poi.excel.sax.ExcelSaxReader=var1628, r0=var761, java.io.File=var3239, r1=var1769, i0=var3664, $r2=var3576, java.lang.Object=var3054, $r3=var3463}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: cn.hutool.poi.excel.sax.ExcelSaxReader;	r1 := @parameter0: java.io.File;	i0 := @parameter1: int;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	$r3 = interfaceinvoke r0.<cn.hutool.poi.excel.sax.ExcelSaxReader: java.lang.Object read(java.io.File,java.lang.String)>(r1, $r2);	return $r3
;block_num 1