(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2128 0)
(declare-sort var2971 0)
(declare-sort var1155 0)
(declare-sort var83 0)
(declare-sort var368 0)
(declare-sort var2901 0)
(declare-sort var3991 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1696313286 (var1155) void)
(declare-fun cast-from-var2128-to-var1155 (var2128) var1155)
(declare-fun itemClass/-1386166965 (var2128) ClassObject)
(declare-fun format/-1386166965 (var2128) var2971)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var83_getTypeName/1260098013 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var368_toBytes/-815774109 (String) (Array Int Int))
(declare-fun typeNameBytes/-1386166965 (var2128) (Array Int Int))
(declare-fun var2901_hashCode64/-647279352 (String) Int)
(declare-fun typeNameHash/-1386166965 (var2128) Int)
(declare-fun var3991_isNotReferenceDetect/967409847 (ClassObject) Bool)
(declare-fun refDetect/-1386166965 (var2128) Bool)
(declare-const null-var2128 var2128)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2971 var2971)
(declare-const var1087 var2128) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterArrayFinal 
(assert (not (= var1087 null-var2128)))
(declare-const var3058 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3058 null-ClassObject)))
(declare-const var590 var2971) ; Statement: r2 := @parameter1: java.text.DecimalFormat 
(assert (not (= var590 null-var2971)))
(assert true)
;(assert (<init>/-1696313286 (cast-from-var2128-to-var1155 var1087))) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl: void <init>()>() 

(declare-const var1087!1 var2128)
(declare-const var1087!2 var2128)
(assert (not (= var1087!2 null-var2128)))
(assert (= (itemClass/-1386166965 var1087!2) var3058)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: java.lang.Class itemClass> = r1 
(declare-const var1087!3 var2128)
(assert (not (= var1087!3 null-var2128)))
(assert (= (format/-1386166965 var1087!3) var590)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: java.text.DecimalFormat format> = r2 
(define-const var2651 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2651)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2651!1 String)
(assert (= var2651!1 ""))
(assert true)
(define-const var2421 String (append/-1166366385 var2651!1 91)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2651!2 String)
(assert (str.prefixof var2651!1 var2651!2))
(define-const var2498 String (var83_getTypeName/1260098013 var3058)) ; Statement: $r4 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>(r1) 
(assert true)
(define-const var1747 String (append/672562846 var2421 var2498)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2421!1 String)
(assert (= var2421!1 (str.++ var2421 var2498)))
(assert true)
(define-const var2631 String (toString/-2075883882 var1747)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3992 (Array Int Int) (var368_toBytes/-815774109 var2631)) ; Statement: $r8 = staticinvoke <com.alibaba.fastjson2.JSONB: byte[] toBytes(java.lang.String)>(r7) 
(declare-const var1087!4 var2128)
(assert (not (= var1087!4 null-var2128)))
(assert (= (typeNameBytes/-1386166965 var1087!4) var3992)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: byte[] typeNameBytes> = $r8 
(define-const var3368 Int (var2901_hashCode64/-647279352 var2631)) ; Statement: $l0 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>(r7) 
(declare-const var1087!5 var2128)
(assert (not (= var1087!5 null-var2128)))
(assert (= (typeNameHash/-1386166965 var1087!5) var3368)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: long typeNameHash> = $l0 
(define-const var885 Bool (var3991_isNotReferenceDetect/967409847 var3058)) ; Statement: $z0 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterProvider: boolean isNotReferenceDetect(java.lang.Class)>(r1) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var885 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3048 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(declare-const var1087!6 var2128)
(assert (not (= var1087!6 null-var2128)))
(assert (= (refDetect/-1386166965 var1087!6) var3048)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: boolean refDetect> = $z1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1696313286=([com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl], void), cast-from-var2128-to-var1155=([com.alibaba.fastjson2.writer.ObjectWriterArrayFinal], com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl), itemClass/-1386166965=([com.alibaba.fastjson2.writer.ObjectWriterArrayFinal], java.lang.Class), format/-1386166965=([com.alibaba.fastjson2.writer.ObjectWriterArrayFinal], java.text.DecimalFormat), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var83_getTypeName/1260098013=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var368_toBytes/-815774109=([java.lang.String], byte[]), typeNameBytes/-1386166965=([com.alibaba.fastjson2.writer.ObjectWriterArrayFinal], byte[]), var2901_hashCode64/-647279352=([java.lang.String], long), typeNameHash/-1386166965=([com.alibaba.fastjson2.writer.ObjectWriterArrayFinal], long), var3991_isNotReferenceDetect/967409847=([java.lang.Class], boolean), refDetect/-1386166965=([com.alibaba.fastjson2.writer.ObjectWriterArrayFinal], boolean)}
; {var2128=com.alibaba.fastjson2.writer.ObjectWriterArrayFinal, var1087=r0, var3058=r1, var2971=java.text.DecimalFormat, var590=r2, var1155=com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl, var2651=$r3, var2421=$r5, var83=com.alibaba.fastjson2.util.TypeUtils, var2498=$r4, var1747=$r6, var2631=r7, var368=com.alibaba.fastjson2.JSONB, var3992=$r8, var2901=com.alibaba.fastjson2.util.Fnv, var3368=$l0, var3991=com.alibaba.fastjson2.writer.ObjectWriterProvider, var885=$z0, var3048=$z1}
; {com.alibaba.fastjson2.writer.ObjectWriterArrayFinal=var2128, r0=var1087, r1=var3058, java.text.DecimalFormat=var2971, r2=var590, com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl=var1155, $r3=var2651, $r5=var2421, com.alibaba.fastjson2.util.TypeUtils=var83, $r4=var2498, $r6=var1747, r7=var2631, com.alibaba.fastjson2.JSONB=var368, $r8=var3992, com.alibaba.fastjson2.util.Fnv=var2901, $l0=var3368, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3991, $z0=var885, $z1=var3048}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterArrayFinal;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: java.text.DecimalFormat;	specialinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl: void <init>()>();	r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: java.lang.Class itemClass> = r1;	r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: java.text.DecimalFormat format> = r2;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r4 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <com.alibaba.fastjson2.JSONB: byte[] toBytes(java.lang.String)>(r7);	r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: byte[] typeNameBytes> = $r8;	$l0 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>(r7);	r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: long typeNameHash> = $l0;	$z0 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterProvider: boolean isNotReferenceDetect(java.lang.Class)>(r1);	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	r0.<com.alibaba.fastjson2.writer.ObjectWriterArrayFinal: boolean refDetect> = $z1;	return
;block_num 3