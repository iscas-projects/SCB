(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var942 0)
(declare-sort var3099 0)
(declare-sort var1949 0)
(declare-sort var2607 0)
(declare-sort var1256 0)
(declare-sort var1003 0)
(declare-sort var1374 0)
(declare-sort var1473 0)
(declare-sort var3411 0)
(declare-sort var1364 0)
(declare-sort var637 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1374!class ClassObject)
(declare-const Int!class ClassObject)
(declare-fun getDeclaringClass/1477653585 (var1256) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getType/1903459528 (var1256) ClassObject)
(declare-fun getGenericType/1144576544 (var1256) ClassObject)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun var1473-init () var1473)
(declare-fun <init>/699441651 (var1473 String Int Int String var2607 String ClassObject ClassObject var1256 var3411) void)
(declare-fun initValueClass/-1685962320 (var1473) ClassObject)
(declare-fun cast-from-var1003-to-var637 (var1003) var637)
(declare-fun cast-from-var1364-to-var637 (var1364) var637)
(declare-const null-var942 var942)
(declare-const null-var3099 var3099)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2607 var2607)
(declare-const null-var1256 var1256)
(declare-const null-var1003 var1003)
(declare-const Int-TYPE ClassObject)
(declare-const null-NullType var1949)
(declare-const null-var3411 var3411)
(declare-const null-var1473 var1473)
(declare-const var1364-INSTANCE var1364)
(declare-const var1547 var942) ; Statement: r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1547 null-var942)))
(declare-const var2524 var3099) ; Statement: r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2524 null-var3099)))
(declare-const var3796 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3796 null-String)))
(declare-const var1486 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1486 null-Int)))
(declare-const var3907 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var3907 null-Int)))
(declare-const var354 String) ; Statement: r56 := @parameter4: java.lang.String 
(assert (not (= var354 null-String)))
(declare-const var3754 var2607) ; Statement: r6 := @parameter5: java.util.Locale 
(assert (not (= var3754 null-var2607)))
(declare-const var2663 String) ; Statement: r7 := @parameter6: java.lang.String 
(assert (not (= var2663 null-String)))
(declare-const var2525 var1256) ; Statement: r0 := @parameter7: java.lang.reflect.Field 
(assert (not (= var2525 null-var1256)))
(declare-const var2903 var1003) ; Statement: r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter 
(assert (not (= var2903 null-var1003)))
(assert true)
(define-const var1641 ClassObject (getDeclaringClass/1477653585 var2525)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>() 
(define-const var2396 ClassObject var1374!class) ; Statement: $r2 = class "Ljava/lang/Throwable;" 
(assert true)
(define-const var2386 Bool (isAssignableFrom/-1028998700 var2396 var1641)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1) 
 ; Statement: if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8) 
