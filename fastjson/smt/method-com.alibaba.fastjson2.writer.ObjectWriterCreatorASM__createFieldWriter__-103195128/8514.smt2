(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2084 0)
(declare-sort var3996 0)
(declare-sort var100 0)
(declare-sort var1970 0)
(declare-sort var2075 0)
(declare-sort var2515 0)
(declare-sort var121 0)
(declare-sort var1717 0)
(declare-sort var1890 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var121!class ClassObject)
(declare-fun getDeclaringClass/1477653585 (var2075) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getType/1903459528 (var2075) ClassObject)
(declare-fun getGenericType/1144576544 (var2075) ClassObject)
(declare-fun var1890-init () var1890)
(declare-fun <init>/1063284918 (var1890 String Int Int String String var2075 ClassObject) void)
(declare-const null-var2084 var2084)
(declare-const null-var3996 var3996)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1970 var1970)
(declare-const null-var2075 var2075)
(declare-const null-var2515 var2515)
(declare-const var1717-TYPE ClassObject)
(declare-const var2335 var2084) ; Statement: r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2335 null-var2084)))
(declare-const var1511 var3996) ; Statement: r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var1511 null-var3996)))
(declare-const var2571 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2571 null-String)))
(declare-const var639 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var639 null-Int)))
(declare-const var2180 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var2180 null-Int)))
(declare-const var217 String) ; Statement: r56 := @parameter4: java.lang.String 
(assert (not (= var217 null-String)))
(declare-const var434 var1970) ; Statement: r6 := @parameter5: java.util.Locale 
(assert (not (= var434 null-var1970)))
(declare-const var2387 String) ; Statement: r7 := @parameter6: java.lang.String 
(assert (not (= var2387 null-String)))
(declare-const var348 var2075) ; Statement: r0 := @parameter7: java.lang.reflect.Field 
(assert (not (= var348 null-var2075)))
(declare-const var1276 var2515) ; Statement: r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter 
(assert (not (= var1276 null-var2515)))
(assert true)
(define-const var1691 ClassObject (getDeclaringClass/1477653585 var348)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>() 
(define-const var1188 ClassObject var121!class) ; Statement: $r2 = class "Ljava/lang/Throwable;" 
(assert true)
(define-const var3973 Bool (isAssignableFrom/-1028998700 var1188 var1691)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1) 
 ; Statement: if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8) 
(assert (not (not (= (ite var3973 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var397 String (getName/-1958580599 var1691)) ; Statement: $r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2539 Bool (startsWith/-1785782452 var397 "java.lang")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang") 
 ; Statement: if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert (= (ite var2539 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2090 ClassObject (getType/1903459528 var348)) ; Statement: r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert true)
(define-const var1925 ClassObject (getGenericType/1144576544 var348)) ; Statement: r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>() 
 ; Statement: if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE> 
(assert (= var1276 null-var2515)) ; Cond: r8 == null 
(define-const var3454 ClassObject var1717-TYPE) ; Statement: $r11 = <java.lang.Boolean: java.lang.Class TYPE> 
 ; Statement: if r57 != $r11 goto $r12 = <java.lang.Byte: java.lang.Class TYPE> 
(assert (not (not (= var2090 var3454)))) ; Negate: Cond: r57 != $r11  
(define-const var2965 var1890 var1890-init) ; Statement: $r49 = new com.alibaba.fastjson2.writer.FieldWriterBoolValField 
(assert true)
;(assert (<init>/1063284918 var2965 var2571 var639 var2180 var217 var2387 var348 var2090)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.writer.FieldWriterBoolValField: void <init>(java.lang.String,int,long,java.lang.String,java.lang.String,java.lang.reflect.Field,java.lang.Class)>(r5, i0, l1, r56, r7, r0, r57) 

(declare-const var2965!1 var1890)
(declare-const var2571!1 String)
(declare-const var639!1 Int)
(declare-const var2180!1 Int)
(declare-const var217!1 String)
(declare-const var2387!1 String)
(declare-const var348!1 var2075)
(declare-const var2090!1 ClassObject)
 ; Statement: return $r49 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaringClass/1477653585=([java.lang.reflect.Field], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), getName/-1958580599=([java.lang.Class], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getType/1903459528=([java.lang.reflect.Field], java.lang.Class), getGenericType/1144576544=([java.lang.reflect.Field], java.lang.reflect.Type), var1890-init=([], com.alibaba.fastjson2.writer.FieldWriterBoolValField), <init>/1063284918=([com.alibaba.fastjson2.writer.FieldWriterBoolValField, java.lang.String, int, long, java.lang.String, java.lang.String, java.lang.reflect.Field, java.lang.Class], void)}
; {var2084=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2335=r3, var3996=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1511=r4, var2571=r5, var100=null_type, var639=i0, var2180=l1, var217=r56, var1970=java.util.Locale, var434=r6, var2387=r7, var2075=java.lang.reflect.Field, var348=r0, var2515=com.alibaba.fastjson2.writer.ObjectWriter, var1276=r8, var1691=r1, var121=java.lang.Throwable, var1188=$r2, var3973=$z0, var397=$r10, var2539=$z1, var2090=r57, var1925=r58, var1717=java.lang.Boolean, var3454=$r11, var1890=com.alibaba.fastjson2.writer.FieldWriterBoolValField, var2965=$r49}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2084, r3=var2335, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3996, r4=var1511, r5=var2571, null_type=var100, i0=var639, l1=var2180, r56=var217, java.util.Locale=var1970, r6=var434, r7=var2387, java.lang.reflect.Field=var2075, r0=var348, com.alibaba.fastjson2.writer.ObjectWriter=var2515, r8=var1276, r1=var1691, java.lang.Throwable=var121, $r2=var1188, $z0=var3973, $r10=var397, $z1=var2539, r57=var2090, r58=var1925, java.lang.Boolean=var1717, $r11=var3454, com.alibaba.fastjson2.writer.FieldWriterBoolValField=var1890, $r49=var2965}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r5 := @parameter1: java.lang.String;	i0 := @parameter2: int;	l1 := @parameter3: long;	r56 := @parameter4: java.lang.String;	r6 := @parameter5: java.util.Locale;	r7 := @parameter6: java.lang.String;	r0 := @parameter7: java.lang.reflect.Field;	r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter;	r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>();	$r2 = class "Ljava/lang/Throwable;";	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1);	if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8);	$r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang");	if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>();	if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE>;	$r11 = <java.lang.Boolean: java.lang.Class TYPE>;	if r57 != $r11 goto $r12 = <java.lang.Byte: java.lang.Class TYPE>;	$r49 = new com.alibaba.fastjson2.writer.FieldWriterBoolValField;	specialinvoke $r49.<com.alibaba.fastjson2.writer.FieldWriterBoolValField: void <init>(java.lang.String,int,long,java.lang.String,java.lang.String,java.lang.reflect.Field,java.lang.Class)>(r5, i0, l1, r56, r7, r0, r57);	return $r49
;block_num 5