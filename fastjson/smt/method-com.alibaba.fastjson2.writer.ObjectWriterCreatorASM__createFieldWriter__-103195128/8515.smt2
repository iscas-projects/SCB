(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3186 0)
(declare-sort var2297 0)
(declare-sort var2195 0)
(declare-sort var139 0)
(declare-sort var1523 0)
(declare-sort var922 0)
(declare-sort var122 0)
(declare-sort var2812 0)
(declare-sort var1582 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var122!class ClassObject)
(declare-fun getDeclaringClass/1477653585 (var1523) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getType/1903459528 (var1523) ClassObject)
(declare-fun getGenericType/1144576544 (var1523) ClassObject)
(declare-fun var1582-init () var1582)
(declare-fun <init>/327967 (var1582 String Int Int String String var1523) void)
(declare-const null-var3186 var3186)
(declare-const null-var2297 var2297)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var139 var139)
(declare-const null-var1523 var1523)
(declare-const null-var922 var922)
(declare-const var2812-TYPE ClassObject)
(declare-const Int-TYPE ClassObject)
(declare-const var1694 var3186) ; Statement: r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1694 null-var3186)))
(declare-const var661 var2297) ; Statement: r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var661 null-var2297)))
(declare-const var2008 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2008 null-String)))
(declare-const var508 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var508 null-Int)))
(declare-const var1247 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var1247 null-Int)))
(declare-const var1461 String) ; Statement: r56 := @parameter4: java.lang.String 
(assert (not (= var1461 null-String)))
(declare-const var3273 var139) ; Statement: r6 := @parameter5: java.util.Locale 
(assert (not (= var3273 null-var139)))
(declare-const var1110 String) ; Statement: r7 := @parameter6: java.lang.String 
(assert (not (= var1110 null-String)))
(declare-const var1105 var1523) ; Statement: r0 := @parameter7: java.lang.reflect.Field 
(assert (not (= var1105 null-var1523)))
(declare-const var3652 var922) ; Statement: r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter 
(assert (not (= var3652 null-var922)))
(assert true)
(define-const var3949 ClassObject (getDeclaringClass/1477653585 var1105)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>() 
(define-const var2970 ClassObject var122!class) ; Statement: $r2 = class "Ljava/lang/Throwable;" 
(assert true)
(define-const var1267 Bool (isAssignableFrom/-1028998700 var2970 var3949)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1) 
 ; Statement: if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8) 
(assert (not (not (= (ite var1267 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var2848 String (getName/-1958580599 var3949)) ; Statement: $r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1505 Bool (startsWith/-1785782452 var2848 "java.lang")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang") 
 ; Statement: if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert (= (ite var1505 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2336 ClassObject (getType/1903459528 var1105)) ; Statement: r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert true)
(define-const var2241 ClassObject (getGenericType/1144576544 var1105)) ; Statement: r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>() 
 ; Statement: if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE> 
(assert (= var3652 null-var922)) ; Cond: r8 == null 
(define-const var3489 ClassObject var2812-TYPE) ; Statement: $r11 = <java.lang.Boolean: java.lang.Class TYPE> 
 ; Statement: if r57 != $r11 goto $r12 = <java.lang.Byte: java.lang.Class TYPE> 
(assert (not (= var2336 var3489))) ; Cond: r57 != $r11 
(define-const var745 ClassObject Int-TYPE) ; Statement: $r12 = <java.lang.Byte: java.lang.Class TYPE> 
 ; Statement: if r57 != $r12 goto $r13 = <java.lang.Short: java.lang.Class TYPE> 
(assert (not (not (= var2336 var745)))) ; Negate: Cond: r57 != $r12  
(define-const var3710 var1582 var1582-init) ; Statement: $r48 = new com.alibaba.fastjson2.writer.FieldWriterInt8ValField 
(assert true)
;(assert (<init>/327967 var3710 var2008 var508 var1247 var1461 var1110 var1105)) ; Statement: specialinvoke $r48.<com.alibaba.fastjson2.writer.FieldWriterInt8ValField: void <init>(java.lang.String,int,long,java.lang.String,java.lang.String,java.lang.reflect.Field)>(r5, i0, l1, r56, r7, r0) 

(declare-const var3710!1 var1582)
(declare-const var2008!1 String)
(declare-const var508!1 Int)
(declare-const var1247!1 Int)
(declare-const var1461!1 String)
(declare-const var1110!1 String)
(declare-const var1105!1 var1523)
 ; Statement: return $r48 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaringClass/1477653585=([java.lang.reflect.Field], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), getName/-1958580599=([java.lang.Class], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getType/1903459528=([java.lang.reflect.Field], java.lang.Class), getGenericType/1144576544=([java.lang.reflect.Field], java.lang.reflect.Type), var1582-init=([], com.alibaba.fastjson2.writer.FieldWriterInt8ValField), <init>/327967=([com.alibaba.fastjson2.writer.FieldWriterInt8ValField, java.lang.String, int, long, java.lang.String, java.lang.String, java.lang.reflect.Field], void)}
; {var3186=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1694=r3, var2297=com.alibaba.fastjson2.writer.ObjectWriterProvider, var661=r4, var2008=r5, var2195=null_type, var508=i0, var1247=l1, var1461=r56, var139=java.util.Locale, var3273=r6, var1110=r7, var1523=java.lang.reflect.Field, var1105=r0, var922=com.alibaba.fastjson2.writer.ObjectWriter, var3652=r8, var3949=r1, var122=java.lang.Throwable, var2970=$r2, var1267=$z0, var2848=$r10, var1505=$z1, var2336=r57, var2241=r58, var2812=java.lang.Boolean, var3489=$r11, var745=$r12, var1582=com.alibaba.fastjson2.writer.FieldWriterInt8ValField, var3710=$r48}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3186, r3=var1694, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2297, r4=var661, r5=var2008, null_type=var2195, i0=var508, l1=var1247, r56=var1461, java.util.Locale=var139, r6=var3273, r7=var1110, java.lang.reflect.Field=var1523, r0=var1105, com.alibaba.fastjson2.writer.ObjectWriter=var922, r8=var3652, r1=var3949, java.lang.Throwable=var122, $r2=var2970, $z0=var1267, $r10=var2848, $z1=var1505, r57=var2336, r58=var2241, java.lang.Boolean=var2812, $r11=var3489, $r12=var745, com.alibaba.fastjson2.writer.FieldWriterInt8ValField=var1582, $r48=var3710}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r5 := @parameter1: java.lang.String;	i0 := @parameter2: int;	l1 := @parameter3: long;	r56 := @parameter4: java.lang.String;	r6 := @parameter5: java.util.Locale;	r7 := @parameter6: java.lang.String;	r0 := @parameter7: java.lang.reflect.Field;	r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter;	r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>();	$r2 = class "Ljava/lang/Throwable;";	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1);	if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8);	$r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang");	if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>();	if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE>;	$r11 = <java.lang.Boolean: java.lang.Class TYPE>;	if r57 != $r11 goto $r12 = <java.lang.Byte: java.lang.Class TYPE>;	$r12 = <java.lang.Byte: java.lang.Class TYPE>;	if r57 != $r12 goto $r13 = <java.lang.Short: java.lang.Class TYPE>;	$r48 = new com.alibaba.fastjson2.writer.FieldWriterInt8ValField;	specialinvoke $r48.<com.alibaba.fastjson2.writer.FieldWriterInt8ValField: void <init>(java.lang.String,int,long,java.lang.String,java.lang.String,java.lang.reflect.Field)>(r5, i0, l1, r56, r7, r0);	return $r48
;block_num 6