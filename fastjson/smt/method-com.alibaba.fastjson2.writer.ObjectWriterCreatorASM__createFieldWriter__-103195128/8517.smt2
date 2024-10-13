(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3196 0)
(declare-sort var857 0)
(declare-sort var2777 0)
(declare-sort var3345 0)
(declare-sort var2102 0)
(declare-sort var3788 0)
(declare-sort var2897 0)
(declare-sort var3271 0)
(declare-sort var2442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2897!class ClassObject)
(declare-fun getDeclaringClass/1477653585 (var2102) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getType/1903459528 (var2102) ClassObject)
(declare-fun getGenericType/1144576544 (var2102) ClassObject)
(declare-fun var2442-init () var2442)
(declare-fun <init>/-501940082 (var2442 String Int Int String String var2102) void)
(declare-const null-var3196 var3196)
(declare-const null-var857 var857)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3345 var3345)
(declare-const null-var2102 var2102)
(declare-const null-var3788 var3788)
(declare-const var3271-TYPE ClassObject)
(declare-const Int-TYPE ClassObject)
(declare-const var1537 var3196) ; Statement: r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1537 null-var3196)))
(declare-const var2804 var857) ; Statement: r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2804 null-var857)))
(declare-const var1488 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1488 null-String)))
(declare-const var1453 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1453 null-Int)))
(declare-const var3559 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var3559 null-Int)))
(declare-const var3834 String) ; Statement: r56 := @parameter4: java.lang.String 
(assert (not (= var3834 null-String)))
(declare-const var1947 var3345) ; Statement: r6 := @parameter5: java.util.Locale 
(assert (not (= var1947 null-var3345)))
(declare-const var2716 String) ; Statement: r7 := @parameter6: java.lang.String 
(assert (not (= var2716 null-String)))
(declare-const var25 var2102) ; Statement: r0 := @parameter7: java.lang.reflect.Field 
(assert (not (= var25 null-var2102)))
(declare-const var2994 var3788) ; Statement: r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter 
(assert (not (= var2994 null-var3788)))
(assert true)
(define-const var974 ClassObject (getDeclaringClass/1477653585 var25)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>() 
(define-const var2278 ClassObject var2897!class) ; Statement: $r2 = class "Ljava/lang/Throwable;" 
(assert true)
(define-const var1321 Bool (isAssignableFrom/-1028998700 var2278 var974)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1) 
 ; Statement: if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8) 
