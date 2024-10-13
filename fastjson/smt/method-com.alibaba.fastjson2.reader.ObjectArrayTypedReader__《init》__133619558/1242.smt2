(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3874 0)
(declare-sort var3695 0)
(declare-sort var1716 0)
(declare-sort var38 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-427705100 (var3695 ClassObject) void)
(declare-fun cast-from-var3874-to-var3695 (var3874) var3695)
(declare-fun getComponentType/1960034130 (ClassObject) ClassObject)
(declare-fun componentType/480449855 (var3874) ClassObject)
(declare-fun var1716_getTypeName/1260098013 (ClassObject) String)
(declare-fun var38_hashCode64/-647279352 (String) Int)
(declare-fun componentClassHash/480449855 (var3874) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun typeName/480449855 (var3874) String)
(declare-fun typeNameHashCode/480449855 (var3874) Int)
(declare-fun var1716_getClass/-1400709070 (ClassObject) ClassObject)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun componentClass/480449855 (var3874) ClassObject)
(declare-const null-var3874 var3874)
(declare-const null-ClassObject ClassObject)
(declare-const var2151 var3874) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ObjectArrayTypedReader 
(assert (not (= var2151 null-var3874)))
(declare-const var3537 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3537 null-ClassObject)))
(assert true)
;(assert (<init>/-427705100 (cast-from-var3874-to-var3695 var2151) var3537)) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.reader.ObjectReaderPrimitive: void <init>(java.lang.Class)>(r1) 

