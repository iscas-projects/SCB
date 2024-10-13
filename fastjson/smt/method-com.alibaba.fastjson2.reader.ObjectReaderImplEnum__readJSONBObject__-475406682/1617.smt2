(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3382 0)
(declare-sort var2004 0)
(declare-sort var2645 0)
(declare-sort var1957 0)
(declare-sort var3893 0)
(declare-sort var1777 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getOffset/-1691971951 (var2004) Int)
(declare-fun getType/2124218233 (var2004) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun enumClass/1678935919 (var3382) ClassObject)
(declare-fun checkAutoType/-437932796 (var2004 ClassObject Int Int) var1957)
(declare-fun isEnabled/33017894 (var2004 var3893) Bool)
(declare-fun var1777-init () var1777)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getString/1018493317 (var2004) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var2004 String) String)
(declare-fun <init>/-2099196170 (var1777 String) void)
(declare-const null-var3382 var3382)
(declare-const null-var2004 var2004)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2645 var2645)
(declare-const null-Int Int)
(declare-const null-var1957 var1957)
(declare-const var3893-ErrorOnNotSupportAutoType var3893)
(declare-const var2356 var3382) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplEnum 
(assert (not (= var2356 null-var3382)))
(declare-const var2186 var2004) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2186 null-var2004)))
(declare-const var1774 ClassObject) ; Statement: r2 := @parameter1: java.lang.reflect.Type 
(assert (not (= var1774 null-ClassObject)))
(declare-const var2271 var2645) ; Statement: r23 := @parameter2: java.lang.Object 
(assert (not (= var2271 null-var2645)))
(declare-const var2187 Int) ; Statement: l5 := @parameter3: long 
(assert (not (= var2187 null-Int)))
(assert true)
(define-const var2643 Int (getOffset/-1691971951 var2186)) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int getOffset()>() 
(assert true)
(define-const var1302 Int (getType/2124218233 var2186)) ; Statement: b1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: byte getType()>() 
(define-const var1307 Int (cast-from-Int-to-Int var1302)) ; Statement: $i8 = (int) b1 
(define-const var2452 Int (cast-from-Int-to-Int (- 110))) ; Statement: $i10 = (int) -110 
 ; Statement: if $i8 != $i10 goto $i11 = (int) b1 
(assert (not (not (= var1307 var2452)))) ; Negate: Cond: $i8 != $i10  
(define-const var1204 ClassObject (enumClass/1678935919 var2356)) ; Statement: $r14 = r1.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.Class enumClass> 
(assert true)
(define-const var3883 var1957 (checkAutoType/-437932796 var2186 var1204 0 var2187)) ; Statement: r25 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.reader.ObjectReader checkAutoType(java.lang.Class,long,long)>($r14, 0L, l5) 
 ; Statement: if r25 == null goto $r15 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature ErrorOnNotSupportAutoType> 
(assert (= var3883 null-var1957)) ; Cond: r25 == null 
(define-const var708 var3893 var3893-ErrorOnNotSupportAutoType) ; Statement: $r15 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature ErrorOnNotSupportAutoType> 
(assert true)
(define-const var1812 Bool (isEnabled/33017894 var2186 var708)) ; Statement: $z1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isEnabled(com.alibaba.fastjson2.JSONReader$Feature)>($r15) 
 ; Statement: if $z1 == 0 goto $i11 = (int) b1 
(assert (not (= (ite var1812 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3037 var1777 var1777-init) ; Statement: $r28 = new com.alibaba.fastjson2.JSONException 
(define-const var1212 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1212)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1212!1 String)
(assert (= var1212!1 ""))
(assert true)
(define-const var2789 String (append/672562846 var1212!1 "not support enumType : ")) ; Statement: $r19 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support enumType : ") 
(declare-const var1212!2 String)
(assert (= var1212!2 (str.++ var1212!1 "not support enumType : ")))
(assert true)
(define-const var1715 String (getString/1018493317 var2186)) ; Statement: $r18 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>() 
(assert true)
(define-const var2304 String (append/672562846 var2789 var1715)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var2789!1 String)
(assert (= var2789!1 (str.++ var2789 var1715)))
(assert true)
(define-const var3330 String (toString/-2075883882 var2304)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2918 String (info/-1659839707 var2186 var3330)) ; Statement: $r22 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r21) 
(assert true)
;(assert (<init>/-2099196170 var3037 var2918)) ; Statement: specialinvoke $r28.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r22) 

(declare-const var3037!1 var1777)
(declare-const var2918!1 String)
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {getOffset/-1691971951=([com.alibaba.fastjson2.JSONReader], int), getType/2124218233=([com.alibaba.fastjson2.JSONReader], byte), cast-from-Int-to-Int=([byte], int), enumClass/1678935919=([com.alibaba.fastjson2.reader.ObjectReaderImplEnum], java.lang.Class), checkAutoType/-437932796=([com.alibaba.fastjson2.JSONReader, java.lang.Class, long, long], com.alibaba.fastjson2.reader.ObjectReader), isEnabled/33017894=([com.alibaba.fastjson2.JSONReader, com.alibaba.fastjson2.JSONReader$Feature], boolean), var1777-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getString/1018493317=([com.alibaba.fastjson2.JSONReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3382=com.alibaba.fastjson2.reader.ObjectReaderImplEnum, var2356=r1, var2004=com.alibaba.fastjson2.JSONReader, var2186=r0, var1774=r2, var2645=java.lang.Object, var2271=r23, var2187=l5, var2643=i0, var1302=b1, var1307=$i8, var2452=$i10, var1204=$r14, var1957=com.alibaba.fastjson2.reader.ObjectReader, var3883=r25, var3893=com.alibaba.fastjson2.JSONReader$Feature, var708=$r15, var1812=$z1, var1777=com.alibaba.fastjson2.JSONException, var3037=$r28, var1212=$r27, var2789=$r19, var1715=$r18, var2304=$r20, var3330=$r21, var2918=$r22}
; {com.alibaba.fastjson2.reader.ObjectReaderImplEnum=var3382, r1=var2356, com.alibaba.fastjson2.JSONReader=var2004, r0=var2186, r2=var1774, java.lang.Object=var2645, r23=var2271, l5=var2187, i0=var2643, b1=var1302, $i8=var1307, $i10=var2452, $r14=var1204, com.alibaba.fastjson2.reader.ObjectReader=var1957, r25=var3883, com.alibaba.fastjson2.JSONReader$Feature=var3893, $r15=var708, $z1=var1812, com.alibaba.fastjson2.JSONException=var1777, $r28=var3037, $r27=var1212, $r19=var2789, $r18=var1715, $r20=var2304, $r21=var3330, $r22=var2918}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplEnum;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r2 := @parameter1: java.lang.reflect.Type;	r23 := @parameter2: java.lang.Object;	l5 := @parameter3: long;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int getOffset()>();	b1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: byte getType()>();	$i8 = (int) b1;	$i10 = (int) -110;	if $i8 != $i10 goto $i11 = (int) b1;	$r14 = r1.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.Class enumClass>;	r25 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.reader.ObjectReader checkAutoType(java.lang.Class,long,long)>($r14, 0L, l5);	if r25 == null goto $r15 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature ErrorOnNotSupportAutoType>;	$r15 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature ErrorOnNotSupportAutoType>;	$z1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isEnabled(com.alibaba.fastjson2.JSONReader$Feature)>($r15);	if $z1 == 0 goto $i11 = (int) b1;	$r28 = new com.alibaba.fastjson2.JSONException;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support enumType : ");	$r18 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r22 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r21);	specialinvoke $r28.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r22);	throw $r28
;block_num 4