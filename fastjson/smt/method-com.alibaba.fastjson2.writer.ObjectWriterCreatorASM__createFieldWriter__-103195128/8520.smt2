(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3362 0)
(declare-sort var3039 0)
(declare-sort var3668 0)
(declare-sort var3219 0)
(declare-sort var1218 0)
(declare-sort var3911 0)
(declare-sort var937 0)
(declare-sort var1044 0)
(declare-sort var1367 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var937!class ClassObject)
(declare-fun getDeclaringClass/1477653585 (var1218) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getType/1903459528 (var1218) ClassObject)
(declare-fun getGenericType/1144576544 (var1218) ClassObject)
(declare-fun var1367-init () var1367)
(declare-fun <init>/-1699577106 (var1367 String Int Int String String var1218) void)
(declare-const null-var3362 var3362)
(declare-const null-var3039 var3039)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3219 var3219)
(declare-const null-var1218 var1218)
(declare-const null-var3911 var3911)
(declare-const var1044-TYPE ClassObject)
(declare-const Int-TYPE ClassObject)
(declare-const var598 var3362) ; Statement: r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var598 null-var3362)))
(declare-const var446 var3039) ; Statement: r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var446 null-var3039)))
(declare-const var1250 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1250 null-String)))
(declare-const var1683 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1683 null-Int)))
(declare-const var2522 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var2522 null-Int)))
(declare-const var2508 String) ; Statement: r56 := @parameter4: java.lang.String 
(assert (not (= var2508 null-String)))
(declare-const var2503 var3219) ; Statement: r6 := @parameter5: java.util.Locale 
(assert (not (= var2503 null-var3219)))
(declare-const var3320 String) ; Statement: r7 := @parameter6: java.lang.String 
(assert (not (= var3320 null-String)))
(declare-const var1108 var1218) ; Statement: r0 := @parameter7: java.lang.reflect.Field 
(assert (not (= var1108 null-var1218)))
(declare-const var959 var3911) ; Statement: r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter 
(assert (not (= var959 null-var3911)))
(assert true)
(define-const var3649 ClassObject (getDeclaringClass/1477653585 var1108)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>() 
(define-const var3453 ClassObject var937!class) ; Statement: $r2 = class "Ljava/lang/Throwable;" 
(assert true)
(define-const var3004 Bool (isAssignableFrom/-1028998700 var3453 var3649)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1) 
 ; Statement: if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8) 
