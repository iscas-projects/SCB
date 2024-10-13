(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3416 0)
(declare-sort var2135 0)
(declare-sort var2187 0)
(declare-sort var2456 0)
(declare-sort var29 0)
(declare-sort var415 0)
(declare-sort var342 0)
(declare-sort var3086 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2187!class ClassObject)
(declare-fun <init>/-1696313286 (var2135) void)
(declare-fun cast-from-var3416-to-var2135 (var3416) var2135)
(declare-fun itemType/-280647957 (var3416) ClassObject)
(declare-fun cast-from-ClassObject-to-var2187 (ClassObject) var2187)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun var2456_getTypeName/1260098013 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var29_toBytes/-815774109 (String) (Array Int Int))
(declare-fun typeNameBytes/-280647957 (var3416) (Array Int Int))
(declare-fun var415_hashCode64/-647279352 (String) Int)
(declare-fun typeNameHash/-280647957 (var3416) Int)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun prefixChars/-280647957 (var3416) (Array Int Int))
(declare-fun getBytes/-163691139 (String var342) (Array Int Int))
(declare-fun prefixBytes/-280647957 (var3416) (Array Int Int))
(declare-const null-var3416 var3416)
(declare-const null-ClassObject ClassObject)
(declare-const var3086-UTF_8 var342)
(declare-const var404 var3416) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterArray 
(assert (not (= var404 null-var3416)))
(declare-const var625 ClassObject) ; Statement: r1 := @parameter0: java.lang.reflect.Type 
(assert (not (= var625 null-ClassObject)))
(assert true)
;(assert (<init>/-1696313286 (cast-from-var3416-to-var2135 var404))) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl: void <init>()>() 

