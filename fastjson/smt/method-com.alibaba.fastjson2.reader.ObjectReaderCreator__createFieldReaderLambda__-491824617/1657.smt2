(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3854 0)
(declare-sort var3648 0)
(declare-sort var1009 0)
(declare-sort var3785 0)
(declare-sort var1399 0)
(declare-sort var1136 0)
(declare-sort var2159 0)
(declare-sort var3918 0)
(declare-sort var2348 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lambdaSetter/1748950048 (var3854 ClassObject ClassObject var1399) var3785)
(declare-fun cast-from-var3785-to-var3918 (var3785) var3918)
(declare-fun createFieldReader/-675879695 (var3854 ClassObject ClassObject String ClassObject ClassObject Int Int String var1009 var3785 var2159 var1399 var3918 var1136) var2348)
(declare-const null-var3854 var3854)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1009 var1009)
(declare-const null-var3785 var3785)
(declare-const null-var1399 var1399)
(declare-const null-var1136 var1136)
(declare-const null-var2159 var2159)
(declare-const var2933 var3854) ; Statement: r11 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreator 
(assert (not (= var2933 null-var3854)))
(declare-const var3391 ClassObject) ; Statement: r12 := @parameter0: java.lang.Class 
(assert (not (= var3391 null-ClassObject)))
(declare-const var3850 ClassObject) ; Statement: r16 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3850 null-ClassObject)))
(declare-const var3177 String) ; Statement: r17 := @parameter2: java.lang.String 
(assert (not (= var3177 null-String)))
(declare-const var1619 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var1619 null-Int)))
(declare-const var3417 Int) ; Statement: l1 := @parameter4: long 
(assert (not (= var3417 null-Int)))
(declare-const var3662 String) ; Statement: r18 := @parameter5: java.lang.String 
(assert (not (= var3662 null-String)))
(declare-const var3160 var1009) ; Statement: r19 := @parameter6: java.util.Locale 
(assert (not (= var3160 null-var1009)))
(declare-const var857 var3785) ; Statement: r56 := @parameter7: java.lang.Object 
(assert (not (= var857 null-var3785)))
(declare-const var1389 String) ; Statement: r0 := @parameter8: java.lang.String 
(assert (not (= var1389 null-String)))
(declare-const var30 ClassObject) ; Statement: r2 := @parameter9: java.lang.reflect.Type 
(assert (not (= var30 null-ClassObject)))
(declare-const var1383 ClassObject) ; Statement: r13 := @parameter10: java.lang.Class 
(assert (not (= var1383 null-ClassObject)))
(declare-const var2989 var1399) ; Statement: r14 := @parameter11: java.lang.reflect.Method 
(assert (not (= var2989 null-var1399)))
(declare-const var2230 var1136) ; Statement: r1 := @parameter12: com.alibaba.fastjson2.reader.ObjectReader 
(assert (not (= var2230 null-var1136)))
 ; Statement: if r56 == null goto r58 = null 
(assert (= var857 null-var3785)) ; Cond: r56 == null 
(define-const var3465 var2159 null-var2159) ; Statement: r58 = null 
 ; Statement: if r0 == null goto (branch) 
(assert (= var1389 null-String)) ; Cond: r0 == null 
 ; Statement: if r1 == null goto $r3 = <java.lang.Boolean: java.lang.Class TYPE> 
(assert (not (= var2230 null-var1136))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var2284 var3785 (lambdaSetter/1748950048 var2933 var3391 var1383 var2989)) ; Statement: $r43 = virtualinvoke r11.<com.alibaba.fastjson2.reader.ObjectReaderCreator: java.lang.Object lambdaSetter(java.lang.Class,java.lang.Class,java.lang.reflect.Method)>(r12, r13, r14) 
(define-const var818 var3918 (cast-from-var3785-to-var3918 var2284)) ; Statement: r60 = (java.util.function.BiConsumer) $r43 
(assert true)
(define-const var891 var2348 (createFieldReader/-675879695 var2933 var3391 var3850 var3177 var30 var1383 var1619 var3417 var3662 var3160 var857 var3465 var2989 var818 var2230)) ; Statement: $r44 = virtualinvoke r11.<com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.FieldReader createFieldReader(java.lang.Class,java.lang.reflect.Type,java.lang.String,java.lang.reflect.Type,java.lang.Class,int,long,java.lang.String,java.util.Locale,java.lang.Object,com.alibaba.fastjson2.schema.JSONSchema,java.lang.reflect.Method,java.util.function.BiConsumer,com.alibaba.fastjson2.reader.ObjectReader)>(r12, r16, r17, r2, r13, i0, l1, r18, r19, r56, r58, r14, r60, r1) 
 ; Statement: return $r44 
