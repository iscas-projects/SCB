(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2960 0)
(declare-sort var1290 0)
(declare-sort var641 0)
(declare-sort var3485 0)
(declare-sort var2152 0)
(declare-sort var340 0)
(declare-sort var1546 0)
(declare-sort var1047 0)
(declare-sort var2114 0)
(declare-sort var2544 0)
(declare-sort var2578 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1546!class ClassObject)
(declare-const Int!class ClassObject)
(declare-fun getDeclaringClass/1477653585 (var2152) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getType/1903459528 (var2152) ClassObject)
(declare-fun getGenericType/1144576544 (var2152) ClassObject)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun var1047-init () var1047)
(declare-fun <init>/699441651 (var1047 String Int Int String var3485 String ClassObject ClassObject var2152 var2114) void)
(declare-fun initValueClass/-1685962320 (var1047) ClassObject)
(declare-fun cast-from-var340-to-var2578 (var340) var2578)
(declare-fun cast-from-var2544-to-var2578 (var2544) var2578)
(declare-const null-var2960 var2960)
(declare-const null-var1290 var1290)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3485 var3485)
(declare-const null-var2152 var2152)
(declare-const null-var340 var340)
(declare-const Int-TYPE ClassObject)
(declare-const null-NullType var641)
(declare-const null-var2114 var2114)
(declare-const null-var1047 var1047)
(declare-const var2544-INSTANCE var2544)
(declare-const var1730 var2960) ; Statement: r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1730 null-var2960)))
(declare-const var3468 var1290) ; Statement: r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var3468 null-var1290)))
(declare-const var3028 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3028 null-String)))
(declare-const var2920 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2920 null-Int)))
(declare-const var1792 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var1792 null-Int)))
(declare-const var2238 String) ; Statement: r56 := @parameter4: java.lang.String 
(assert (not (= var2238 null-String)))
(declare-const var3456 var3485) ; Statement: r6 := @parameter5: java.util.Locale 
(assert (not (= var3456 null-var3485)))
(declare-const var3676 String) ; Statement: r7 := @parameter6: java.lang.String 
(assert (not (= var3676 null-String)))
(declare-const var2779 var2152) ; Statement: r0 := @parameter7: java.lang.reflect.Field 
(assert (not (= var2779 null-var2152)))
(declare-const var1044 var340) ; Statement: r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter 
(assert (not (= var1044 null-var340)))
(assert true)
(define-const var3226 ClassObject (getDeclaringClass/1477653585 var2779)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>() 
(define-const var1588 ClassObject var1546!class) ; Statement: $r2 = class "Ljava/lang/Throwable;" 
(assert true)
(define-const var1357 Bool (isAssignableFrom/-1028998700 var1588 var3226)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1) 
 ; Statement: if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8) 
