(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3451 0)
(declare-sort var969 0)
(declare-sort var1684 0)
(declare-sort var952 0)
(declare-sort var3262 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _paragraphs/-1115286325 (var3451) var969)
(declare-fun var969_get/-1216255739 (var969 Int) var1684)
(declare-fun cast-from-var1684-to-var952 (var1684) var952)
(declare-fun getBulletAutoNumberStart/1466659731 (var952) Int)
(declare-fun getBulletAutoNumberScheme/-937320043 (var952) var3262)
(declare-fun cast-from-var1684-to-Int (var1684) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun getText/-1503445906 (var952) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var969_size/-959786421 (var969) Int)
(declare-fun isBullet/2002197266 (var952) Bool)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var969_set/-1241329960 (var969 Int var1684) var1684)
(declare-fun cast-from-Int-to-var1684 (Int) var1684)
(declare-const null-var3451 var3451)
(declare-const null-Int Int)
(declare-const null-var969 var969)
(declare-const null-String String)
(declare-const null-var952 var952)
(declare-const var3950 var3451) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape 
(assert (not (= var3950 null-var3451)))
(declare-const var1533 Int) ; Statement: i17 := @parameter0: int 
(assert (not (= var1533 null-Int)))
(declare-const var1989 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1989 null-Int)))
(declare-const var987 var969) ; Statement: r5 := @parameter2: java.util.List 
(assert (not (= var987 null-var969)))
(declare-const var2806 String) ; Statement: r12 := @parameter3: java.lang.StringBuilder 
(assert (not (= var2806 null-String)))
(define-const var324 var969 (_paragraphs/-1115286325 var3950)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs> 
(define-const var1613 var1684 (var969_get/-1216255739 var324 var1533)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(i17) 
(define-const var3987 var952 (cast-from-var1684-to-var952 var1613)) ; Statement: r3 = (org.apache.poi.xssf.usermodel.XSSFTextParagraph) $r2 
(assert true)
(define-const var2754 Int (getBulletAutoNumberStart/1466659731 var3987)) ; Statement: i0 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: int getBulletAutoNumberStart()>() 
(assert true)
(define-const var364 var3262 (getBulletAutoNumberScheme/-937320043 var3987)) ; Statement: r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: org.apache.poi.xssf.usermodel.ListAutoNumber getBulletAutoNumberScheme()>() 
(define-const var2827 var1684 (var969_get/-1216255739 var987 var1989)) ; Statement: $r6 = interfaceinvoke r5.<java.util.List: java.lang.Object get(int)>(i1) 
(define-const var2156 Int (cast-from-var1684-to-Int var2827)) ; Statement: $r7 = (java.lang.Integer) $r6 
(assert true)
(define-const var2905 Int (intValue/-1815674922 var2156)) ; Statement: $i2 = virtualinvoke $r7.<java.lang.Integer: int intValue()>() 
 ; Statement: if $i2 != 0 goto i19 = 0 
(assert (not (= var2905 0))) ; Cond: $i2 != 0 
(define-const var3722 Int 0) ; Statement: i19 = 0 
(assert true) ; Non Conditional
 ; Statement: if i19 >= i1 goto $r8 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>() 
(assert (>= var3722 var1989)) ; Cond: i19 >= i1 
(assert true)
(define-const var1567 String (getText/-1503445906 var3987)) ; Statement: $r8 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>() 
(assert true)
(define-const var3042 Int (length/-134980193 var1567)) ; Statement: $i3 = virtualinvoke $r8.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= 0 goto $i20 = i17 + 1 
(assert (<= var3042 0)) ; Cond: $i3 <= 0 
(define-const var3371 Int (+ var1533 1)) ; Statement: $i20 = i17 + 1 
(define-const var2901 var969 (_paragraphs/-1115286325 var3950)) ; Statement: $r26 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs> 
(define-const var1064 Int (var969_size/-959786421 var2901)) ; Statement: $i21 = interfaceinvoke $r26.<java.util.List: int size()>() 
 ; Statement: if $i20 != $i21 goto $r9 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs> 
(assert (not (= var3371 var1064))) ; Cond: $i20 != $i21 
(define-const var2190 var969 (_paragraphs/-1115286325 var3950)) ; Statement: $r9 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs> 
(define-const var375 Int (+ var1533 1)) ; Statement: $i4 = i17 + 1 
(define-const var167 var1684 (var969_get/-1216255739 var2190 var375)) ; Statement: $r10 = interfaceinvoke $r9.<java.util.List: java.lang.Object get(int)>($i4) 
(define-const var2968 var952 (cast-from-var1684-to-var952 var167)) ; Statement: $r27 = (org.apache.poi.xssf.usermodel.XSSFTextParagraph) $r10 
(assert true) ; Non Conditional
(define-const var1552 var952 var2968) ; Statement: r28 = $r27 
 ; Statement: if $r27 != null goto $z0 = virtualinvoke $r27.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: boolean isBullet()>() 
(assert (not (= var2968 null-var952))) ; Cond: $r27 != null 
(assert true)
(define-const var199 Bool (isBullet/2002197266 var2968)) ; Statement: $z0 = virtualinvoke $r27.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: boolean isBullet()>() 
 ; Statement: if $z0 == 0 goto $r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0) 
(assert (= (ite var199 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1401 Int (Int_valueOf/-1371140006 0)) ; Statement: $r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0) 
;(assert (var969_set/-1241329960 var987 var1989 (cast-from-Int-to-var1684 var1401))) ; Statement: interfaceinvoke r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>(i1, $r29) 

(declare-const var987!1 var969)
(declare-const var1989!1 Int)
(declare-const var1401!1 Int)
 ; Statement: return i17 
(check-sat)
(get-model)
(get-unsat-core)
; {_paragraphs/-1115286325=([org.apache.poi.xssf.usermodel.XSSFSimpleShape], java.util.List), var969_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var1684-to-var952=([java.lang.Object], org.apache.poi.xssf.usermodel.XSSFTextParagraph), getBulletAutoNumberStart/1466659731=([org.apache.poi.xssf.usermodel.XSSFTextParagraph], int), getBulletAutoNumberScheme/-937320043=([org.apache.poi.xssf.usermodel.XSSFTextParagraph], org.apache.poi.xssf.usermodel.ListAutoNumber), cast-from-var1684-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), getText/-1503445906=([org.apache.poi.xssf.usermodel.XSSFTextParagraph], java.lang.String), length/-134980193=([java.lang.String], int), var969_size/-959786421=([java.util.List], int), isBullet/2002197266=([org.apache.poi.xssf.usermodel.XSSFTextParagraph], boolean), Int_valueOf/-1371140006=([int], java.lang.Integer), var969_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), cast-from-Int-to-var1684=([java.lang.Integer], java.lang.Object)}
; {var3451=org.apache.poi.xssf.usermodel.XSSFSimpleShape, var3950=r0, var1533=i17, var1989=i1, var969=java.util.List, var987=r5, var2806=r12, var324=$r1, var1684=java.lang.Object, var1613=$r2, var952=org.apache.poi.xssf.usermodel.XSSFTextParagraph, var3987=r3, var2754=i0, var3262=org.apache.poi.xssf.usermodel.ListAutoNumber, var364=r4, var2827=$r6, var2156=$r7, var2905=$i2, var3722=i19, var1567=$r8, var3042=$i3, var3371=$i20, var2901=$r26, var1064=$i21, var2190=$r9, var375=$i4, var167=$r10, var2968=$r27, var1552=r28, var199=$z0, var1401=$r29}
; {org.apache.poi.xssf.usermodel.XSSFSimpleShape=var3451, r0=var3950, i17=var1533, i1=var1989, java.util.List=var969, r5=var987, r12=var2806, $r1=var324, java.lang.Object=var1684, $r2=var1613, org.apache.poi.xssf.usermodel.XSSFTextParagraph=var952, r3=var3987, i0=var2754, org.apache.poi.xssf.usermodel.ListAutoNumber=var3262, r4=var364, $r6=var2827, $r7=var2156, $i2=var2905, i19=var3722, $r8=var1567, $i3=var3042, $i20=var3371, $r26=var2901, $i21=var1064, $r9=var2190, $i4=var375, $r10=var167, $r27=var2968, r28=var1552, $z0=var199, $r29=var1401}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape;	i17 := @parameter0: int;	i1 := @parameter1: int;	r5 := @parameter2: java.util.List;	r12 := @parameter3: java.lang.StringBuilder;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs>;	$r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(i17);	r3 = (org.apache.poi.xssf.usermodel.XSSFTextParagraph) $r2;	i0 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: int getBulletAutoNumberStart()>();	r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: org.apache.poi.xssf.usermodel.ListAutoNumber getBulletAutoNumberScheme()>();	$r6 = interfaceinvoke r5.<java.util.List: java.lang.Object get(int)>(i1);	$r7 = (java.lang.Integer) $r6;	$i2 = virtualinvoke $r7.<java.lang.Integer: int intValue()>();	if $i2 != 0 goto i19 = 0;	i19 = 0;	if i19 >= i1 goto $r8 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>();	$r8 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>();	$i3 = virtualinvoke $r8.<java.lang.String: int length()>();	if $i3 <= 0 goto $i20 = i17 + 1;	$i20 = i17 + 1;	$r26 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs>;	$i21 = interfaceinvoke $r26.<java.util.List: int size()>();	if $i20 != $i21 goto $r9 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs>;	$r9 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs>;	$i4 = i17 + 1;	$r10 = interfaceinvoke $r9.<java.util.List: java.lang.Object get(int)>($i4);	$r27 = (org.apache.poi.xssf.usermodel.XSSFTextParagraph) $r10;	r28 = $r27;	if $r27 != null goto $z0 = virtualinvoke $r27.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: boolean isBullet()>();	$z0 = virtualinvoke $r27.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: boolean isBullet()>();	if $z0 == 0 goto $r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0);	$r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0);	interfaceinvoke r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>(i1, $r29);	return i17
;block_num 9