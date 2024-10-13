(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1983 0)
(declare-sort var83 0)
(declare-sort var2617 0)
(declare-sort var1373 0)
(declare-sort var2975 0)
(declare-sort var1655 0)
(declare-sort var2937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1696313286 (var2617) void)
(declare-fun cast-from-var1983-to-var2617 (var1983) var2617)
(declare-fun itemClass/-1386166965 (var1983) ClassObject)
(declare-fun format/-1386166965 (var1983) var83)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var1373_getTypeName/1260098013 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2975_toBytes/-815774109 (String) (Array Int Int))
(declare-fun typeNameBytes/-1386166965 (var1983) (Array Int Int))
(declare-fun var1655_hashCode64/-647279352 (String) Int)
(declare-fun typeNameHash/-1386166965 (var1983) Int)
(declare-fun var2937_isNotReferenceDetect/967409847 (ClassObject) Bool)
(declare-fun refDetect/-1386166965 (var1983) Bool)
(declare-const null-var1983 var1983)
(declare-const null-ClassObject ClassObject)
(declare-const null-var83 var83)
(declare-const var3591 var1983) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterArrayFinal 
(assert (not (= var3591 null-var1983)))
(declare-const var3059 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3059 null-ClassObject)))
(declare-const var464 var83) ; Statement: r2 := @parameter1: java.text.DecimalFormat 
(assert (not (= var464 null-var83)))
(assert true)
;(assert (<init>/-1696313286 (cast-from-var1983-to-var2617 var3591))) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl: void <init>()>() 

(declare-const var3591!1 var1983)
(declare-const var3591!2 var1983)
(assert (not (= var3591!2 null-var1983)))
(assert (= (itemClass/-1386166965 var3591!2) var3059)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: java.lang.Class itemClass> = r1 
(declare-const var3591!3 var1983)
(assert (not (= var3591!3 null-var1983)))
(assert (= (format/-1386166965 var3591!3) var464)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: java.text.DecimalFormat format> = r2 
(define-const var2927 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2927)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2927!1 String)
(assert (= var2927!1 ""))
(assert true)
(define-const var3069 String (append/-1166366385 var2927!1 91)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2927!2 String)
(assert (str.prefixof var2927!1 var2927!2))
(define-const var1685 String (var1373_getTypeName/1260098013 var3059)) ; Statement: $r4 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>(r1) 
(assert true)
(define-const var3387 String (append/672562846 var3069 var1685)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3069!1 String)
(assert (= var3069!1 (str.++ var3069 var1685)))
(assert true)
(define-const var28 String (toString/-2075883882 var3387)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3006 (Array Int Int) (var2975_toBytes/-815774109 var28)) ; Statement: $r8 = staticinvoke <com.alibaba.fastjson2.JSONB: byte[] toBytes(java.lang.String)>(r7) 
(declare-const var3591!4 var1983)
(assert (not (= var3591!4 null-var1983)))
(assert (= (typeNameBytes/-1386166965 var3591!4) var3006)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: byte[] typeNameBytes> = $r8 
(define-const var3184 Int (var1655_hashCode64/-647279352 var28)) ; Statement: $l0 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>(r7) 
(declare-const var3591!5 var1983)
(assert (not (= var3591!5 null-var1983)))
(assert (= (typeNameHash/-1386166965 var3591!5) var3184)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: long typeNameHash> = $l0 
(define-const var3853 Bool (var2937_isNotReferenceDetect/967409847 var3059)) ; Statement: $z0 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterProvider: boolean isNotReferenceDetect(java.lang.Class)>(r1) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var3853 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3982 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: boolean refDetect> = $z1] 
(assert true) ; Non Conditional
(declare-const var3591!6 var1983)
(assert (not (= var3591!6 null-var1983)))
(assert (= (refDetect/-1386166965 var3591!6) var3982)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: boolean refDetect> = $z1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1696313286=([com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl], void), cast-from-var1983-to-var2617=([com.alibaba.fastjson2.writer.ObjectWriterArrayFinal], com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl), itemClass/-1386166965=([com.alibaba.fastjson2.writer.ObjectWriterArrayFinal], java.lang.Class), format/-1386166965=([com.alibaba.fastjson2.writer.ObjectWriterArrayFinal], java.text.DecimalFormat), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var1373_getTypeName/1260098013=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2975_toBytes/-815774109=([java.lang.String], byte[]), typeNameBytes/-1386166965=([com.alibaba.fastjson2.writer.ObjectWriterArrayFinal], byte[]), var1655_hashCode64/-647279352=([java.lang.String], long), typeNameHash/-1386166965=([com.alibaba.fastjson2.writer.ObjectWriterArrayFinal], long), var2937_isNotReferenceDetect/967409847=([java.lang.Class], boolean), refDetect/-1386166965=([com.alibaba.fastjson2.writer.ObjectWriterArrayFinal], boolean)}
; {var1983=com.alibaba.fastjson2.writer.ObjectWriterArrayFinal, var3591=r0, var3059=r1, var83=java.text.DecimalFormat, var464=r2, var2617=com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl, var2927=$r3, var3069=$r5, var1373=com.alibaba.fastjson2.util.TypeUtils, var1685=$r4, var3387=$r6, var28=r7, var2975=com.alibaba.fastjson2.JSONB, var3006=$r8, var1655=com.alibaba.fastjson2.util.Fnv, var3184=$l0, var2937=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3853=$z0, var3982=$z1}
; {com.alibaba.fastjson2.writer.ObjectWriterArrayFinal=var1983, r0=var3591, r1=var3059, java.text.DecimalFormat=var83, r2=var464, com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl=var2617, $r3=var2927, $r5=var3069, com.alibaba.fastjson2.util.TypeUtils=var1373, $r4=var1685, $r6=var3387, r7=var28, com.alibaba.fastjson2.JSONB=var2975, $r8=var3006, com.alibaba.fastjson2.util.Fnv=var1655, $l0=var3184, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2937, $z0=var3853, $z1=var3982}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterArrayFinal;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: java.text.DecimalFormat;	specialinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl: void <init>()>();	r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: java.lang.Class itemClass> = r1;	r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: java.text.DecimalFormat format> = r2;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r4 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <com.alibaba.fastjson2.JSONB: byte[] toBytes(java.lang.String)>(r7);	r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: byte[] typeNameBytes> = $r8;	$l0 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>(r7);	r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: long typeNameHash> = $l0;	$z0 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterProvider: boolean isNotReferenceDetect(java.lang.Class)>(r1);	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: boolean refDetect> = $z1];	r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: boolean refDetect> = $z1;	return
;block_num 3