(assert (not (not (= (ite var1321 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var780 String (getName/-1958580599 var974)) ; Statement: $r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1180 Bool (startsWith/-1785782452 var780 "java.lang")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang") 
 ; Statement: if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert (= (ite var1180 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1975 ClassObject (getType/1903459528 var25)) ; Statement: r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert true)
(define-const var1670 ClassObject (getGenericType/1144576544 var25)) ; Statement: r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>() 
 ; Statement: if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE> 
(assert (= var2994 null-var3788)) ; Cond: r8 == null 
(define-const var2017 ClassObject var3271-TYPE) ; Statement: $r11 = <java.lang.Boolean: java.lang.Class TYPE> 
 ; Statement: if r57 != $r11 goto $r12 = <java.lang.Byte: java.lang.Class TYPE> 
(assert (not (= var1975 var2017))) ; Cond: r57 != $r11 
(define-const var2484 ClassObject Int-TYPE) ; Statement: $r12 = <java.lang.Byte: java.lang.Class TYPE> 
 ; Statement: if r57 != $r12 goto $r13 = <java.lang.Short: java.lang.Class TYPE> 
(assert (not (= var1975 var2484))) ; Cond: r57 != $r12 
(define-const var482 ClassObject Int-TYPE) ; Statement: $r13 = <java.lang.Short: java.lang.Class TYPE> 
 ; Statement: if r57 != $r13 goto $r14 = <java.lang.Integer: java.lang.Class TYPE> 
(assert (not (not (= var1975 var482)))) ; Negate: Cond: r57 != $r13  
(define-const var1275 var2442 var2442-init) ; Statement: $r47 = new com.alibaba.fastjson2.writer.FieldWriterInt16ValField 
(assert true)
;(assert (<init>/-501940082 var1275 var1488 var1453 var3559 var3834 var2716 var25)) ; Statement: specialinvoke $r47.<com.alibaba.fastjson2.writer.FieldWriterInt16ValField: void <init>(java.lang.String,int,long,java.lang.String,java.lang.String,java.lang.reflect.Field)>(r5, i0, l1, r56, r7, r0) 

(declare-const var1275!1 var2442)
(declare-const var1488!1 String)
(declare-const var1453!1 Int)
(declare-const var3559!1 Int)
(declare-const var3834!1 String)
(declare-const var2716!1 String)
(declare-const var25!1 var2102)
 ; Statement: return $r47 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaringClass/1477653585=([java.lang.reflect.Field], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), getName/-1958580599=([java.lang.Class], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getType/1903459528=([java.lang.reflect.Field], java.lang.Class), getGenericType/1144576544=([java.lang.reflect.Field], java.lang.reflect.Type), var2442-init=([], com.alibaba.fastjson2.writer.FieldWriterInt16ValField), <init>/-501940082=([com.alibaba.fastjson2.writer.FieldWriterInt16ValField, java.lang.String, int, long, java.lang.String, java.lang.String, java.lang.reflect.Field], void)}
; {var3196=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1537=r3, var857=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2804=r4, var1488=r5, var2777=null_type, var1453=i0, var3559=l1, var3834=r56, var3345=java.util.Locale, var1947=r6, var2716=r7, var2102=java.lang.reflect.Field, var25=r0, var3788=com.alibaba.fastjson2.writer.ObjectWriter, var2994=r8, var974=r1, var2897=java.lang.Throwable, var2278=$r2, var1321=$z0, var780=$r10, var1180=$z1, var1975=r57, var1670=r58, var3271=java.lang.Boolean, var2017=$r11, var2484=$r12, var482=$r13, var2442=com.alibaba.fastjson2.writer.FieldWriterInt16ValField, var1275=$r47}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3196, r3=var1537, com.alibaba.fastjson2.writer.ObjectWriterProvider=var857, r4=var2804, r5=var1488, null_type=var2777, i0=var1453, l1=var3559, r56=var3834, java.util.Locale=var3345, r6=var1947, r7=var2716, java.lang.reflect.Field=var2102, r0=var25, com.alibaba.fastjson2.writer.ObjectWriter=var3788, r8=var2994, r1=var974, java.lang.Throwable=var2897, $r2=var2278, $z0=var1321, $r10=var780, $z1=var1180, r57=var1975, r58=var1670, java.lang.Boolean=var3271, $r11=var2017, $r12=var2484, $r13=var482, com.alibaba.fastjson2.writer.FieldWriterInt16ValField=var2442, $r47=var1275}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r5 := @parameter1: java.lang.String;	i0 := @parameter2: int;	l1 := @parameter3: long;	r56 := @parameter4: java.lang.String;	r6 := @parameter5: java.util.Locale;	r7 := @parameter6: java.lang.String;	r0 := @parameter7: java.lang.reflect.Field;	r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter;	r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>();	$r2 = class "Ljava/lang/Throwable;";	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1);	if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8);	$r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang");	if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>();	if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE>;	$r11 = <java.lang.Boolean: java.lang.Class TYPE>;	if r57 != $r11 goto $r12 = <java.lang.Byte: java.lang.Class TYPE>;	$r12 = <java.lang.Byte: java.lang.Class TYPE>;	if r57 != $r12 goto $r13 = <java.lang.Short: java.lang.Class TYPE>;	$r13 = <java.lang.Short: java.lang.Class TYPE>;	if r57 != $r13 goto $r14 = <java.lang.Integer: java.lang.Class TYPE>;	$r47 = new com.alibaba.fastjson2.writer.FieldWriterInt16ValField;	specialinvoke $r47.<com.alibaba.fastjson2.writer.FieldWriterInt16ValField: void <init>(java.lang.String,int,long,java.lang.String,java.lang.String,java.lang.reflect.Field)>(r5, i0, l1, r56, r7, r0);	return $r47
;block_num 7