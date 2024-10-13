(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3192 0)
(declare-sort var2513 0)
(declare-sort var398 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2513_typeName/1994747818 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isString/208298064 (var3192) Bool)
(declare-fun offset/1287024874 (var398) Int)
(declare-fun cast-from-var3192-to-var398 (var3192) var398)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun bytes/-413709904 (var3192) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3192 var3192)
(declare-const null-Int Int)
(declare-const var1839 var3192) ; Statement: r2 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var1839 null-var3192)))
(declare-const var3622 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var3622 null-Int)))
(define-const var1143 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1143)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1143!1 String)
(assert (= var1143!1 ""))
(define-const var1434 String (var2513_typeName/1994747818 var3622)) ; Statement: $r1 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>(b0) 
(assert true)
;(assert (append/672562846 var1143!1 var1434)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var1143!2 String)
(assert (= var1143!2 (str.++ var1143!1 var1434)))
(assert true)
(define-const var739 Bool (isString/208298064 var1839)) ; Statement: $z0 = virtualinvoke r2.<com.alibaba.fastjson2.JSONReaderJSONB: boolean isString()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset ") 
(assert (= (ite var739 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var1143!2 ", offset ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset ") 
(declare-const var1143!3 String)
(assert (= var1143!3 (str.++ var1143!2 ", offset ")))
(define-const var3534 Int (offset/1287024874 (cast-from-var3192-to-var398 var1839))) ; Statement: $i4 = r2.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(assert true)
;(assert (append/-1001720160 var1143!3 var3534)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var1143!4 String)
(assert (str.prefixof var1143!3 var1143!4))
(assert true)
;(assert (append/-1166366385 var1143!4 47)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47) 
(declare-const var1143!5 String)
(assert (str.prefixof var1143!4 var1143!5))
(define-const var447 (Array Int Int) (bytes/-413709904 var1839)) ; Statement: $r5 = r2.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes> 
(define-const var1452 Int (getLength-Arr-Int-1 var447)) ; Statement: $i5 = lengthof $r5 
(assert true)
;(assert (append/-1001720160 var1143!5 var1452)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var1143!6 String)
(assert (str.prefixof var1143!5 var1143!6))
(assert true)
(define-const var2278 String (toString/-2075883882 var1143!6)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2513_typeName/1994747818=([byte], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isString/208298064=([com.alibaba.fastjson2.JSONReaderJSONB], boolean), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var3192-to-var398=([com.alibaba.fastjson2.JSONReaderJSONB], com.alibaba.fastjson2.JSONReader), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), bytes/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte[]), getLength-Arr-Int-1=([byte[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3192=com.alibaba.fastjson2.JSONReaderJSONB, var1839=r2, var3622=b0, var1143=$r0, var2513=com.alibaba.fastjson2.JSONB, var1434=$r1, var739=$z0, var398=com.alibaba.fastjson2.JSONReader, var3534=$i4, var447=$r5, var1452=$i5, var2278=$r6}
; {com.alibaba.fastjson2.JSONReaderJSONB=var3192, r2=var1839, b0=var3622, $r0=var1143, com.alibaba.fastjson2.JSONB=var2513, $r1=var1434, $z0=var739, com.alibaba.fastjson2.JSONReader=var398, $i4=var3534, $r5=var447, $i5=var1452, $r6=var2278}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	b0 := @parameter0: byte;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>(b0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$z0 = virtualinvoke r2.<com.alibaba.fastjson2.JSONReaderJSONB: boolean isString()>();	if $z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset ");	$i4 = r2.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47);	$r5 = r2.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;	$i5 = lengthof $r5;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2