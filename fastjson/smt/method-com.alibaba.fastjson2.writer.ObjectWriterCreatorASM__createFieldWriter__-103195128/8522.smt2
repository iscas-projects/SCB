(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2387 0)
(declare-sort var2952 0)
(declare-sort var3211 0)
(declare-sort var3356 0)
(declare-sort var3857 0)
(declare-sort var3849 0)
(declare-sort var532 0)
(declare-sort var1221 0)
(declare-sort var2836 0)
(declare-sort var2398 0)
(declare-sort var1139 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var532!class ClassObject)
(declare-const Float32!class ClassObject)
(declare-fun getDeclaringClass/1477653585 (var3857) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getType/1903459528 (var3857) ClassObject)
(declare-fun getGenericType/1144576544 (var3857) ClassObject)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun var1221-init () var1221)
(declare-fun <init>/699441651 (var1221 String Int Int String var3356 String ClassObject ClassObject var3857 var2836) void)
(declare-fun initValueClass/-1685962320 (var1221) ClassObject)
(declare-fun cast-from-var3849-to-var1139 (var3849) var1139)
(declare-fun cast-from-var2398-to-var1139 (var2398) var1139)
(declare-const null-var2387 var2387)
(declare-const null-var2952 var2952)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3356 var3356)
(declare-const null-var3857 var3857)
(declare-const null-var3849 var3849)
(declare-const Int-TYPE ClassObject)
(declare-const Float32-TYPE ClassObject)
(declare-const null-NullType var3211)
(declare-const null-var2836 var2836)
(declare-const null-var1221 var1221)
(declare-const var2398-INSTANCE var2398)
(declare-const var301 var2387) ; Statement: r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var301 null-var2387)))
(declare-const var2463 var2952) ; Statement: r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2463 null-var2952)))
(declare-const var293 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var293 null-String)))
(declare-const var232 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var232 null-Int)))
(declare-const var3395 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var3395 null-Int)))
(declare-const var3378 String) ; Statement: r56 := @parameter4: java.lang.String 
(assert (not (= var3378 null-String)))
(declare-const var686 var3356) ; Statement: r6 := @parameter5: java.util.Locale 
(assert (not (= var686 null-var3356)))
(declare-const var3540 String) ; Statement: r7 := @parameter6: java.lang.String 
(assert (not (= var3540 null-String)))
(declare-const var1741 var3857) ; Statement: r0 := @parameter7: java.lang.reflect.Field 
(assert (not (= var1741 null-var3857)))
(declare-const var2324 var3849) ; Statement: r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter 
(assert (not (= var2324 null-var3849)))
(assert true)
(define-const var3910 ClassObject (getDeclaringClass/1477653585 var1741)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>() 
(define-const var3822 ClassObject var532!class) ; Statement: $r2 = class "Ljava/lang/Throwable;" 
(assert true)
(define-const var926 Bool (isAssignableFrom/-1028998700 var3822 var3910)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1) 
 ; Statement: if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8) 
