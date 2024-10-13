(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1453 0)
(declare-sort var397 0)
(declare-sort var371 0)
(declare-sort var737 0)
(declare-sort var3035 0)
(declare-sort var2898 0)
(declare-sort var2543 0)
(declare-sort var2127 0)
(declare-sort var2885 0)
(declare-sort var3193 0)
(declare-sort var3569 0)
(declare-sort var2828 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2543!class ClassObject)
(declare-const Int!class ClassObject)
(declare-fun getDeclaringClass/1477653585 (var3035) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getType/1903459528 (var3035) ClassObject)
(declare-fun getGenericType/1144576544 (var3035) ClassObject)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun var2127-init () var2127)
(declare-fun <init>/699441651 (var2127 String Int Int String var737 String ClassObject ClassObject var3035 var2885) void)
(declare-fun initValueClass/-1685962320 (var2127) ClassObject)
(declare-fun cast-from-var2898-to-var3569 (var2898) var3569)
(declare-fun cast-from-var3193-to-var3569 (var3193) var3569)
(declare-fun initObjectWriter/-2048851183 (var2828) var2898)
(declare-fun cast-from-var2127-to-var2828 (var2127) var2828)
(declare-const null-var1453 var1453)
(declare-const null-var397 var397)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var737 var737)
(declare-const null-var3035 var3035)
(declare-const null-var2898 var2898)
(declare-const Int-TYPE ClassObject)
(declare-const null-NullType var371)
(declare-const null-var2885 var2885)
(declare-const null-var2127 var2127)
(declare-const var3193-INSTANCE var3193)
(declare-const var2861 var1453) ; Statement: r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2861 null-var1453)))
(declare-const var2699 var397) ; Statement: r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2699 null-var397)))
(declare-const var2495 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2495 null-String)))
(declare-const var3121 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3121 null-Int)))
(declare-const var173 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var173 null-Int)))
(declare-const var1042 String) ; Statement: r56 := @parameter4: java.lang.String 
(assert (not (= var1042 null-String)))
(declare-const var1247 var737) ; Statement: r6 := @parameter5: java.util.Locale 
(assert (not (= var1247 null-var737)))
(declare-const var3185 String) ; Statement: r7 := @parameter6: java.lang.String 
(assert (not (= var3185 null-String)))
(declare-const var3794 var3035) ; Statement: r0 := @parameter7: java.lang.reflect.Field 
(assert (not (= var3794 null-var3035)))
(declare-const var531 var2898) ; Statement: r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter 
(assert (not (= var531 null-var2898)))
(assert true)
(define-const var1283 ClassObject (getDeclaringClass/1477653585 var3794)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>() 
(define-const var3555 ClassObject var2543!class) ; Statement: $r2 = class "Ljava/lang/Throwable;" 
(assert true)
(define-const var331 Bool (isAssignableFrom/-1028998700 var3555 var1283)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1) 
 ; Statement: if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8) 
