(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2751 0)
(declare-sort var2124 0)
(declare-sort var2626 0)
(declare-sort var3406 0)
(declare-sort var1696 0)
(declare-sort var2204 0)
(declare-sort var1369 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2626!class ClassObject)
(declare-fun <init>/-1696313286 (var2124) void)
(declare-fun cast-from-var2751-to-var2124 (var2751) var2124)
(declare-fun itemType/-280647957 (var2751) ClassObject)
(declare-fun cast-from-ClassObject-to-var2626 (ClassObject) var2626)
(declare-fun var3406_toBytes/-815774109 (String) (Array Int Int))
(declare-fun typeNameBytes/-280647957 (var2751) (Array Int Int))
(declare-fun var1696_hashCode64/-647279352 (String) Int)
(declare-fun typeNameHash/-280647957 (var2751) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun prefixChars/-280647957 (var2751) (Array Int Int))
(declare-fun getBytes/-163691139 (String var2204) (Array Int Int))
(declare-fun prefixBytes/-280647957 (var2751) (Array Int Int))
(declare-const null-var2751 var2751)
(declare-const null-ClassObject ClassObject)
(declare-const var1369-UTF_8 var2204)
(declare-const var768 var2751) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterArray 
(assert (not (= var768 null-var2751)))
(declare-const var3881 ClassObject) ; Statement: r1 := @parameter0: java.lang.reflect.Type 
(assert (not (= var3881 null-ClassObject)))
(assert true)
;(assert (<init>/-1696313286 (cast-from-var2751-to-var2124 var768))) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl: void <init>()>() 

(declare-const var768!1 var2751)
(declare-const var768!2 var2751)
(assert (not (= var768!2 null-var2751)))
(assert (= (itemType/-280647957 var768!2) var3881)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: java.lang.reflect.Type itemType> = r1 
 ; Statement: if r1 != class "Ljava/lang/Object;" goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= (cast-from-ClassObject-to-var2626 var3881) (cast-from-ClassObject-to-var2626 var2626!class))))) ; Negate: Cond: r1 != class "Ljava/lang/Object;"  