(declare-const var2151!1 var3874)
(declare-const var3537!1 ClassObject)
(assert true)
(define-const var1608 ClassObject (getComponentType/1960034130 var3537!1)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Class: java.lang.Class getComponentType()>() 
(declare-const var2151!2 var3874)
(assert (not (= var2151!2 null-var3874)))
(assert (= (componentType/480449855 var2151!2) var1608)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectArrayTypedReader: java.lang.Class componentType> = $r2 
(define-const var3519 ClassObject (componentType/480449855 var2151!2)) ; Statement: $r3 = r0.<com.alibaba.fastjson2.reader.ObjectArrayTypedReader: java.lang.Class componentType> 
(define-const var2196 String (var1716_getTypeName/1260098013 var3519)) ; Statement: r4 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>($r3) 
(define-const var1702 Int (var38_hashCode64/-647279352 var2196)) ; Statement: $l0 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>(r4) 
(declare-const var2151!3 var3874)
(assert (not (= var2151!3 null-var3874)))
(assert (= (componentClassHash/480449855 var2151!3) var1702)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectArrayTypedReader: long componentClassHash> = $l0 
(define-const var3480 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3480)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3480!1 String)
(assert (= var3480!1 ""))
(assert true)
(define-const var2994 String (append/-1166366385 var3480!1 91)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3480!2 String)
(assert (str.prefixof var3480!1 var3480!2))
(assert true)
(define-const var611 String (append/672562846 var2994 var2196)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2994!1 String)
(assert (= var2994!1 (str.++ var2994 var2196)))
(assert true)
(define-const var3876 String (toString/-2075883882 var611)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2151!4 var3874)
(assert (not (= var2151!4 null-var3874)))
(assert (= (typeName/480449855 var2151!4) var3876)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectArrayTypedReader: java.lang.String typeName> = $r8 
(define-const var353 String (typeName/480449855 var2151!4)) ; Statement: $r9 = r0.<com.alibaba.fastjson2.reader.ObjectArrayTypedReader: java.lang.String typeName> 
(define-const var3834 Int (var38_hashCode64/-647279352 var353)) ; Statement: $l1 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>($r9) 
(declare-const var2151!5 var3874)
(assert (not (= var2151!5 null-var3874)))
(assert (= (typeNameHashCode/480449855 var2151!5) var3834)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectArrayTypedReader: long typeNameHashCode> = $l1 
(define-const var3683 ClassObject (componentType/480449855 var2151!5)) ; Statement: $r10 = r0.<com.alibaba.fastjson2.reader.ObjectArrayTypedReader: java.lang.Class componentType> 
(define-const var3524 ClassObject (var1716_getClass/-1400709070 (cast-from-ClassObject-to-ClassObject var3683))) ; Statement: $r11 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Class getClass(java.lang.reflect.Type)>($r10) 
(declare-const var2151!6 var3874)
(assert (not (= var2151!6 null-var3874)))
(assert (= (componentClass/480449855 var2151!6) var3524)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectArrayTypedReader: java.lang.Class componentClass> = $r11 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-427705100=([com.alibaba.fastjson2.reader.ObjectReaderPrimitive, java.lang.Class], void), cast-from-var3874-to-var3695=([com.alibaba.fastjson2.reader.ObjectArrayTypedReader], com.alibaba.fastjson2.reader.ObjectReaderPrimitive), getComponentType/1960034130=([java.lang.Class], java.lang.Class), componentType/480449855=([com.alibaba.fastjson2.reader.ObjectArrayTypedReader], java.lang.Class), var1716_getTypeName/1260098013=([java.lang.Class], java.lang.String), var38_hashCode64/-647279352=([java.lang.String], long), componentClassHash/480449855=([com.alibaba.fastjson2.reader.ObjectArrayTypedReader], long), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), typeName/480449855=([com.alibaba.fastjson2.reader.ObjectArrayTypedReader], java.lang.String), typeNameHashCode/480449855=([com.alibaba.fastjson2.reader.ObjectArrayTypedReader], long), var1716_getClass/-1400709070=([java.lang.reflect.Type], java.lang.Class), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), componentClass/480449855=([com.alibaba.fastjson2.reader.ObjectArrayTypedReader], java.lang.Class)}
; {var3874=com.alibaba.fastjson2.reader.ObjectArrayTypedReader, var2151=r0, var3537=r1, var3695=com.alibaba.fastjson2.reader.ObjectReaderPrimitive, var1608=$r2, var3519=$r3, var1716=com.alibaba.fastjson2.util.TypeUtils, var2196=r4, var38=com.alibaba.fastjson2.util.Fnv, var1702=$l0, var3480=$r5, var2994=$r6, var611=$r7, var3876=$r8, var353=$r9, var3834=$l1, var3683=$r10, var3524=$r11}
; {com.alibaba.fastjson2.reader.ObjectArrayTypedReader=var3874, r0=var2151, r1=var3537, com.alibaba.fastjson2.reader.ObjectReaderPrimitive=var3695, $r2=var1608, $r3=var3519, com.alibaba.fastjson2.util.TypeUtils=var1716, r4=var2196, com.alibaba.fastjson2.util.Fnv=var38, $l0=var1702, $r5=var3480, $r6=var2994, $r7=var611, $r8=var3876, $r9=var353, $l1=var3834, $r10=var3683, $r11=var3524}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ObjectArrayTypedReader;	r1 := @parameter0: java.lang.Class;	specialinvoke r0.<com.alibaba.fastjson2.reader.ObjectReaderPrimitive: void <init>(java.lang.Class)>(r1);	$r2 = virtualinvoke r1.<java.lang.Class: java.lang.Class getComponentType()>();	r0.<com.alibaba.fastjson2.reader.ObjectArrayTypedReader: java.lang.Class componentType> = $r2;	$r3 = r0.<com.alibaba.fastjson2.reader.ObjectArrayTypedReader: java.lang.Class componentType>;	r4 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>($r3);	$l0 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>(r4);	r0.<com.alibaba.fastjson2.reader.ObjectArrayTypedReader: long componentClassHash> = $l0;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<com.alibaba.fastjson2.reader.ObjectArrayTypedReader: java.lang.String typeName> = $r8;	$r9 = r0.<com.alibaba.fastjson2.reader.ObjectArrayTypedReader: java.lang.String typeName>;	$l1 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>($r9);	r0.<com.alibaba.fastjson2.reader.ObjectArrayTypedReader: long typeNameHashCode> = $l1;	$r10 = r0.<com.alibaba.fastjson2.reader.ObjectArrayTypedReader: java.lang.Class componentType>;	$r11 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Class getClass(java.lang.reflect.Type)>($r10);	r0.<com.alibaba.fastjson2.reader.ObjectArrayTypedReader: java.lang.Class componentClass> = $r11;	return
;block_num 1