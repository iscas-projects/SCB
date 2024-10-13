(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3328 0)
(declare-sort var1103 0)
(declare-sort var272 0)
(declare-sort var664 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var664_parse/181508676 (String var1103) var664)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var272-DATE_TIME_FORMATTER_COOKIE var1103)
(declare-const null-var1103 var1103)
(declare-const var3499 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3499 null-String)))
(assert true)
(define-const var1395 Bool (endsWith/985337093 var3499 " CST")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(" CST") 
 ; Statement: if $z0 == 0 goto r9 = <com.alibaba.fastjson2.util.DateUtils: java.time.format.DateTimeFormatter DATE_TIME_FORMATTER_COOKIE> 
(assert (= (ite var1395 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3820 var1103 var272-DATE_TIME_FORMATTER_COOKIE) ; Statement: r9 = <com.alibaba.fastjson2.util.DateUtils: java.time.format.DateTimeFormatter DATE_TIME_FORMATTER_COOKIE> 
 ; Statement: if r9 != null goto $r1 = staticinvoke <java.time.ZonedDateTime: java.time.ZonedDateTime parse(java.lang.CharSequence,java.time.format.DateTimeFormatter)>(r0, r9) 
(assert (not (= var3820 null-var1103))) ; Cond: r9 != null 
(define-const var356 var664 (var664_parse/181508676 (cast-from-String-to-String var3499) var3820)) ; Statement: $r1 = staticinvoke <java.time.ZonedDateTime: java.time.ZonedDateTime parse(java.lang.CharSequence,java.time.format.DateTimeFormatter)>(r0, r9) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), var664_parse/181508676=([java.lang.CharSequence, java.time.format.DateTimeFormatter], java.time.ZonedDateTime), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var3499=r0, var3328=null_type, var1395=$z0, var1103=java.time.format.DateTimeFormatter, var272=com.alibaba.fastjson2.util.DateUtils, var3820=r9, var664=java.time.ZonedDateTime, var356=$r1}
; {r0=var3499, null_type=var3328, $z0=var1395, java.time.format.DateTimeFormatter=var1103, com.alibaba.fastjson2.util.DateUtils=var272, r9=var3820, java.time.ZonedDateTime=var664, $r1=var356}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(" CST");	if $z0 == 0 goto r9 = <com.alibaba.fastjson2.util.DateUtils: java.time.format.DateTimeFormatter DATE_TIME_FORMATTER_COOKIE>;	r9 = <com.alibaba.fastjson2.util.DateUtils: java.time.format.DateTimeFormatter DATE_TIME_FORMATTER_COOKIE>;	if r9 != null goto $r1 = staticinvoke <java.time.ZonedDateTime: java.time.ZonedDateTime parse(java.lang.CharSequence,java.time.format.DateTimeFormatter)>(r0, r9);	$r1 = staticinvoke <java.time.ZonedDateTime: java.time.ZonedDateTime parse(java.lang.CharSequence,java.time.format.DateTimeFormatter)>(r0, r9);	return $r1
;block_num 3