(assert (not (not (= (ite var1357 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var3657 String (getName/-1958580599 var3226)) ; Statement: $r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3922 Bool (startsWith/-1785782452 var3657 "java.lang")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang") 
 ; Statement: if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert (= (ite var3922 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3287 ClassObject (getType/1903459528 var2779)) ; Statement: r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert true)
(define-const var864 ClassObject (getGenericType/1144576544 var2779)) ; Statement: r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>() 
 ; Statement: if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE> 
(assert (not (= var1044 null-var340))) ; Negate: Cond: r8 == null  
(define-const var1489 ClassObject Int-TYPE) ; Statement: $r50 = <java.lang.Byte: java.lang.Class TYPE> 
 ; Statement: if r57 != $r50 goto $r51 = <java.lang.Short: java.lang.Class TYPE> 
(assert (not (= var3287 var1489))) ; Cond: r57 != $r50 
(define-const var3995 ClassObject Int-TYPE) ; Statement: $r51 = <java.lang.Short: java.lang.Class TYPE> 
 ; Statement: if r57 != $r51 goto $r52 = <java.lang.Float: java.lang.Class TYPE> 
(assert (not (not (= var3287 var3995)))) ; Negate: Cond: r57 != $r51  
(define-const var3287!1 ClassObject Int!class) ; Statement: r57 = class "Ljava/lang/Short;" 
(define-const var864!1 ClassObject (cast-from-ClassObject-to-ClassObject Int!class)) ; Statement: r58 = class "Ljava/lang/Short;" 
 ; Statement: goto [?= $r59 = new com.alibaba.fastjson2.writer.FieldWriterObject] 
(assert true) ; Non Conditional
(define-const var93 var1047 var1047-init) ; Statement: $r59 = new com.alibaba.fastjson2.writer.FieldWriterObject 
(assert true)
;(assert (<init>/699441651 var93 var3028 var2920 var1792 var2238 var3456 var3676 var864!1 var3287!1 var2779 null-var2114)) ; Statement: specialinvoke $r59.<com.alibaba.fastjson2.writer.FieldWriterObject: void <init>(java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Type,java.lang.Class,java.lang.reflect.Field,java.lang.reflect.Method)>(r5, i0, l1, r56, r6, r7, r58, r57, r0, null) 

(declare-const var93!1 var1047)
(declare-const var3028!1 String)
(declare-const var2920!1 Int)
(declare-const var1792!1 Int)
(declare-const var2238!1 String)
(declare-const var3456!1 var3485)
(declare-const var3676!1 String)
(declare-const var864!2 ClassObject)
(declare-const var3287!2 ClassObject)
(declare-const var2779!1 var2152)
(declare-const var595 var641)
(declare-const var93!2 var1047)
(assert (not (= var93!2 null-var1047)))
(assert (= (initValueClass/-1685962320 var93!2) var3287!2)) ; Statement: $r59.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.Class initValueClass> = r57 
(define-const var1822 var2544 var2544-INSTANCE) ; Statement: $r60 = <com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter INSTANCE> 
 ; Statement: if r8 == $r60 goto return $r59 
(assert (= (cast-from-var340-to-var2578 var1044) (cast-from-var2544-to-var2578 var1822))) ; Cond: r8 == $r60 
 ; Statement: return $r59 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaringClass/1477653585=([java.lang.reflect.Field], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), getName/-1958580599=([java.lang.Class], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getType/1903459528=([java.lang.reflect.Field], java.lang.Class), getGenericType/1144576544=([java.lang.reflect.Field], java.lang.reflect.Type), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), var1047-init=([], com.alibaba.fastjson2.writer.FieldWriterObject), <init>/699441651=([com.alibaba.fastjson2.writer.FieldWriterObject, java.lang.String, int, long, java.lang.String, java.util.Locale, java.lang.String, java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Field, java.lang.reflect.Method], void), initValueClass/-1685962320=([com.alibaba.fastjson2.writer.FieldWriterObject], java.lang.Class), cast-from-var340-to-var2578=([com.alibaba.fastjson2.writer.ObjectWriter], java.lang.Object), cast-from-var2544-to-var2578=([com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter], java.lang.Object)}
; {var2960=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1730=r3, var1290=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3468=r4, var3028=r5, var641=null_type, var2920=i0, var1792=l1, var2238=r56, var3485=java.util.Locale, var3456=r6, var3676=r7, var2152=java.lang.reflect.Field, var2779=r0, var340=com.alibaba.fastjson2.writer.ObjectWriter, var1044=r8, var3226=r1, var1546=java.lang.Throwable, var1588=$r2, var1357=$z0, var3657=$r10, var3922=$z1, var3287=r57, var864=r58, var1489=$r50, var3995=$r51, var1047=com.alibaba.fastjson2.writer.FieldWriterObject, var93=$r59, var2114=java.lang.reflect.Method, var595=null, var2544=com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter, var1822=$r60, var2578=java.lang.Object}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2960, r3=var1730, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1290, r4=var3468, r5=var3028, null_type=var641, i0=var2920, l1=var1792, r56=var2238, java.util.Locale=var3485, r6=var3456, r7=var3676, java.lang.reflect.Field=var2152, r0=var2779, com.alibaba.fastjson2.writer.ObjectWriter=var340, r8=var1044, r1=var3226, java.lang.Throwable=var1546, $r2=var1588, $z0=var1357, $r10=var3657, $z1=var3922, r57=var3287, r58=var864, $r50=var1489, $r51=var3995, com.alibaba.fastjson2.writer.FieldWriterObject=var1047, $r59=var93, java.lang.reflect.Method=var2114, null=var595, com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter=var2544, $r60=var1822, java.lang.Object=var2578}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r5 := @parameter1: java.lang.String;	i0 := @parameter2: int;	l1 := @parameter3: long;	r56 := @parameter4: java.lang.String;	r6 := @parameter5: java.util.Locale;	r7 := @parameter6: java.lang.String;	r0 := @parameter7: java.lang.reflect.Field;	r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter;	r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>();	$r2 = class "Ljava/lang/Throwable;";	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1);	if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8);	$r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang");	if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>();	if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE>;	$r50 = <java.lang.Byte: java.lang.Class TYPE>;	if r57 != $r50 goto $r51 = <java.lang.Short: java.lang.Class TYPE>;	$r51 = <java.lang.Short: java.lang.Class TYPE>;	if r57 != $r51 goto $r52 = <java.lang.Float: java.lang.Class TYPE>;	r57 = class "Ljava/lang/Short;";	r58 = class "Ljava/lang/Short;";	goto [?= $r59 = new com.alibaba.fastjson2.writer.FieldWriterObject];	$r59 = new com.alibaba.fastjson2.writer.FieldWriterObject;	specialinvoke $r59.<com.alibaba.fastjson2.writer.FieldWriterObject: void <init>(java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Type,java.lang.Class,java.lang.reflect.Field,java.lang.reflect.Method)>(r5, i0, l1, r56, r6, r7, r58, r57, r0, null);	$r59.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.Class initValueClass> = r57;	$r60 = <com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter INSTANCE>;	if r8 == $r60 goto return $r59;	return $r59
;block_num 8