(check-sat)
(get-model)
(get-unsat-core)
; {lambdaSetter/1748950048=([com.alibaba.fastjson2.reader.ObjectReaderCreator, java.lang.Class, java.lang.Class, java.lang.reflect.Method], java.lang.Object), cast-from-var3785-to-var3918=([java.lang.Object], java.util.function.BiConsumer), createFieldReader/-675879695=([com.alibaba.fastjson2.reader.ObjectReaderCreator, java.lang.Class, java.lang.reflect.Type, java.lang.String, java.lang.reflect.Type, java.lang.Class, int, long, java.lang.String, java.util.Locale, java.lang.Object, com.alibaba.fastjson2.schema.JSONSchema, java.lang.reflect.Method, java.util.function.BiConsumer, com.alibaba.fastjson2.reader.ObjectReader], com.alibaba.fastjson2.reader.FieldReader)}
; {var3854=com.alibaba.fastjson2.reader.ObjectReaderCreator, var2933=r11, var3391=r12, var3850=r16, var3177=r17, var3648=null_type, var1619=i0, var3417=l1, var3662=r18, var1009=java.util.Locale, var3160=r19, var3785=java.lang.Object, var857=r56, var1389=r0, var30=r2, var1383=r13, var1399=java.lang.reflect.Method, var2989=r14, var1136=com.alibaba.fastjson2.reader.ObjectReader, var2230=r1, var2159=com.alibaba.fastjson2.schema.JSONSchema, var3465=r58, var2284=$r43, var3918=java.util.function.BiConsumer, var818=r60, var2348=com.alibaba.fastjson2.reader.FieldReader, var891=$r44}
; {com.alibaba.fastjson2.reader.ObjectReaderCreator=var3854, r11=var2933, r12=var3391, r16=var3850, r17=var3177, null_type=var3648, i0=var1619, l1=var3417, r18=var3662, java.util.Locale=var1009, r19=var3160, java.lang.Object=var3785, r56=var857, r0=var1389, r2=var30, r13=var1383, java.lang.reflect.Method=var1399, r14=var2989, com.alibaba.fastjson2.reader.ObjectReader=var1136, r1=var2230, com.alibaba.fastjson2.schema.JSONSchema=var2159, r58=var3465, $r43=var2284, java.util.function.BiConsumer=var3918, r60=var818, com.alibaba.fastjson2.reader.FieldReader=var2348, $r44=var891}
;seq 
;cnt {}
;stmts r11 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreator;	r12 := @parameter0: java.lang.Class;	r16 := @parameter1: java.lang.reflect.Type;	r17 := @parameter2: java.lang.String;	i0 := @parameter3: int;	l1 := @parameter4: long;	r18 := @parameter5: java.lang.String;	r19 := @parameter6: java.util.Locale;	r56 := @parameter7: java.lang.Object;	r0 := @parameter8: java.lang.String;	r2 := @parameter9: java.lang.reflect.Type;	r13 := @parameter10: java.lang.Class;	r14 := @parameter11: java.lang.reflect.Method;	r1 := @parameter12: com.alibaba.fastjson2.reader.ObjectReader;	if r56 == null goto r58 = null;	r58 = null;	if r0 == null goto (branch);	if r1 == null goto $r3 = <java.lang.Boolean: java.lang.Class TYPE>;	$r43 = virtualinvoke r11.<com.alibaba.fastjson2.reader.ObjectReaderCreator: java.lang.Object lambdaSetter(java.lang.Class,java.lang.Class,java.lang.reflect.Method)>(r12, r13, r14);	r60 = (java.util.function.BiConsumer) $r43;	$r44 = virtualinvoke r11.<com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.FieldReader createFieldReader(java.lang.Class,java.lang.reflect.Type,java.lang.String,java.lang.reflect.Type,java.lang.Class,int,long,java.lang.String,java.util.Locale,java.lang.Object,com.alibaba.fastjson2.schema.JSONSchema,java.lang.reflect.Method,java.util.function.BiConsumer,com.alibaba.fastjson2.reader.ObjectReader)>(r12, r16, r17, r2, r13, i0, l1, r18, r19, r56, r58, r14, r60, r1);	return $r44
;block_num 4