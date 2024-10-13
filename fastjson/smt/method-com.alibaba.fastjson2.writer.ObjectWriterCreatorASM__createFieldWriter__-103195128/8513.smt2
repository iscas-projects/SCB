(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1386 0)
(declare-sort var1446 0)
(declare-sort var1470 0)
(declare-sort var2927 0)
(declare-sort var3921 0)
(declare-sort var2780 0)
(declare-sort var3826 0)
(declare-sort var1881 0)
(declare-sort var114 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3826!class ClassObject)
(declare-fun getDeclaringClass/1477653585 (var3921) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun createFieldWriter/-2073718257 (var114 var1446 String Int Int String var2927 String var3921 var2780) var1881)
(declare-fun cast-from-var1386-to-var114 (var1386) var114)
(declare-const null-var1386 var1386)
(declare-const null-var1446 var1446)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2927 var2927)
(declare-const null-var3921 var3921)
(declare-const null-var2780 var2780)
(declare-const var3128 var1386) ; Statement: r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3128 null-var1386)))
(declare-const var1462 var1446) ; Statement: r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var1462 null-var1446)))
(declare-const var1332 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1332 null-String)))
(declare-const var2042 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2042 null-Int)))
(declare-const var1636 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var1636 null-Int)))
(declare-const var1191 String) ; Statement: r56 := @parameter4: java.lang.String 
(assert (not (= var1191 null-String)))
(declare-const var2289 var2927) ; Statement: r6 := @parameter5: java.util.Locale 
(assert (not (= var2289 null-var2927)))
(declare-const var1849 String) ; Statement: r7 := @parameter6: java.lang.String 
(assert (not (= var1849 null-String)))
(declare-const var3267 var3921) ; Statement: r0 := @parameter7: java.lang.reflect.Field 
(assert (not (= var3267 null-var3921)))
(declare-const var1357 var2780) ; Statement: r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter 
(assert (not (= var1357 null-var2780)))
(assert true)
(define-const var2404 ClassObject (getDeclaringClass/1477653585 var3267)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>() 
(define-const var949 ClassObject var3826!class) ; Statement: $r2 = class "Ljava/lang/Throwable;" 
(assert true)
(define-const var1956 Bool (isAssignableFrom/-1028998700 var949 var2404)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1) 
 ; Statement: if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8) 
(assert (not (not (= (ite var1956 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var2930 String (getName/-1958580599 var2404)) ; Statement: $r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2256 Bool (startsWith/-1785782452 var2930 "java.lang")) ; Statement: $z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang") 
 ; Statement: if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>() 
(assert (not (= (ite var2256 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var98 var1881 (createFieldWriter/-2073718257 (cast-from-var1386-to-var114 var3128) var1462 var1332 var2042 var1636 var1191 var2289 var1849 var3267 var1357)) ; Statement: $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaringClass/1477653585=([java.lang.reflect.Field], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), getName/-1958580599=([java.lang.Class], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), createFieldWriter/-2073718257=([com.alibaba.fastjson2.writer.ObjectWriterCreator, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, int, long, java.lang.String, java.util.Locale, java.lang.String, java.lang.reflect.Field, com.alibaba.fastjson2.writer.ObjectWriter], com.alibaba.fastjson2.writer.FieldWriter), cast-from-var1386-to-var114=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.writer.ObjectWriterCreator)}
; {var1386=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3128=r3, var1446=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1462=r4, var1332=r5, var1470=null_type, var2042=i0, var1636=l1, var1191=r56, var2927=java.util.Locale, var2289=r6, var1849=r7, var3921=java.lang.reflect.Field, var3267=r0, var2780=com.alibaba.fastjson2.writer.ObjectWriter, var1357=r8, var2404=r1, var3826=java.lang.Throwable, var949=$r2, var1956=$z0, var2930=$r10, var2256=$z1, var1881=com.alibaba.fastjson2.writer.FieldWriter, var114=com.alibaba.fastjson2.writer.ObjectWriterCreator, var98=$r9}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1386, r3=var3128, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1446, r4=var1462, r5=var1332, null_type=var1470, i0=var2042, l1=var1636, r56=var1191, java.util.Locale=var2927, r6=var2289, r7=var1849, java.lang.reflect.Field=var3921, r0=var3267, com.alibaba.fastjson2.writer.ObjectWriter=var2780, r8=var1357, r1=var2404, java.lang.Throwable=var3826, $r2=var949, $z0=var1956, $r10=var2930, $z1=var2256, com.alibaba.fastjson2.writer.FieldWriter=var1881, com.alibaba.fastjson2.writer.ObjectWriterCreator=var114, $r9=var98}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r4 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r5 := @parameter1: java.lang.String;	i0 := @parameter2: int;	l1 := @parameter3: long;	r56 := @parameter4: java.lang.String;	r6 := @parameter5: java.util.Locale;	r7 := @parameter6: java.lang.String;	r0 := @parameter7: java.lang.reflect.Field;	r8 := @parameter8: com.alibaba.fastjson2.writer.ObjectWriter;	r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>();	$r2 = class "Ljava/lang/Throwable;";	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1);	if $z0 != 0 goto $r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8);	$r10 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$z1 = virtualinvoke $r10.<java.lang.String: boolean startsWith(java.lang.String)>("java.lang");	if $z1 == 0 goto r57 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getType()>();	$r9 = specialinvoke r3.<com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.FieldWriter createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,int,long,java.lang.String,java.util.Locale,java.lang.String,java.lang.reflect.Field,com.alibaba.fastjson2.writer.ObjectWriter)>(r4, r5, i0, l1, r56, r6, r7, r0, r8);	return $r9
;block_num 3