(declare-const var404!1 var3416)
(declare-const var404!2 var3416)
(assert (not (= var404!2 null-var3416)))
(assert (= (itemType/-280647957 var404!2) var625)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: java.lang.reflect.Type itemType> = r1 
 ; Statement: if r1 != class "Ljava/lang/Object;" goto $r2 = new java.lang.StringBuilder 
(assert (not (= (cast-from-ClassObject-to-var2187 var625) (cast-from-ClassObject-to-var2187 var2187!class)))) ; Cond: r1 != class "Ljava/lang/Object;" 
(define-const var1802 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1802)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1802!1 String)
(assert (= var1802!1 ""))
(assert true)
(define-const var2346 String (append/-1166366385 var1802!1 91)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var1802!2 String)
(assert (str.prefixof var1802!1 var1802!2))
(define-const var3247 ClassObject (cast-from-ClassObject-to-ClassObject var625)) ; Statement: $r3 = (java.lang.Class) r1 
(define-const var3377 String (var2456_getTypeName/1260098013 var3247)) ; Statement: $r4 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>($r3) 
(assert true)
(define-const var1186 String (append/672562846 var2346 var3377)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2346!1 String)
(assert (= var2346!1 (str.++ var2346 var3377)))
(assert true)
(define-const var3763 String (toString/-2075883882 var1186)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2940 (Array Int Int) (var29_toBytes/-815774109 var3763)) ; Statement: $r8 = staticinvoke <com.alibaba.fastjson2.JSONB: byte[] toBytes(java.lang.String)>(r7) 
(declare-const var404!3 var3416)
(assert (not (= var404!3 null-var3416)))
(assert (= (typeNameBytes/-280647957 var404!3) var2940)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: byte[] typeNameBytes> = $r8 
(define-const var3853 Int (var415_hashCode64/-647279352 var3763)) ; Statement: $l0 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>(r7) 
(declare-const var404!4 var3416)
(assert (not (= var404!4 null-var3416)))
(assert (= (typeNameHash/-280647957 var404!4) var3853)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: long typeNameHash> = $l0 
(define-const var1711 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1711)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1711!1 String)
(assert (= var1711!1 ""))
(assert true)
(define-const var1150 String (append/672562846 var1711!1 "{\u0022@type\u0022:\u0022")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{\"@type\":\"") 
(declare-const var1711!2 String)
(assert (= var1711!2 (str.++ var1711!1 "{\u0022@type\u0022:\u0022")))
(assert true)
(define-const var3796 String (append/672562846 var1150 var3763)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1150!1 String)
(assert (= var1150!1 (str.++ var1150 var3763)))
(assert true)
(define-const var1433 String (toString/-2075883882 var3796)) ; Statement: r23 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1148 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1148)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1148!1 String)
(assert (= var1148!1 ""))
(assert true)
(define-const var2192 String (append/672562846 var1148!1 var1433)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r23) 
(declare-const var1148!2 String)
(assert (= var1148!2 (str.++ var1148!1 var1433)))
(assert true)
(define-const var2700 String (append/672562846 var2192 "\u0022,\u0022@value\u0022:[")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\",\"@value\":[") 
(declare-const var2192!1 String)
(assert (= var2192!1 (str.++ var2192 "\u0022,\u0022@value\u0022:[")))
(assert true)
(define-const var836 String (toString/-2075883882 var2700)) ; Statement: $r22 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3732 (Array Int Int) (toCharArray/415275702 var836)) ; Statement: $r15 = virtualinvoke $r22.<java.lang.String: char[] toCharArray()>() 
(declare-const var404!5 var3416)
(assert (not (= var404!5 null-var3416)))
(assert (= (prefixChars/-280647957 var404!5) var3732)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: char[] prefixChars> = $r15 
(define-const var3440 var342 var3086-UTF_8) ; Statement: $r16 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var2772 (Array Int Int) (getBytes/-163691139 var836 var3440)) ; Statement: $r17 = virtualinvoke $r22.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r16) 
(declare-const var404!6 var3416)
(assert (not (= var404!6 null-var3416)))
(assert (= (prefixBytes/-280647957 var404!6) var2772)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: byte[] prefixBytes> = $r17 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1696313286=([com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl], void), cast-from-var3416-to-var2135=([com.alibaba.fastjson2.writer.ObjectWriterArray], com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl), itemType/-280647957=([com.alibaba.fastjson2.writer.ObjectWriterArray], java.lang.reflect.Type), cast-from-ClassObject-to-var2187=([java.lang.reflect.Type], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), cast-from-ClassObject-to-ClassObject=([java.lang.reflect.Type], java.lang.Class), var2456_getTypeName/1260098013=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var29_toBytes/-815774109=([java.lang.String], byte[]), typeNameBytes/-280647957=([com.alibaba.fastjson2.writer.ObjectWriterArray], byte[]), var415_hashCode64/-647279352=([java.lang.String], long), typeNameHash/-280647957=([com.alibaba.fastjson2.writer.ObjectWriterArray], long), toCharArray/415275702=([java.lang.String], char[]), prefixChars/-280647957=([com.alibaba.fastjson2.writer.ObjectWriterArray], char[]), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), prefixBytes/-280647957=([com.alibaba.fastjson2.writer.ObjectWriterArray], byte[])}
; {var3416=com.alibaba.fastjson2.writer.ObjectWriterArray, var404=r0, var625=r1, var2135=com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl, var2187=java.lang.Object, var1802=$r2, var2346=$r5, var3247=$r3, var2456=com.alibaba.fastjson2.util.TypeUtils, var3377=$r4, var1186=$r6, var3763=r7, var29=com.alibaba.fastjson2.JSONB, var2940=$r8, var415=com.alibaba.fastjson2.util.Fnv, var3853=$l0, var1711=$r9, var1150=$r10, var3796=$r11, var1433=r23, var1148=$r12, var2192=$r13, var2700=$r14, var836=$r22, var3732=$r15, var342=java.nio.charset.Charset, var3086=java.nio.charset.StandardCharsets, var3440=$r16, var2772=$r17}
; {com.alibaba.fastjson2.writer.ObjectWriterArray=var3416, r0=var404, r1=var625, com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl=var2135, java.lang.Object=var2187, $r2=var1802, $r5=var2346, $r3=var3247, com.alibaba.fastjson2.util.TypeUtils=var2456, $r4=var3377, $r6=var1186, r7=var3763, com.alibaba.fastjson2.JSONB=var29, $r8=var2940, com.alibaba.fastjson2.util.Fnv=var415, $l0=var3853, $r9=var1711, $r10=var1150, $r11=var3796, r23=var1433, $r12=var1148, $r13=var2192, $r14=var2700, $r22=var836, $r15=var3732, java.nio.charset.Charset=var342, java.nio.charset.StandardCharsets=var3086, $r16=var3440, $r17=var2772}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterArray;	r1 := @parameter0: java.lang.reflect.Type;	specialinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl: void <init>()>();	r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: java.lang.reflect.Type itemType> = r1;	if r1 != class "Ljava/lang/Object;" goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r3 = (java.lang.Class) r1;	$r4 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <com.alibaba.fastjson2.JSONB: byte[] toBytes(java.lang.String)>(r7);	r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: byte[] typeNameBytes> = $r8;	$l0 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>(r7);	r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: long typeNameHash> = $l0;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{\"@type\":\"");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	r23 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r23);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\",\"@value\":[");	$r22 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke $r22.<java.lang.String: char[] toCharArray()>();	r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: char[] prefixChars> = $r15;	$r16 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$r17 = virtualinvoke $r22.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r16);	r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: byte[] prefixBytes> = $r17;	return
;block_num 3