(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var701 0)
(declare-sort var2218 0)
(declare-sort var50 0)
(declare-sort var1718 0)
(declare-sort var2727 0)
(declare-sort var1369 0)
(declare-sort var3864 0)
(declare-sort var1344 0)
(declare-sort var3311 0)
(declare-sort var1872 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1344-init () var1344)
(declare-fun <init>/-1124817595 (var1344 String ClassObject ClassObject Int Int String var50 var1718 var3864 var2727 var3311 var1872) void)
(declare-fun initReader/1351662160 (var1344) var1369)
(declare-const null-var701 var701)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var50 var50)
(declare-const null-var1718 var1718)
(declare-const null-var2727 var2727)
(declare-const null-var1369 var1369)
(declare-const null-var3864 var3864)
(declare-const null-NullType var2218)
(declare-const null-var3311 var3311)
(declare-const null-var1872 var1872)
(declare-const null-var1344 var1344)
(declare-const var927 var701) ; Statement: r100 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreator 
(assert (not (= var927 null-var701)))
(declare-const var1198 ClassObject) ; Statement: r13 := @parameter0: java.lang.Class 
(assert (not (= var1198 null-ClassObject)))
(declare-const var379 ClassObject) ; Statement: r12 := @parameter1: java.lang.reflect.Type 
(assert (not (= var379 null-ClassObject)))
(declare-const var2194 String) ; Statement: r16 := @parameter2: java.lang.String 
(assert (not (= var2194 null-String)))
(declare-const var2716 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var2716 null-Int)))
(declare-const var2690 Int) ; Statement: l0 := @parameter4: long 
(assert (not (= var2690 null-Int)))
(declare-const var3926 String) ; Statement: r17 := @parameter5: java.lang.String 
(assert (not (= var3926 null-String)))
(declare-const var3910 var50) ; Statement: r18 := @parameter6: java.util.Locale 
(assert (not (= var3910 null-var50)))
(declare-const var2978 var1718) ; Statement: r101 := @parameter7: java.lang.Object 
(assert (not (= var2978 null-var1718)))
(declare-const var1645 String) ; Statement: r1 := @parameter8: java.lang.String 
(assert (not (= var1645 null-String)))
(declare-const var1211 ClassObject) ; Statement: r3 := @parameter9: java.lang.reflect.Type 
(assert (not (= var1211 null-ClassObject)))
(declare-const var2965 ClassObject) ; Statement: r11 := @parameter10: java.lang.Class 
(assert (not (= var2965 null-ClassObject)))
(declare-const var415 var2727) ; Statement: r0 := @parameter11: java.lang.reflect.Method 
(assert (not (= var415 null-var2727)))
(declare-const var626 var1369) ; Statement: r2 := @parameter12: com.alibaba.fastjson2.reader.ObjectReader 
(assert (not (= var626 null-var1369)))
 ; Statement: if r0 == null goto $z0 = r101 instanceof java.lang.String 
(assert (= var415 null-var2727)) ; Cond: r0 == null 
(define-const var3533 Bool false) ; Statement: $z0 = r101 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var3533 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r101 == null goto r103 = null 
(assert (= var2978 null-var1718)) ; Cond: r101 == null 
(define-const var1953 var3864 null-var3864) ; Statement: r103 = null 
 ; Statement: if r1 == null goto (branch) 
(assert (= var1645 null-String)) ; Cond: r1 == null 
 ; Statement: if r2 == null goto $r4 = <java.lang.Boolean: java.lang.Class TYPE> 
(assert (not (= var626 null-var1369))) ; Negate: Cond: r2 == null  
(define-const var1851 var1344 var1344-init) ; Statement: $r86 = new com.alibaba.fastjson2.reader.FieldReaderObject 
(define-const var3712 Int (bv2nat (bvor ((_ int2bv 64) var2690) ((_ int2bv 64) 2251799813685248)))) ; Statement: $l5 = l0 | 2251799813685248L 
(assert true)
;(assert (<init>/-1124817595 var1851 var2194 var1211 var2965 var2716 var3712 var3926 var3910 var2978 var1953 var415 null-var3311 null-var1872)) ; Statement: specialinvoke $r86.<com.alibaba.fastjson2.reader.FieldReaderObject: void <init>(java.lang.String,java.lang.reflect.Type,java.lang.Class,int,long,java.lang.String,java.util.Locale,java.lang.Object,com.alibaba.fastjson2.schema.JSONSchema,java.lang.reflect.Method,java.lang.reflect.Field,java.util.function.BiConsumer)>(r16, r3, r11, i3, $l5, r17, r18, r101, r103, r0, null, null) 

