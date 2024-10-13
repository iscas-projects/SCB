(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2107 0)
(declare-sort var1120 0)
(declare-sort var3311 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var2107_read/-2101763014 (var2107 var1120 String) var3311)
(declare-const null-var2107 var2107)
(declare-const null-var1120 var1120)
(declare-const null-Int Int)
(declare-const var2741 var2107) ; Statement: r0 := @this: cn.hutool.poi.excel.sax.ExcelSaxReader 
(assert (not (= var2741 null-var2107)))
(declare-const var2567 var1120) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var2567 null-var1120)))
(declare-const var1595 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1595 null-Int)))
(define-const var3783 String (String_valueOf/1240665136 var1595)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(define-const var3729 var3311 (var2107_read/-2101763014 var2741 var2567 var3783)) ; Statement: $r3 = interfaceinvoke r0.<cn.hutool.poi.excel.sax.ExcelSaxReader: java.lang.Object read(java.io.InputStream,java.lang.String)>(r1, $r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/1240665136=([int], java.lang.String), var2107_read/-2101763014=([cn.hutool.poi.excel.sax.ExcelSaxReader, java.io.InputStream, java.lang.String], java.lang.Object)}
; {var2107=cn.hutool.poi.excel.sax.ExcelSaxReader, var2741=r0, var1120=java.io.InputStream, var2567=r1, var1595=i0, var3783=$r2, var3311=java.lang.Object, var3729=$r3}
; {cn.hutool.poi.excel.sax.ExcelSaxReader=var2107, r0=var2741, java.io.InputStream=var1120, r1=var2567, i0=var1595, $r2=var3783, java.lang.Object=var3311, $r3=var3729}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: cn.hutool.poi.excel.sax.ExcelSaxReader;	r1 := @parameter0: java.io.InputStream;	i0 := @parameter1: int;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	$r3 = interfaceinvoke r0.<cn.hutool.poi.excel.sax.ExcelSaxReader: java.lang.Object read(java.io.InputStream,java.lang.String)>(r1, $r2);	return $r3
;block_num 1