(assert (not (not (= (ite var331 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1134 String (getName/-1958580599 var1283)) ; Statement: $r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2047 Bool (startsWith/-1785782452 var1134 "java.lang")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang") 
 ; Statement: if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert (= (ite var2047 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2982 ClassObject (getType/1903459528 var3794)) ; Statement: r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert true)
(define-const var2162 ClassObject (getGenericType/1144576544 var3794)) ; Statement: r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>() 
 ; Statement: if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE> 
(assert (not (= var531 null-var2898))) ; Negate: Cond: r8 == null  
(define-const var133 ClassObject Int-TYPE) ; Statement: $r50 = <java.lang.Byte: java.lang.Class TYPE> 
 ; Statement: if r57 != $r50 goto $r51 = <java.lang.Short: java.lang.Class TYPE> 
(assert (not (= var2982 var133))) ; Cond: r57 != $r50 
(define-const var885 ClassObject Int-TYPE) ; Statement: $r51 = <java.lang.Short: java.lang.Class TYPE> 
 ; Statement: if r57 != $r51 goto $r52 = <java.lang.Float: java.lang.Class TYPE> 
(assert (not (not (= var2982 var885)))) ; Negate: Cond: r57 != $r51  
(define-const var2982!1 ClassObject Int!class) ; Statement: r57 = class "Ljava/lang/Short;" 
(define-const var2162!1 ClassObject (cast-from-ClassObject-to-ClassObject Int!class)) ; Statement: r58 = class "Ljava/lang/Short;" 
 ; Statement: goto [?= $r59 = new com.alibaba.fastjson2.writer.FieldWriterObject] 
(assert true) ; Non Conditional
(define-const var271 var2127 var2127-init) ; Statement: $r59 = new com.alibaba.fastjson2.writer.FieldWriterObject 
(assert true)
;(assert (<init>/699441651 var271 var2495 var3121 var173 var1042 var1247 var3185 var2162!1 var2982!1 var3794 null-var2885)) ; Statement: specialinvoke $r59.<com.alibaba.fastjson2.writer.FieldWriterObject: void <init>(java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Type,java.lang.Class,java.lang.reflect.Field,java.lang.reflect.Method)>(r5, i0, l1, r56, r6, r7, r58, r57, r0, null) 

(declare-const var271!1 var2127)
(declare-const var2495!1 String)
(declare-const var3121!1 Int)
(declare-const var173!1 Int)
(declare-const var1042!1 String)
(declare-const var1247!1 var737)
(declare-const var3185!1 String)
(declare-const var2162!2 ClassObject)
(declare-const var2982!2 ClassObject)
(declare-const var3794!1 var3035)
(declare-const var426 var371)
(declare-const var271!2 var2127)
(assert (not (= var271!2 null-var2127)))
(assert (= (initValueClass/-1685962320 var271!2) var2982!2)) ; Statement: $r59.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.Class initValueClass> = r57 
(define-const var691 var3193 var3193-INSTANCE) ; Statement: $r60 = <com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter INSTANCE> 
 ; Statement: if r8 == $r60 goto return $r59 
(assert (not (= (cast-from-var2898-to-var3569 var531) (cast-from-var3193-to-var3569 var691)))) ; Negate: Cond: r8 == $r60  
(declare-const var271!3 var2127)
(assert (not (= var271!3 null-var2127)))
(assert (= (initObjectWriter/-2048851183 (cast-from-var2127-to-var2828 var271!3)) var531)) ; Statement: $r59.<com.alibaba.fastjson2.writer.FieldWriterObject: com.alibaba.fastjson2.writer.ObjectWriter initObjectWriter> = r8 
(assert true) ; Non Conditional
 ; Statement: return $r59 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaringClass/1477653585=([java.lang.reflect.Field], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), getName/-1958580599=([java.lang.Class], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getType/1903459528=([java.lang.reflect.Field], java.lang.Class), getGenericType/1144576544=([java.lang.reflect.Field], java.lang.reflect.Type), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), var2127-init=([], com.alibaba.fastjson2.writer.FieldWriterObject), <init>/699441651=([com.alibaba.fastjson2.writer.FieldWriterObject, java.lang.String, int, long, java.lang.String, java.util.Locale, java.lang.String, java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Field, java.lang.reflect.Method], void), initValueClass/-1685962320=([com.alibaba.fastjson2.writer.FieldWriterObject], java.lang.Class), cast-from-var2898-to-var3569=([com.alibaba.fastjson2.writer.ObjectWriter], java.lang.Object), cast-from-var3193-to-var3569=([com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter], java.lang.Object), initObjectWriter/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], com.alibaba.fastjson2.writer.ObjectWriter), cast-from-var2127-to-var2828=([com.alibaba.fastjson2.writer.FieldWriterObject], com.alibaba.fastjson2.writer.FieldWriter)}
; {var1453=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2861=r3, var397=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2699=r4, var2495=r5, var371=null_type, var3121=i0, var173=l1, var1042=r56, var737=java.util.Locale, var1247=r6, var3185=r7, var3035=java.lang.reflect.Field, var3794=r0, var2898=com.alibaba.fastjson2.writer.ObjectWriter, var531=r8, var1283=r1, var2543=java.lang.Throwable, var3555=$r2, var331=$z0, var1134=$r10, var2047=$z1, var2982=r57, var2162=r58, var133=$r50, var885=$r51, var2127=com.alibaba.fastjson2.writer.FieldWriterObject, var271=$r59, var2885=java.lang.reflect.Method, var426=null, var3193=com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter, var691=$r60, var3569=java.lang.Object, var2828=com.alibaba.fastjson2.writer.FieldWriter}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1453, r3=var2861, com.alibaba.fastjson2.writer.ObjectWriterProvider=var397, r4=var2699, r5=var2495, null_type=var371, i0=var3121, l1=var173, r56=var1042, java.util.Locale=var737, r6=var1247, r7=var3185, java.lang.reflect.Field=var3035, r0=var3794, com.alibaba.fastjson2.writer.ObjectWriter=var2898, r8=var531, r1=var1283, java.lang.Throwable=var2543, $r2=var3555, $z0=var331, $r10=var1134, $z1=var2047, r57=var2982, r58=var2162, $r50=var133, $r51=var885, com.alibaba.fastjson2.writer.FieldWriterObject=var2127, $r59=var271, java.lang.reflect.Method=var2885, null=var426, com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter=var3193, $r60=var691, java.lang.Object=var3569, com.alibaba.fastjson2.writer.FieldWriter=var2828}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r5 := @parameter1: java.lang.String;	i0 := @parameter2: int;	l1 := @parameter3: long;	r56 := @parameter4: java.lang.String;	r6 := @parameter5: java.util.Locale;	r7 := @parameter6: java.lang.String;	r0 := @parameter7: java.lang.reflect.Field;	r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter;	r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>();	$r2 = class "Ljava/lang/Throwable;";	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1);	if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8);	$r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang");	if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>();	if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE>;	$r50 = <java.lang.Byte: java.lang.Class TYPE>;	if r57 != $r50 goto $r51 = <java.lang.Short: java.lang.Class TYPE>;	$r51 = <java.lang.Short: java.lang.Class TYPE>;	if r57 != $r51 goto $r52 = <java.lang.Float: java.lang.Class TYPE>;	r57 = class "Ljava/lang/Short;";	r58 = class "Ljava/lang/Short;";	goto [?= $r59 = new com.alibaba.fastjson2.writer.FieldWriterObject];	$r59 = new com.alibaba.fastjson2.writer.FieldWriterObject;	specialinvoke $r59.<com.alibaba.fastjson2.writer.FieldWriterObject: void <init>(java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Type,java.lang.Class,java.lang.reflect.Field,java.lang.reflect.Method)>(r5, i0, l1, r56, r6, r7, r58, r57, r0, null);	$r59.<com.alibaba.fastjson2.writer.FieldWriterObject: java.lang.Class initValueClass> = r57;	$r60 = <com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$VoidObjectWriter INSTANCE>;	if r8 == $r60 goto return $r59;	$r59.<com.alibaba.fastjson2.writer.FieldWriterObject: com.alibaba.fastjson2.writer.ObjectWriter initObjectWriter> = r8;	return $r59
;block_num 9