(assert (not (not (= (ite var926 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var2245 String (getName/-1958580599 var3910)) ; Statement: $r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var15 Bool (startsWith/-1785782452 var2245 "java.lang")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang") 
 ; Statement: if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert (= (ite var15 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3320 ClassObject (getType/1903459528 var1741)) ; Statement: r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert true)
(define-const var618 ClassObject (getGenericType/1144576544 var1741)) ; Statement: r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>() 
 ; Statement: if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE> 
(assert (not (= var2324 null-var3849))) ; Negate: Cond: r8 == null  
(define-const var2014 ClassObject Int-TYPE) ; Statement: $r50 = <java.lang.Byte: java.lang.Class TYPE> 
 ; Statement: if r57 != $r50 goto $r51 = <java.lang.Short: java.lang.Class TYPE> 
(assert (not (= var3320 var2014))) ; Cond: r57 != $r50 
(define-const var2439 ClassObject Int-TYPE) ; Statement: $r51 = <java.lang.Short: java.lang.Class TYPE> 
 ; Statement: if r57 != $r51 goto $r52 = <java.lang.Float: java.lang.Class TYPE> 
(assert (not (= var3320 var2439))) ; Cond: r57 != $r51 
(define-const var185 ClassObject Float32-TYPE) ; Statement: $r52 = <java.lang.Float: java.lang.Class TYPE> 
 ; Statement: if r57 != $r52 goto $r53 = <java.lang.Double: java.lang.Class TYPE> 
(assert (not (not (= var3320 var185)))) ; Negate: Cond: r57 != $r52  
(define-const var3320!1 ClassObject Float32!class) ; Statement: r57 = class "Ljava/lang/Float;" 
(define-const var618!1 ClassObject (cast-from-ClassObject-to-ClassObject Float32!class)) ; Statement: r58 = class "Ljava/lang/Float;" 
 ; Statement: goto [?= $r59 = new com.alibaba.fastjson2.writer.FieldWriterObject] 
(assert true) ; Non Conditional
(define-const var1316 var1221 var1221-init) ; Statement: $r59 = new com.alibaba.fastjson2.writer.FieldWriterObject 
(assert true)
;(assert (<init>/699441651 var1316 var293 var232 var3395 var3378 var686 var3540 var618!1 var3320!1 var1741 null-var2836)) ; Statement: specialinvoke $r59.<com.alibaba.fastjson2.writer.FieldWriterObject: void <init>(java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Type,java.lang.Class,java.lang.reflect.Field,java.lang.reflect.Method)>(r5, i0, l1, r56, r6, r7, r58, r57, r0, null) 

(declare-const var1316!1 var1221)
(declare-const var293!1 String)
(declare-const var232!1 Int)
(declare-const var3395!1 Int)
(declare-const var3378!1 String)
(declare-const var686!1 var3356)
(declare-const var3540!1 String)
(declare-const var618!2 ClassObject)
(declare-const var3320!2 ClassObject)
(declare-const var1741!1 var3857)
(declare-const var1372 var3211)
(declare-const var1316!2 var1221)
(assert (not (= var1316!2 null-var1221)))
(assert (= (initValueClass/-1685962320 var1316!2) var3320!2)) ; Statement: $r59.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.Class initValueClass> = r57 
(define-const var2828 var2398 var2398-INSTANCE) ; Statement: $r60 = <com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter INSTANCE> 
 ; Statement: if r8 == $r60 goto return $r59 
(assert (= (cast-from-var3849-to-var1139 var2324) (cast-from-var2398-to-var1139 var2828))) ; Cond: r8 == $r60 
 ; Statement: return $r59 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaringClass/1477653585=([java.lang.reflect.Field], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), getName/-1958580599=([java.lang.Class], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getType/1903459528=([java.lang.reflect.Field], java.lang.Class), getGenericType/1144576544=([java.lang.reflect.Field], java.lang.reflect.Type), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), var1221-init=([], com.alibaba.fastjson2.writer.FieldWriterObject), <init>/699441651=([com.alibaba.fastjson2.writer.FieldWriterObject, java.lang.String, int, long, java.lang.String, java.util.Locale, java.lang.String, java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Field, java.lang.reflect.Method], void), initValueClass/-1685962320=([com.alibaba.fastjson2.writer.FieldWriterObject], java.lang.Class), cast-from-var3849-to-var1139=([com.alibaba.fastjson2.writer.ObjectWriter], java.lang.Object), cast-from-var2398-to-var1139=([com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter], java.lang.Object)}
; {var2387=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var301=r3, var2952=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2463=r4, var293=r5, var3211=null_type, var232=i0, var3395=l1, var3378=r56, var3356=java.util.Locale, var686=r6, var3540=r7, var3857=java.lang.reflect.Field, var1741=r0, var3849=com.alibaba.fastjson2.writer.ObjectWriter, var2324=r8, var3910=r1, var532=java.lang.Throwable, var3822=$r2, var926=$z0, var2245=$r10, var15=$z1, var3320=r57, var618=r58, var2014=$r50, var2439=$r51, var185=$r52, var1221=com.alibaba.fastjson2.writer.FieldWriterObject, var1316=$r59, var2836=java.lang.reflect.Method, var1372=null, var2398=com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter, var2828=$r60, var1139=java.lang.Object}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2387, r3=var301, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2952, r4=var2463, r5=var293, null_type=var3211, i0=var232, l1=var3395, r56=var3378, java.util.Locale=var3356, r6=var686, r7=var3540, java.lang.reflect.Field=var3857, r0=var1741, com.alibaba.fastjson2.writer.ObjectWriter=var3849, r8=var2324, r1=var3910, java.lang.Throwable=var532, $r2=var3822, $z0=var926, $r10=var2245, $z1=var15, r57=var3320, r58=var618, $r50=var2014, $r51=var2439, $r52=var185, com.alibaba.fastjson2.writer.FieldWriterObject=var1221, $r59=var1316, java.lang.reflect.Method=var2836, null=var1372, com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter=var2398, $r60=var2828, java.lang.Object=var1139}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r5 := @parameter1: java.lang.String;	i0 := @parameter2: int;	l1 := @parameter3: long;	r56 := @parameter4: java.lang.String;	r6 := @parameter5: java.util.Locale;	r7 := @parameter6: java.lang.String;	r0 := @parameter7: java.lang.reflect.Field;	r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter;	r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>();	$r2 = class "Ljava/lang/Throwable;";	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1);	if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8);	$r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang");	if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>();	if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE>;	$r50 = <java.lang.Byte: java.lang.Class TYPE>;	if r57 != $r50 goto $r51 = <java.lang.Short: java.lang.Class TYPE>;	$r51 = <java.lang.Short: java.lang.Class TYPE>;	if r57 != $r51 goto $r52 = <java.lang.Float: java.lang.Class TYPE>;	$r52 = <java.lang.Float: java.lang.Class TYPE>;	if r57 != $r52 goto $r53 = <java.lang.Double: java.lang.Class TYPE>;	r57 = class "Ljava/lang/Float;";	r58 = class "Ljava/lang/Float;";	goto [?= $r59 = new com.alibaba.fastjson2.writer.FieldWriterObject];	$r59 = new com.alibaba.fastjson2.writer.FieldWriterObject;	specialinvoke $r59.<com.alibaba.fastjson2.writer.FieldWriterObject: void <init>(java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Type,java.lang.Class,java.lang.reflect.Field,java.lang.reflect.Method)>(r5, i0, l1, r56, r6, r7, r58, r57, r0, null);	$r59.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.Class initValueClass> = r57;	$r60 = <com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter INSTANCE>;	if r8 == $r60 goto return $r59;	return $r59
;block_num 9