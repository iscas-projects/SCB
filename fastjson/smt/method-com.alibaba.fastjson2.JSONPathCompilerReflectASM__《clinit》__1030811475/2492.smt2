(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var345 0)
(declare-sort var2485 0)
(declare-sort var3473 0)
(declare-sort var59 0)
(declare-sort var3955 0)
(declare-sort var3859 0)
(declare-sort var3068 0)
(declare-sort var2017 0)
(declare-sort var1575 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3955!class ClassObject)
(declare-const var3859!class ClassObject)
(declare-const var3068!class ClassObject)
(declare-const var2017!class ClassObject)
(declare-const var1575!class ClassObject)
(declare-fun var345-init () var345)
(declare-fun <init>/1827284532 (var345) void)
(declare-fun var2485-init () var2485)
(declare-fun var3473_getInstance/1940334364 () var3473)
(declare-fun <init>/706846809 (var2485 var3473) void)
(declare-fun var59_desc/1182016152 (ClassObject) String)
(declare-fun var59_type/-1892533503 (ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const var2485-DESC_OBJECT_READER String)
(declare-const var2485-DESC_FIELD_READER String)
(declare-const var2485-DESC_OBJECT_WRITER String)
(declare-const var2485-DESC_FIELD_WRITER String)
(define-const var3285 var345 var345-init) ; Statement: $r0 = new java.util.concurrent.atomic.AtomicLong 
(assert true)
;(assert (<init>/1827284532 var3285)) ; Statement: specialinvoke $r0.<java.util.concurrent.atomic.AtomicLong: void <init>()>() 

(declare-const var3285!1 var345)
(define-const var1937 var345 var3285!1) ; Statement: <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.util.concurrent.atomic.AtomicLong seed> = $r0 
(define-const var2060 var2485 var2485-init) ; Statement: $r1 = new com.alibaba.fastjson2.JSONPathCompilerReflectASM 
(define-const var3269 var3473 var3473_getInstance/1940334364) ; Statement: $r2 = staticinvoke <com.alibaba.fastjson2.util.DynamicClassLoader: com.alibaba.fastjson2.util.DynamicClassLoader getInstance()>() 
(assert true)
;(assert (<init>/706846809 var2060 var3269)) ; Statement: specialinvoke $r1.<com.alibaba.fastjson2.JSONPathCompilerReflectASM: void <init>(com.alibaba.fastjson2.util.DynamicClassLoader)>($r2) 

(declare-const var2060!1 var2485)
(declare-const var3269!1 var3473)
(define-const var3422 var2485 var2060!1) ; Statement: <com.alibaba.fastjson2.JSONPathCompilerReflectASM: com.alibaba.fastjson2.JSONPathCompilerReflectASM INSTANCE> = $r1 
(define-const var2766 String (var59_desc/1182016152 var3955!class)) ; Statement: $r3 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(class "Lcom/alibaba/fastjson2/reader/ObjectReader;") 
(define-const var1666 String var2766) ; Statement: <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_OBJECT_READER> = $r3 
(define-const var3533 String (var59_desc/1182016152 var3859!class)) ; Statement: $r4 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(class "Lcom/alibaba/fastjson2/reader/FieldReader;") 
(define-const var569 String var3533) ; Statement: <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_FIELD_READER> = $r4 
(define-const var2555 String (var59_desc/1182016152 var3068!class)) ; Statement: $r5 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(class "Lcom/alibaba/fastjson2/writer/ObjectWriter;") 
(define-const var2468 String var2555) ; Statement: <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_OBJECT_WRITER> = $r5 
(define-const var1882 String (var59_desc/1182016152 var2017!class)) ; Statement: $r6 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(class "Lcom/alibaba/fastjson2/writer/FieldWriter;") 
(define-const var1650 String var1882) ; Statement: <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_FIELD_WRITER> = $r6 
(define-const var2502 String (var59_type/-1892533503 var1575!class)) ; Statement: $r7 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(class "Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;") 
(define-const var1028 String var2502) ; Statement: <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String TYPE_SINGLE_NAME_PATH_TYPED> = $r7 
(define-const var1514 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1514)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1514!1 String)
(assert (= var1514!1 ""))
(assert true)
(define-const var3091 String (append/672562846 var1514!1 "(Ljava/lang/String;Ljava/lang/Class;")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(Ljava/lang/String;Ljava/lang/Class;") 
(declare-const var1514!2 String)
(assert (= var1514!2 (str.++ var1514!1 "(Ljava/lang/String;Ljava/lang/Class;")))
(define-const var3888 String var2485-DESC_OBJECT_READER) ; Statement: $r9 = <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_OBJECT_READER> 
(assert true)
(define-const var2295 String (append/672562846 var3091 var3888)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3091!1 String)
(assert (= var3091!1 (str.++ var3091 var3888)))
(define-const var3942 String var2485-DESC_FIELD_READER) ; Statement: $r11 = <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_FIELD_READER> 
(assert true)
(define-const var617 String (append/672562846 var2295 var3942)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2295!1 String)
(assert (= var2295!1 (str.++ var2295 var3942)))
(define-const var3406 String var2485-DESC_OBJECT_WRITER) ; Statement: $r13 = <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_OBJECT_WRITER> 
(assert true)
(define-const var580 String (append/672562846 var617 var3406)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var617!1 String)
(assert (= var617!1 (str.++ var617 var3406)))
(define-const var941 String var2485-DESC_FIELD_WRITER) ; Statement: $r15 = <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_FIELD_WRITER> 
(assert true)
(define-const var3019 String (append/672562846 var580 var941)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var580!1 String)
(assert (= var580!1 (str.++ var580 var941)))
(assert true)
(define-const var1442 String (append/672562846 var3019 ")V")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V") 
(declare-const var3019!1 String)
(assert (= var3019!1 (str.++ var3019 ")V")))
(assert true)
(define-const var2292 String (toString/-2075883882 var1442)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var444 String var2292) ; Statement: <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String METHOD_SINGLE_NAME_PATH_TYPED_INIT> = $r19 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var345-init=([], java.util.concurrent.atomic.AtomicLong), <init>/1827284532=([java.util.concurrent.atomic.AtomicLong], void), var2485-init=([], com.alibaba.fastjson2.JSONPathCompilerReflectASM), var3473_getInstance/1940334364=([], com.alibaba.fastjson2.util.DynamicClassLoader), <init>/706846809=([com.alibaba.fastjson2.JSONPathCompilerReflectASM, com.alibaba.fastjson2.util.DynamicClassLoader], void), var59_desc/1182016152=([java.lang.Class], java.lang.String), var59_type/-1892533503=([java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var345=java.util.concurrent.atomic.AtomicLong, var3285=$r0, var1937=<com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.util.concurrent.atomic.AtomicLong seed>, var2485=com.alibaba.fastjson2.JSONPathCompilerReflectASM, var2060=$r1, var3473=com.alibaba.fastjson2.util.DynamicClassLoader, var3269=$r2, var3422=<com.alibaba.fastjson2.JSONPathCompilerReflectASM: com.alibaba.fastjson2.JSONPathCompilerReflectASM INSTANCE>, var59=com.alibaba.fastjson2.internal.asm.ASMUtils, var3955=com.alibaba.fastjson2.reader.ObjectReader, var2766=$r3, var1666=<com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_OBJECT_READER>, var3859=com.alibaba.fastjson2.reader.FieldReader, var3533=$r4, var569=<com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_FIELD_READER>, var3068=com.alibaba.fastjson2.writer.ObjectWriter, var2555=$r5, var2468=<com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_OBJECT_WRITER>, var2017=com.alibaba.fastjson2.writer.FieldWriter, var1882=$r6, var1650=<com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_FIELD_WRITER>, var1575=com.alibaba.fastjson2.JSONPathCompilerReflect$SingleNamePathTyped, var2502=$r7, var1028=<com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String TYPE_SINGLE_NAME_PATH_TYPED>, var1514=$r8, var3091=$r10, var3888=$r9, var2295=$r12, var3942=$r11, var617=$r14, var3406=$r13, var580=$r16, var941=$r15, var3019=$r17, var1442=$r18, var2292=$r19, var444=<com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String METHOD_SINGLE_NAME_PATH_TYPED_INIT>}
; {java.util.concurrent.atomic.AtomicLong=var345, $r0=var3285, <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.util.concurrent.atomic.AtomicLong seed>=var1937, com.alibaba.fastjson2.JSONPathCompilerReflectASM=var2485, $r1=var2060, com.alibaba.fastjson2.util.DynamicClassLoader=var3473, $r2=var3269, <com.alibaba.fastjson2.JSONPathCompilerReflectASM: com.alibaba.fastjson2.JSONPathCompilerReflectASM INSTANCE>=var3422, com.alibaba.fastjson2.internal.asm.ASMUtils=var59, com.alibaba.fastjson2.reader.ObjectReader=var3955, $r3=var2766, <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_OBJECT_READER>=var1666, com.alibaba.fastjson2.reader.FieldReader=var3859, $r4=var3533, <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_FIELD_READER>=var569, com.alibaba.fastjson2.writer.ObjectWriter=var3068, $r5=var2555, <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_OBJECT_WRITER>=var2468, com.alibaba.fastjson2.writer.FieldWriter=var2017, $r6=var1882, <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_FIELD_WRITER>=var1650, com.alibaba.fastjson2.JSONPathCompilerReflect$SingleNamePathTyped=var1575, $r7=var2502, <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String TYPE_SINGLE_NAME_PATH_TYPED>=var1028, $r8=var1514, $r10=var3091, $r9=var3888, $r12=var2295, $r11=var3942, $r14=var617, $r13=var3406, $r16=var580, $r15=var941, $r17=var3019, $r18=var1442, $r19=var2292, <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String METHOD_SINGLE_NAME_PATH_TYPED_INIT>=var444}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.util.concurrent.atomic.AtomicLong;	specialinvoke $r0.<java.util.concurrent.atomic.AtomicLong: void <init>()>();	<com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.util.concurrent.atomic.AtomicLong seed> = $r0;	$r1 = new com.alibaba.fastjson2.JSONPathCompilerReflectASM;	$r2 = staticinvoke <com.alibaba.fastjson2.util.DynamicClassLoader: com.alibaba.fastjson2.util.DynamicClassLoader getInstance()>();	specialinvoke $r1.<com.alibaba.fastjson2.JSONPathCompilerReflectASM: void <init>(com.alibaba.fastjson2.util.DynamicClassLoader)>($r2);	<com.alibaba.fastjson2.JSONPathCompilerReflectASM: com.alibaba.fastjson2.JSONPathCompilerReflectASM INSTANCE> = $r1;	$r3 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(class "Lcom/alibaba/fastjson2/reader/ObjectReader;");	<com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_OBJECT_READER> = $r3;	$r4 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(class "Lcom/alibaba/fastjson2/reader/FieldReader;");	<com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_FIELD_READER> = $r4;	$r5 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(class "Lcom/alibaba/fastjson2/writer/ObjectWriter;");	<com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_OBJECT_WRITER> = $r5;	$r6 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(class "Lcom/alibaba/fastjson2/writer/FieldWriter;");	<com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_FIELD_WRITER> = $r6;	$r7 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(class "Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;");	<com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String TYPE_SINGLE_NAME_PATH_TYPED> = $r7;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(Ljava/lang/String;Ljava/lang/Class;");	$r9 = <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_OBJECT_READER>;	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r11 = <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_FIELD_READER>;	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_OBJECT_WRITER>;	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r15 = <com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String DESC_FIELD_WRITER>;	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")V");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	<com.alibaba.fastjson2.JSONPathCompilerReflectASM: java.lang.String METHOD_SINGLE_NAME_PATH_TYPED_INIT> = $r19;	return
;block_num 1