(assert (not (not (= (ite var2386 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var3911 String (getName/-1958580599 var1641)) ; Statement: $r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1648 Bool (startsWith/-1785782452 var3911 "java.lang")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang") 
 ; Statement: if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert (= (ite var1648 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1094 ClassObject (getType/1903459528 var2525)) ; Statement: r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert true)
(define-const var377 ClassObject (getGenericType/1144576544 var2525)) ; Statement: r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>() 
 ; Statement: if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE> 
(assert (not (= var2903 null-var1003))) ; Negate: Cond: r8 == null  
(define-const var3533 ClassObject Int-TYPE) ; Statement: $r50 = <java.lang.Byte: java.lang.Class TYPE> 
 ; Statement: if r57 != $r50 goto $r51 = <java.lang.Short: java.lang.Class TYPE> 
(assert (not (not (= var1094 var3533)))) ; Negate: Cond: r57 != $r50  
(define-const var1094!1 ClassObject Int!class) ; Statement: r57 = class "Ljava/lang/Byte;" 
(define-const var377!1 ClassObject (cast-from-ClassObject-to-ClassObject Int!class)) ; Statement: r58 = class "Ljava/lang/Byte;" 
 ; Statement: goto [?= $r59 = new com.alibaba.fastjson2.writer.FieldWriterObject] 
(assert true) ; Non Conditional
(define-const var3352 var1473 var1473-init) ; Statement: $r59 = new com.alibaba.fastjson2.writer.FieldWriterObject 
(assert true)
;(assert (<init>/699441651 var3352 var3796 var1486 var3907 var354 var3754 var2663 var377!1 var1094!1 var2525 null-var3411)) ; Statement: specialinvoke $r59.<com.alibaba.fastjson2.writer.FieldWriterObject: void <init>(java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Type,java.lang.Class,java.lang.reflect.Field,java.lang.reflect.Method)>(r5, i0, l1, r56, r6, r7, r58, r57, r0, null) 

(declare-const var3352!1 var1473)
(declare-const var3796!1 String)
(declare-const var1486!1 Int)
(declare-const var3907!1 Int)
(declare-const var354!1 String)
(declare-const var3754!1 var2607)
(declare-const var2663!1 String)
(declare-const var377!2 ClassObject)
(declare-const var1094!2 ClassObject)
(declare-const var2525!1 var1256)
(declare-const var3396 var1949)
(declare-const var3352!2 var1473)
(assert (not (= var3352!2 null-var1473)))
(assert (= (initValueClass/-1685962320 var3352!2) var1094!2)) ; Statement: $r59.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.Class initValueClass> = r57 
(define-const var958 var1364 var1364-INSTANCE) ; Statement: $r60 = <com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter INSTANCE> 
 ; Statement: if r8 == $r60 goto return $r59 
(assert (= (cast-from-var1003-to-var637 var2903) (cast-from-var1364-to-var637 var958))) ; Cond: r8 == $r60 
 ; Statement: return $r59 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaringClass/1477653585=([java.lang.reflect.Field], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), getName/-1958580599=([java.lang.Class], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getType/1903459528=([java.lang.reflect.Field], java.lang.Class), getGenericType/1144576544=([java.lang.reflect.Field], java.lang.reflect.Type), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), var1473-init=([], com.alibaba.fastjson2.writer.FieldWriterObject), <init>/699441651=([com.alibaba.fastjson2.writer.FieldWriterObject, java.lang.String, int, long, java.lang.String, java.util.Locale, java.lang.String, java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Field, java.lang.reflect.Method], void), initValueClass/-1685962320=([com.alibaba.fastjson2.writer.FieldWriterObject], java.lang.Class), cast-from-var1003-to-var637=([com.alibaba.fastjson2.writer.ObjectWriter], java.lang.Object), cast-from-var1364-to-var637=([com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter], java.lang.Object)}
; {var942=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1547=r3, var3099=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2524=r4, var3796=r5, var1949=null_type, var1486=i0, var3907=l1, var354=r56, var2607=java.util.Locale, var3754=r6, var2663=r7, var1256=java.lang.reflect.Field, var2525=r0, var1003=com.alibaba.fastjson2.writer.ObjectWriter, var2903=r8, var1641=r1, var1374=java.lang.Throwable, var2396=$r2, var2386=$z0, var3911=$r10, var1648=$z1, var1094=r57, var377=r58, var3533=$r50, var1473=com.alibaba.fastjson2.writer.FieldWriterObject, var3352=$r59, var3411=java.lang.reflect.Method, var3396=null, var1364=com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter, var958=$r60, var637=java.lang.Object}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var942, r3=var1547, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3099, r4=var2524, r5=var3796, null_type=var1949, i0=var1486, l1=var3907, r56=var354, java.util.Locale=var2607, r6=var3754, r7=var2663, java.lang.reflect.Field=var1256, r0=var2525, com.alibaba.fastjson2.writer.ObjectWriter=var1003, r8=var2903, r1=var1641, java.lang.Throwable=var1374, $r2=var2396, $z0=var2386, $r10=var3911, $z1=var1648, r57=var1094, r58=var377, $r50=var3533, com.alibaba.fastjson2.writer.FieldWriterObject=var1473, $r59=var3352, java.lang.reflect.Method=var3411, null=var3396, com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter=var1364, $r60=var958, java.lang.Object=var637}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r5 := @parameter1: java.lang.String;	i0 := @parameter2: int;	l1 := @parameter3: long;	r56 := @parameter4: java.lang.String;	r6 := @parameter5: java.util.Locale;	r7 := @parameter6: java.lang.String;	r0 := @parameter7: java.lang.reflect.Field;	r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter;	r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>();	$r2 = class "Ljava/lang/Throwable;";	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1);	if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8);	$r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang");	if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>();	if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE>;	$r50 = <java.lang.Byte: java.lang.Class TYPE>;	if r57 != $r50 goto $r51 = <java.lang.Short: java.lang.Class TYPE>;	r57 = class "Ljava/lang/Byte;";	r58 = class "Ljava/lang/Byte;";	goto [?= $r59 = new com.alibaba.fastjson2.writer.FieldWriterObject];	$r59 = new com.alibaba.fastjson2.writer.FieldWriterObject;	specialinvoke $r59.<com.alibaba.fastjson2.writer.FieldWriterObject: void <init>(java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Type,java.lang.Class,java.lang.reflect.Field,java.lang.reflect.Method)>(r5, i0, l1, r56, r6, r7, r58, r57, r0, null);	$r59.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.Class initValueClass> = r57;	$r60 = <com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter INSTANCE>;	if r8 == $r60 goto return $r59;	return $r59
;block_num 7