(assert (not (not (= (ite var3004 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1936 String (getName/-1958580599 var3649)) ; Statement: $r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1296 Bool (startsWith/-1785782452 var1936 "java.lang")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang") 
 ; Statement: if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert (= (ite var1296 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1377 ClassObject (getType/1903459528 var1108)) ; Statement: r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert true)
(define-const var2822 ClassObject (getGenericType/1144576544 var1108)) ; Statement: r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>() 
 ; Statement: if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE> 
(assert (= var959 null-var3911)) ; Cond: r8 == null 
(define-const var3839 ClassObject var1044-TYPE) ; Statement: $r11 = <java.lang.Boolean: java.lang.Class TYPE> 
 ; Statement: if r57 != $r11 goto $r12 = <java.lang.Byte: java.lang.Class TYPE> 
(assert (not (= var1377 var3839))) ; Cond: r57 != $r11 
(define-const var1726 ClassObject Int-TYPE) ; Statement: $r12 = <java.lang.Byte: java.lang.Class TYPE> 
 ; Statement: if r57 != $r12 goto $r13 = <java.lang.Short: java.lang.Class TYPE> 
(assert (not (= var1377 var1726))) ; Cond: r57 != $r12 
(define-const var2095 ClassObject Int-TYPE) ; Statement: $r13 = <java.lang.Short: java.lang.Class TYPE> 
 ; Statement: if r57 != $r13 goto $r14 = <java.lang.Integer: java.lang.Class TYPE> 
(assert (not (= var1377 var2095))) ; Cond: r57 != $r13 
(define-const var3474 ClassObject Int-TYPE) ; Statement: $r14 = <java.lang.Integer: java.lang.Class TYPE> 
 ; Statement: if r57 != $r14 goto $r15 = <java.lang.Long: java.lang.Class TYPE> 
(assert (not (not (= var1377 var3474)))) ; Negate: Cond: r57 != $r14  
(define-const var509 var1367 var1367-init) ; Statement: $r46 = new com.alibaba.fastjson2.writer.FieldWriterInt32Val 
(assert true)
;(assert (<init>/-1699577106 var509 var1250 var1683 var2522 var2508 var3320 var1108)) ; Statement: specialinvoke $r46.<com.alibaba.fastjson2.writer.FieldWriterInt32Val: void <init>(java.lang.String,int,long,java.lang.String,java.lang.String,java.lang.reflect.Field)>(r5, i0, l1, r56, r7, r0) 

(declare-const var509!1 var1367)
(declare-const var1250!1 String)
(declare-const var1683!1 Int)
(declare-const var2522!1 Int)
(declare-const var2508!1 String)
(declare-const var3320!1 String)
(declare-const var1108!1 var1218)
 ; Statement: return $r46 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaringClass/1477653585=([java.lang.reflect.Field], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), getName/-1958580599=([java.lang.Class], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getType/1903459528=([java.lang.reflect.Field], java.lang.Class), getGenericType/1144576544=([java.lang.reflect.Field], java.lang.reflect.Type), var1367-init=([], com.alibaba.fastjson2.writer.FieldWriterInt32Val), <init>/-1699577106=([com.alibaba.fastjson2.writer.FieldWriterInt32Val, java.lang.String, int, long, java.lang.String, java.lang.String, java.lang.reflect.Field], void)}
; {var3362=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var598=r3, var3039=com.alibaba.fastjson2.writer.ObjectWriterProvider, var446=r4, var1250=r5, var3668=null_type, var1683=i0, var2522=l1, var2508=r56, var3219=java.util.Locale, var2503=r6, var3320=r7, var1218=java.lang.reflect.Field, var1108=r0, var3911=com.alibaba.fastjson2.writer.ObjectWriter, var959=r8, var3649=r1, var937=java.lang.Throwable, var3453=$r2, var3004=$z0, var1936=$r10, var1296=$z1, var1377=r57, var2822=r58, var1044=java.lang.Boolean, var3839=$r11, var1726=$r12, var2095=$r13, var3474=$r14, var1367=com.alibaba.fastjson2.writer.FieldWriterInt32Val, var509=$r46}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3362, r3=var598, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3039, r4=var446, r5=var1250, null_type=var3668, i0=var1683, l1=var2522, r56=var2508, java.util.Locale=var3219, r6=var2503, r7=var3320, java.lang.reflect.Field=var1218, r0=var1108, com.alibaba.fastjson2.writer.ObjectWriter=var3911, r8=var959, r1=var3649, java.lang.Throwable=var937, $r2=var3453, $z0=var3004, $r10=var1936, $z1=var1296, r57=var1377, r58=var2822, java.lang.Boolean=var1044, $r11=var3839, $r12=var1726, $r13=var2095, $r14=var3474, com.alibaba.fastjson2.writer.FieldWriterInt32Val=var1367, $r46=var509}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r5 := @parameter1: java.lang.String;	i0 := @parameter2: int;	l1 := @parameter3: long;	r56 := @parameter4: java.lang.String;	r6 := @parameter5: java.util.Locale;	r7 := @parameter6: java.lang.String;	r0 := @parameter7: java.lang.reflect.Field;	r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter;	r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>();	$r2 = class "Ljava/lang/Throwable;";	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1);	if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8);	$r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang");	if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	r58 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.reflect.Type getGenericType()>();	if r8 == null goto $r11 = <java.lang.Boolean: java.lang.Class TYPE>;	$r11 = <java.lang.Boolean: java.lang.Class TYPE>;	if r57 != $r11 goto $r12 = <java.lang.Byte: java.lang.Class TYPE>;	$r12 = <java.lang.Byte: java.lang.Class TYPE>;	if r57 != $r12 goto $r13 = <java.lang.Short: java.lang.Class TYPE>;	$r13 = <java.lang.Short: java.lang.Class TYPE>;	if r57 != $r13 goto $r14 = <java.lang.Integer: java.lang.Class TYPE>;	$r14 = <java.lang.Integer: java.lang.Class TYPE>;	if r57 != $r14 goto $r15 = <java.lang.Long: java.lang.Class TYPE>;	$r46 = new com.alibaba.fastjson2.writer.FieldWriterInt32Val;	specialinvoke $r46.<com.alibaba.fastjson2.writer.FieldWriterInt32Val: void <init>(java.lang.String,int,long,java.lang.String,java.lang.String,java.lang.reflect.Field)>(r5, i0, l1, r56, r7, r0);	return $r46
;block_num 8