(declare-const var1851!1 var1344)
(declare-const var2194!1 String)
(declare-const var1211!1 ClassObject)
(declare-const var2965!1 ClassObject)
(declare-const var2716!1 Int)
(declare-const var3712!1 Int)
(declare-const var3926!1 String)
(declare-const var3910!1 var50)
(declare-const var2978!1 var1718)
(declare-const var1953!1 var3864)
(declare-const var415!1 var2727)
(declare-const var677 var2218)
(declare-const var677!1 var2218)
(declare-const var1851!2 var1344)
(assert (not (= var1851!2 null-var1344)))
(assert (= (initReader/1351662160 var1851!2) var626)) ; Statement: $r86.<com.alibaba.fastjson2.reader.FieldReaderObject: com.alibaba.fastjson2.reader.ObjectReader initReader> = r2 
 ; Statement: return $r86 
(check-sat)
(get-model)
(get-unsat-core)
; {var1344-init=([], com.alibaba.fastjson2.reader.FieldReaderObject), <init>/-1124817595=([com.alibaba.fastjson2.reader.FieldReaderObject, java.lang.String, java.lang.reflect.Type, java.lang.Class, int, long, java.lang.String, java.util.Locale, java.lang.Object, com.alibaba.fastjson2.schema.JSONSchema, java.lang.reflect.Method, java.lang.reflect.Field, java.util.function.BiConsumer], void), initReader/1351662160=([com.alibaba.fastjson2.reader.FieldReaderObject], com.alibaba.fastjson2.reader.ObjectReader)}
; {var701=com.alibaba.fastjson2.reader.ObjectReaderCreator, var927=r100, var1198=r13, var379=r12, var2194=r16, var2218=null_type, var2716=i3, var2690=l0, var3926=r17, var50=java.util.Locale, var3910=r18, var1718=java.lang.Object, var2978=r101, var1645=r1, var1211=r3, var2965=r11, var2727=java.lang.reflect.Method, var415=r0, var1369=com.alibaba.fastjson2.reader.ObjectReader, var626=r2, var3533=$z0, var3864=com.alibaba.fastjson2.schema.JSONSchema, var1953=r103, var1344=com.alibaba.fastjson2.reader.FieldReaderObject, var1851=$r86, var3712=$l5, var3311=java.lang.reflect.Field, var1872=java.util.function.BiConsumer, var677=null}
; {com.alibaba.fastjson2.reader.ObjectReaderCreator=var701, r100=var927, r13=var1198, r12=var379, r16=var2194, null_type=var2218, i3=var2716, l0=var2690, r17=var3926, java.util.Locale=var50, r18=var3910, java.lang.Object=var1718, r101=var2978, r1=var1645, r3=var1211, r11=var2965, java.lang.reflect.Method=var2727, r0=var415, com.alibaba.fastjson2.reader.ObjectReader=var1369, r2=var626, $z0=var3533, com.alibaba.fastjson2.schema.JSONSchema=var3864, r103=var1953, com.alibaba.fastjson2.reader.FieldReaderObject=var1344, $r86=var1851, $l5=var3712, java.lang.reflect.Field=var3311, java.util.function.BiConsumer=var1872, null=var677}
;seq 
;cnt {}
;stmts r100 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreator;	r13 := @parameter0: java.lang.Class;	r12 := @parameter1: java.lang.reflect.Type;	r16 := @parameter2: java.lang.String;	i3 := @parameter3: int;	l0 := @parameter4: long;	r17 := @parameter5: java.lang.String;	r18 := @parameter6: java.util.Locale;	r101 := @parameter7: java.lang.Object;	r1 := @parameter8: java.lang.String;	r3 := @parameter9: java.lang.reflect.Type;	r11 := @parameter10: java.lang.Class;	r0 := @parameter11: java.lang.reflect.Method;	r2 := @parameter12: com.alibaba.fastjson2.reader.ObjectReader;	if r0 == null goto $z0 = r101 instanceof java.lang.String;	$z0 = r101 instanceof java.lang.String;	if $z0 == 0 goto (branch);	if r101 == null goto r103 = null;	r103 = null;	if r1 == null goto (branch);	if r2 == null goto $r4 = <java.lang.Boolean: java.lang.Class TYPE>;	$r86 = new com.alibaba.fastjson2.reader.FieldReaderObject;	$l5 = l0 | 2251799813685248L;	specialinvoke $r86.<com.alibaba.fastjson2.reader.FieldReaderObject: void <init>(java.lang.String,java.lang.reflect.Type,java.lang.Class,int,long,java.lang.String,java.util.Locale,java.lang.Object,com.alibaba.fastjson2.schema.JSONSchema,java.lang.reflect.Method,java.lang.reflect.Field,java.util.function.BiConsumer)>(r16, r3, r11, i3, $l5, r17, r18, r101, r103, r0, null, null);	$r86.<com.alibaba.fastjson2.reader.FieldReaderObject: com.alibaba.fastjson2.reader.ObjectReader initReader> = r2;	return $r86
;block_num 6