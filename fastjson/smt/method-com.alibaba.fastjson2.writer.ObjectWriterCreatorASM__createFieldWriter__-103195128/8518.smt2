(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var326 0)
(declare-sort var2209 0)
(declare-sort var3460 0)
(declare-sort var2597 0)
(declare-sort var3850 0)
(declare-sort var241 0)
(declare-sort var754 0)
(declare-sort var1094 0)
(declare-sort var1214 0)
(declare-sort var3764 0)
(declare-sort var234 0)
(declare-sort var2141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var754!class ClassObject)
(declare-const Int!class ClassObject)
(declare-fun getDeclaringClass/1477653585 (var3850) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getType/1903459528 (var3850) ClassObject)
(declare-fun getGenericType/1144576544 (var3850) ClassObject)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun var1094-init () var1094)
(declare-fun <init>/699441651 (var1094 String Int Int String var2597 String ClassObject ClassObject var3850 var1214) void)
(declare-fun initValueClass/-1685962320 (var1094) ClassObject)
(declare-fun cast-from-var241-to-var234 (var241) var234)
(declare-fun cast-from-var3764-to-var234 (var3764) var234)
(declare-fun initObjectWriter/-2048851183 (var2141) var241)
(declare-fun cast-from-var1094-to-var2141 (var1094) var2141)
(declare-const null-var326 var326)
(declare-const null-var2209 var2209)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2597 var2597)
(declare-const null-var3850 var3850)
(declare-const null-var241 var241)
(declare-const Int-TYPE ClassObject)
(declare-const null-NullType var3460)
(declare-const null-var1214 var1214)
(declare-const null-var1094 var1094)
(declare-const var3764-INSTANCE var3764)
(declare-const var3037 var326) ; Statement: r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3037 null-var326)))
(declare-const var3729 var2209) ; Statement: r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var3729 null-var2209)))
(declare-const var1820 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1820 null-String)))
(declare-const var2520 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2520 null-Int)))
(declare-const var1465 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var1465 null-Int)))
(declare-const var1216 String) ; Statement: r56 := @parameter4: java.lang.String 
(assert (not (= var1216 null-String)))
(declare-const var3366 var2597) ; Statement: r6 := @parameter5: java.util.Locale 
(assert (not (= var3366 null-var2597)))
(declare-const var3884 String) ; Statement: r7 := @parameter6: java.lang.String 
(assert (not (= var3884 null-String)))
(declare-const var2587 var3850) ; Statement: r0 := @parameter7: java.lang.reflect.Field 
(assert (not (= var2587 null-var3850)))
(declare-const var2391 var241) ; Statement: r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter 
(assert (not (= var2391 null-var241)))
(assert true)
(define-const var1633 ClassObject (getDeclaringClass/1477653585 var2587)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>() 
(define-const var707 ClassObject var754!class) ; Statement: $r2 = class "Ljava/lang/Throwable;" 
(assert true)
(define-const var3675 Bool (isAssignableFrom/-1028998700 var707 var1633)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1) 
 ; Statement: if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8) 