(define-const var1137 (Array Int Int) (var3406_toBytes/-815774109 "[O")) ; Statement: $r18 = staticinvoke <com.alibaba.fastjson2.JSONB: byte[] toBytes(java.lang.String)>("[O") 
(declare-const var768!3 var2751)
(assert (not (= var768!3 null-var2751)))
(assert (= (typeNameBytes/-280647957 var768!3) var1137)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: byte[] typeNameBytes> = $r18 
(define-const var115 Int (var1696_hashCode64/-647279352 "[0")) ; Statement: $l1 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>("[0") 
(declare-const var768!4 var2751)
(assert (not (= var768!4 null-var2751)))
(assert (= (typeNameHash/-280647957 var768!4) var115)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: long typeNameHash> = $l1 
(define-const var2430 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2430)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2430!1 String)
(assert (= var2430!1 ""))
(assert true)
(define-const var432 String (append/672562846 var2430!1 "{\u0022@type\u0022:\u0022")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{\"@type\":\"") 
(declare-const var2430!2 String)
(assert (= var2430!2 (str.++ var2430!1 "{\u0022@type\u0022:\u0022")))
(assert true)
(define-const var901 String (append/672562846 var432 "[O")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[O") 
(declare-const var432!1 String)
(assert (= var432!1 (str.++ var432 "[O")))
(assert true)
(define-const var2904 String (toString/-2075883882 var901)) ; Statement: r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r12 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1776 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1776)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1776!1 String)
(assert (= var1776!1 ""))
(assert true)
(define-const var1 String (append/672562846 var1776!1 var2904)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r23) 
(declare-const var1776!2 String)
(assert (= var1776!2 (str.++ var1776!1 var2904)))
(assert true)
(define-const var1279 String (append/672562846 var1 "\u0022,\u0022@value\u0022:[")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\",\"@value\":[") 
(declare-const var1!1 String)
(assert (= var1!1 (str.++ var1 "\u0022,\u0022@value\u0022:[")))
(assert true)
(define-const var1338 String (toString/-2075883882 var1279)) ; Statement: $r22 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var184 (Array Int Int) (toCharArray/415275702 var1338)) ; Statement: $r15 = virtualinvoke $r22.<java.lang.String: char[] toCharArray()>() 
(declare-const var768!5 var2751)
(assert (not (= var768!5 null-var2751)))
(assert (= (prefixChars/-280647957 var768!5) var184)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: char[] prefixChars> = $r15 
(define-const var2316 var2204 var1369-UTF_8) ; Statement: $r16 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var2481 (Array Int Int) (getBytes/-163691139 var1338 var2316)) ; Statement: $r17 = virtualinvoke $r22.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r16) 
(declare-const var768!6 var2751)
(assert (not (= var768!6 null-var2751)))
(assert (= (prefixBytes/-280647957 var768!6) var2481)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: byte[] prefixBytes> = $r17 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1696313286=([com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl], void), cast-from-var2751-to-var2124=([com.alibaba.fastjson2.writer.ObjectWriterArray], com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl), itemType/-280647957=([com.alibaba.fastjson2.writer.ObjectWriterArray], java.lang.reflect.Type), cast-from-ClassObject-to-var2626=([java.lang.reflect.Type], java.lang.Object), var3406_toBytes/-815774109=([java.lang.String], byte[]), typeNameBytes/-280647957=([com.alibaba.fastjson2.writer.ObjectWriterArray], byte[]), var1696_hashCode64/-647279352=([java.lang.String], long), typeNameHash/-280647957=([com.alibaba.fastjson2.writer.ObjectWriterArray], long), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), prefixChars/-280647957=([com.alibaba.fastjson2.writer.ObjectWriterArray], char[]), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), prefixBytes/-280647957=([com.alibaba.fastjson2.writer.ObjectWriterArray], byte[])}
; {var2751=com.alibaba.fastjson2.writer.ObjectWriterArray, var768=r0, var3881=r1, var2124=com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl, var2626=java.lang.Object, var3406=com.alibaba.fastjson2.JSONB, var1137=$r18, var1696=com.alibaba.fastjson2.util.Fnv, var115=$l1, var2430=$r19, var432=$r20, var901=$r21, var2904=r23, var1776=$r12, var1=$r13, var1279=$r14, var1338=$r22, var184=$r15, var2204=java.nio.charset.Charset, var1369=java.nio.charset.StandardCharsets, var2316=$r16, var2481=$r17}
; {com.alibaba.fastjson2.writer.ObjectWriterArray=var2751, r0=var768, r1=var3881, com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl=var2124, java.lang.Object=var2626, com.alibaba.fastjson2.JSONB=var3406, $r18=var1137, com.alibaba.fastjson2.util.Fnv=var1696, $l1=var115, $r19=var2430, $r20=var432, $r21=var901, r23=var2904, $r12=var1776, $r13=var1, $r14=var1279, $r22=var1338, $r15=var184, java.nio.charset.Charset=var2204, java.nio.charset.StandardCharsets=var1369, $r16=var2316, $r17=var2481}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterArray;	r1 := @parameter0: java.lang.reflect.Type;	specialinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl: void <init>()>();	r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: java.lang.reflect.Type itemType> = r1;	if r1 != class "Ljava/lang/Object;" goto $r2 = new java.lang.StringBuilder;	$r18 = staticinvoke <com.alibaba.fastjson2.JSONB: byte[] toBytes(java.lang.String)>("[O");	r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: byte[] typeNameBytes> = $r18;	$l1 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>("[0");	r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: long typeNameHash> = $l1;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{\"@type\":\"");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[O");	r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r12 = new java.lang.StringBuilder];	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r23);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\",\"@value\":[");	$r22 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke $r22.<java.lang.String: char[] toCharArray()>();	r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: char[] prefixChars> = $r15;	$r16 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$r17 = virtualinvoke $r22.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r16);	r0.<com.alibaba.fastjson2.writer.ObjectWriterArray: byte[] prefixBytes> = $r17;	return
;block_num 3