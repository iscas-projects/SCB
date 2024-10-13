(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var879 0)
(declare-sort var1429 0)
(declare-sort var3552 0)
(declare-sort var447 0)
(declare-sort var3330 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3552) void)
(declare-fun cast-from-var879-to-var3552 (var879) var3552)
(declare-fun cast-from-var1429-to-ClassObject (var1429) ClassObject)
(declare-fun arrayType/-1226265808 (var879) ClassObject)
(declare-fun var447_getClass/-1400709070 (ClassObject) ClassObject)
(declare-fun arrayClass/-1226265808 (var879) ClassObject)
(declare-fun var1429_getGenericComponentType/-709770427 (var1429) ClassObject)
(declare-fun itemType/-1226265808 (var879) ClassObject)
(declare-fun var447_getMapping/-1348044260 (ClassObject) ClassObject)
(declare-fun componentClass/-1226265808 (var879) ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var447_getTypeName/1260098013 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arrayClassName/-1226265808 (var879) String)
(declare-fun var3330_hashCode64/-647279352 (String) Int)
(declare-fun arrayClassNameHash/-1226265808 (var879) Int)
(declare-const null-var879 var879)
(declare-const null-var1429 var1429)
(declare-const var868 var879) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray 
(assert (not (= var868 null-var879)))
(declare-const var1573 var1429) ; Statement: r1 := @parameter0: java.lang.reflect.GenericArrayType 
(assert (not (= var1573 null-var1429)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var879-to-var3552 var868))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var868!1 var879)
(declare-const var868!2 var879)
(assert (not (= var868!2 null-var879)))
(assert (= (arrayType/-1226265808 var868!2) (cast-from-var1429-to-ClassObject var1573))) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.reflect.Type arrayType> = r1 
(define-const var987 ClassObject (arrayType/-1226265808 var868!2)) ; Statement: $r2 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.reflect.Type arrayType> 
(define-const var1122 ClassObject (var447_getClass/-1400709070 var987)) ; Statement: $r3 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Class getClass(java.lang.reflect.Type)>($r2) 
(declare-const var868!3 var879)
(assert (not (= var868!3 null-var879)))
(assert (= (arrayClass/-1226265808 var868!3) var1122)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.Class arrayClass> = $r3 
(define-const var1318 ClassObject (var1429_getGenericComponentType/-709770427 var1573)) ; Statement: $r4 = interfaceinvoke r1.<java.lang.reflect.GenericArrayType: java.lang.reflect.Type getGenericComponentType()>() 
(declare-const var868!4 var879)
(assert (not (= var868!4 null-var879)))
(assert (= (itemType/-1226265808 var868!4) var1318)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.reflect.Type itemType> = $r4 
(define-const var719 ClassObject (itemType/-1226265808 var868!4)) ; Statement: $r5 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.reflect.Type itemType> 
(define-const var1917 ClassObject (var447_getMapping/-1348044260 var719)) ; Statement: $r6 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Class getMapping(java.lang.reflect.Type)>($r5) 
(declare-const var868!5 var879)
(assert (not (= var868!5 null-var879)))
(assert (= (componentClass/-1226265808 var868!5) var1917)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.Class componentClass> = $r6 
(define-const var3235 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3235)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3235!1 String)
(assert (= var3235!1 ""))
(assert true)
(define-const var786 String (append/672562846 var3235!1 "[")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3235!2 String)
(assert (= var3235!2 (str.++ var3235!1 "[")))
(define-const var1447 ClassObject (componentClass/-1226265808 var868!5)) ; Statement: $r8 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.Class componentClass> 
(define-const var3788 String (var447_getTypeName/1260098013 var1447)) ; Statement: $r9 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>($r8) 
(assert true)
(define-const var1671 String (append/672562846 var786 var3788)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var786!1 String)
(assert (= var786!1 (str.++ var786 var3788)))
(assert true)
(define-const var1490 String (toString/-2075883882 var1671)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var868!6 var879)
(assert (not (= var868!6 null-var879)))
(assert (= (arrayClassName/-1226265808 var868!6) var1490)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.String arrayClassName> = $r12 
(define-const var869 String (arrayClassName/-1226265808 var868!6)) ; Statement: $r13 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.String arrayClassName> 
(define-const var1236 Int (var3330_hashCode64/-647279352 var869)) ; Statement: $l0 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>($r13) 
(declare-const var868!7 var879)
(assert (not (= var868!7 null-var879)))
(assert (= (arrayClassNameHash/-1226265808 var868!7) var1236)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: long arrayClassNameHash> = $l0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var879-to-var3552=([com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray], java.lang.Object), cast-from-var1429-to-ClassObject=([java.lang.reflect.GenericArrayType], java.lang.reflect.Type), arrayType/-1226265808=([com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray], java.lang.reflect.Type), var447_getClass/-1400709070=([java.lang.reflect.Type], java.lang.Class), arrayClass/-1226265808=([com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray], java.lang.Class), var1429_getGenericComponentType/-709770427=([java.lang.reflect.GenericArrayType], java.lang.reflect.Type), itemType/-1226265808=([com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray], java.lang.reflect.Type), var447_getMapping/-1348044260=([java.lang.reflect.Type], java.lang.Class), componentClass/-1226265808=([com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray], java.lang.Class), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var447_getTypeName/1260098013=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arrayClassName/-1226265808=([com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray], java.lang.String), var3330_hashCode64/-647279352=([java.lang.String], long), arrayClassNameHash/-1226265808=([com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray], long)}
; {var879=com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray, var868=r0, var1429=java.lang.reflect.GenericArrayType, var1573=r1, var3552=java.lang.Object, var987=$r2, var447=com.alibaba.fastjson2.util.TypeUtils, var1122=$r3, var1318=$r4, var719=$r5, var1917=$r6, var3235=$r7, var786=$r10, var1447=$r8, var3788=$r9, var1671=$r11, var1490=$r12, var869=$r13, var3330=com.alibaba.fastjson2.util.Fnv, var1236=$l0}
; {com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray=var879, r0=var868, java.lang.reflect.GenericArrayType=var1429, r1=var1573, java.lang.Object=var3552, $r2=var987, com.alibaba.fastjson2.util.TypeUtils=var447, $r3=var1122, $r4=var1318, $r5=var719, $r6=var1917, $r7=var3235, $r10=var786, $r8=var1447, $r9=var3788, $r11=var1671, $r12=var1490, $r13=var869, com.alibaba.fastjson2.util.Fnv=var3330, $l0=var1236}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray;	r1 := @parameter0: java.lang.reflect.GenericArrayType;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.reflect.Type arrayType> = r1;	$r2 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.reflect.Type arrayType>;	$r3 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Class getClass(java.lang.reflect.Type)>($r2);	r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.Class arrayClass> = $r3;	$r4 = interfaceinvoke r1.<java.lang.reflect.GenericArrayType: java.lang.reflect.Type getGenericComponentType()>();	r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.reflect.Type itemType> = $r4;	$r5 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.reflect.Type itemType>;	$r6 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Class getMapping(java.lang.reflect.Type)>($r5);	r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.Class componentClass> = $r6;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r8 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.Class componentClass>;	$r9 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.String arrayClassName> = $r12;	$r13 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: java.lang.String arrayClassName>;	$l0 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>($r13);	r0.<com.alibaba.fastjson2.reader.ObjectReaderImplGenericArray: long arrayClassNameHash> = $l0;	return
;block_num 1