(assert (not (not (= (ite var3675 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1938 String (getName/-1958580599 var1633)) ; Statement: $r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var272 Bool (startsWith/-1785782452 var1938 "java.lang")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang") 
 ; Statement: if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert (= (ite var272 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var52 ClassObject (getType/1903459528 var2587)) ; Statement: r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert true)
(define-const var1395 ClassObject (getGenericType/1144576544 var2587)) ; Statement: r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>() 
 ; Statement: if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE> 
(assert (not (= var2391 null-var241))) ; Negate: Cond: r8 == null  
(define-const var2804 ClassObject Int-TYPE) ; Statement: $r50 = <java.lang.Byte: java.lang.Class TYPE> 
 ; Statement: if r57 != $r50 goto $r51 = <java.lang.Short: java.lang.Class TYPE> 
(assert (not (not (= var52 var2804)))) ; Negate: Cond: r57 != $r50  
(define-const var52!1 ClassObject Int!class) ; Statement: r57 = class "Ljava/lang/Byte;" 
(define-const var1395!1 ClassObject (cast-from-ClassObject-to-ClassObject Int!class)) ; Statement: r58 = class "Ljava/lang/Byte;" 
 ; Statement: goto [?= $r59 = new com.alibaba.fastjson2.writer.FieldWriterObject] 
(assert true) ; Non Conditional
(define-const var2406 var1094 var1094-init) ; Statement: $r59 = new com.alibaba.fastjson2.writer.FieldWriterObject 
(assert true)
;(assert (<init>/699441651 var2406 var1820 var2520 var1465 var1216 var3366 var3884 var1395!1 var52!1 var2587 null-var1214)) ; Statement: specialinvoke $r59.<com.alibaba.fastjson2.writer.FieldWriterObject: void <init>(java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Type,java.lang.Class,java.lang.reflect.Field,java.lang.reflect.Method)>(r5, i0, l1, r56, r6, r7, r58, r57, r0, null) 

(declare-const var2406!1 var1094)
(declare-const var1820!1 String)
(declare-const var2520!1 Int)
(declare-const var1465!1 Int)
(declare-const var1216!1 String)
(declare-const var3366!1 var2597)
(declare-const var3884!1 String)
(declare-const var1395!2 ClassObject)
(declare-const var52!2 ClassObject)
(declare-const var2587!1 var3850)
(declare-const var1313 var3460)
(declare-const var2406!2 var1094)
(assert (not (= var2406!2 null-var1094)))
(assert (= (initValueClass/-1685962320 var2406!2) var52!2)) ; Statement: $r59.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.Class initValueClass> = r57 
(define-const var2225 var3764 var3764-INSTANCE) ; Statement: $r60 = <com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter INSTANCE> 
 ; Statement: if r8 == $r60 goto return $r59 
(assert (not (= (cast-from-var241-to-var234 var2391) (cast-from-var3764-to-var234 var2225)))) ; Negate: Cond: r8 == $r60  
(declare-const var2406!3 var1094)
(assert (not (= var2406!3 null-var1094)))
(assert (= (initObjectWriter/-2048851183 (cast-from-var1094-to-var2141 var2406!3)) var2391)) ; Statement: $r59.<com.alibaba.fastjson2.writer.FieldWriterObject: com.alibaba.fastjson2.writer.ObjectWriter initObjectWriter> = r8 
(assert true) ; Non Conditional
 ; Statement: return $r59 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaringClass/1477653585=([java.lang.reflect.Field], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), getName/-1958580599=([java.lang.Class], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getType/1903459528=([java.lang.reflect.Field], java.lang.Class), getGenericType/1144576544=([java.lang.reflect.Field], java.lang.reflect.Type), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), var1094-init=([], com.alibaba.fastjson2.writer.FieldWriterObject), <init>/699441651=([com.alibaba.fastjson2.writer.FieldWriterObject, java.lang.String, int, long, java.lang.String, java.util.Locale, java.lang.String, java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Field, java.lang.reflect.Method], void), initValueClass/-1685962320=([com.alibaba.fastjson2.writer.FieldWriterObject], java.lang.Class), cast-from-var241-to-var234=([com.alibaba.fastjson2.writer.ObjectWriter], java.lang.Object), cast-from-var3764-to-var234=([com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter], java.lang.Object), initObjectWriter/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], com.alibaba.fastjson2.writer.ObjectWriter), cast-from-var1094-to-var2141=([com.alibaba.fastjson2.writer.FieldWriterObject], com.alibaba.fastjson2.writer.FieldWriter)}
; {var326=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3037=r3, var2209=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3729=r4, var1820=r5, var3460=null_type, var2520=i0, var1465=l1, var1216=r56, var2597=java.util.Locale, var3366=r6, var3884=r7, var3850=java.lang.reflect.Field, var2587=r0, var241=com.alibaba.fastjson2.writer.ObjectWriter, var2391=r8, var1633=r1, var754=java.lang.Throwable, var707=$r2, var3675=$z0, var1938=$r10, var272=$z1, var52=r57, var1395=r58, var2804=$r50, var1094=com.alibaba.fastjson2.writer.FieldWriterObject, var2406=$r59, var1214=java.lang.reflect.Method, var1313=null, var3764=com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter, var2225=$r60, var234=java.lang.Object, var2141=com.alibaba.fastjson2.writer.FieldWriter}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var326, r3=var3037, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2209, r4=var3729, r5=var1820, null_type=var3460, i0=var2520, l1=var1465, r56=var1216, java.util.Locale=var2597, r6=var3366, r7=var3884, java.lang.reflect.Field=var3850, r0=var2587, com.alibaba.fastjson2.writer.ObjectWriter=var241, r8=var2391, r1=var1633, java.lang.Throwable=var754, $r2=var707, $z0=var3675, $r10=var1938, $z1=var272, r57=var52, r58=var1395, $r50=var2804, com.alibaba.fastjson2.writer.FieldWriterObject=var1094, $r59=var2406, java.lang.reflect.Method=var1214, null=var1313, com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter=var3764, $r60=var2225, java.lang.Object=var234, com.alibaba.fastjson2.writer.FieldWriter=var2141}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r5 := @parameter1: java.lang.String;	i0 := @parameter2: int;	l1 := @parameter3: long;	r56 := @parameter4: java.lang.String;	r6 := @parameter5: java.util.Locale;	r7 := @parameter6: java.lang.String;	r0 := @parameter7: java.lang.reflect.Field;	r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter;	r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>();	$r2 = class "Ljava/lang/Throwable;";	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1);	if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8);	$r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang");	if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>();	if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE>;	$r50 = <java.lang.Byte: java.lang.Class TYPE>;	if r57 != $r50 goto $r51 = <java.lang.Short: java.lang.Class TYPE>;	r57 = class "Ljava/lang/Byte;";	r58 = class "Ljava/lang/Byte;";	goto [?= $r59 = new com.alibaba.fastjson2.writer.FieldWriterObject];	$r59 = new com.alibaba.fastjson2.writer.FieldWriterObject;	specialinvoke $r59.<com.alibaba.fastjson2.writer.FieldWriterObject: void <init>(java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Type,java.lang.Class,java.lang.reflect.Field,java.lang.reflect.Method)>(r5, i0, l1, r56, r6, r7, r58, r57, r0, null);	$r59.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.Class initValueClass> = r57;	$r60 = <com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter INSTANCE>;	if r8 == $r60 goto return $r59;	$r59.<com.alibaba.fastjson2.writer.FieldWriterObject: com.alibaba.fastjson2.writer.ObjectWriter initObjectWriter> = r8;	return $r59
;block_num 8