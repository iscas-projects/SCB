(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3955 0)
(declare-sort var2682 0)
(declare-sort var3285 0)
(declare-sort var1827 0)
(declare-sort var2986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _paragraphs/-1115286325 (var3955) var2682)
(declare-fun var2682_get/-1216255739 (var2682 Int) var3285)
(declare-fun cast-from-var3285-to-var1827 (var3285) var1827)
(declare-fun getBulletAutoNumberStart/1466659731 (var1827) Int)
(declare-fun getBulletAutoNumberScheme/-937320043 (var1827) var2986)
(declare-fun cast-from-var3285-to-Int (var3285) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun getText/-1503445906 (var1827) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2682_size/-959786421 (var2682) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var2682_set/-1241329960 (var2682 Int var3285) var3285)
(declare-fun cast-from-Int-to-var3285 (Int) var3285)
(declare-const null-var3955 var3955)
(declare-const null-Int Int)
(declare-const null-var2682 var2682)
(declare-const null-String String)
(declare-const null-var1827 var1827)
(declare-const var3727 var3955) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape 
(assert (not (= var3727 null-var3955)))
(declare-const var675 Int) ; Statement: i17 := @parameter0: int 
(assert (not (= var675 null-Int)))
(declare-const var3737 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3737 null-Int)))
(declare-const var2202 var2682) ; Statement: r5 := @parameter2: java.util.List 
(assert (not (= var2202 null-var2682)))
(declare-const var127 String) ; Statement: r12 := @parameter3: java.lang.StringBuilder 
(assert (not (= var127 null-String)))
(define-const var1539 var2682 (_paragraphs/-1115286325 var3727)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs> 
(define-const var2732 var3285 (var2682_get/-1216255739 var1539 var675)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(i17) 
(define-const var3518 var1827 (cast-from-var3285-to-var1827 var2732)) ; Statement: r3 = (org.apache.poi.xssf.usermodel.XSSFTextParagraph) $r2 
(assert true)
(define-const var2867 Int (getBulletAutoNumberStart/1466659731 var3518)) ; Statement: i0 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: int getBulletAutoNumberStart()>() 
(assert true)
(define-const var2702 var2986 (getBulletAutoNumberScheme/-937320043 var3518)) ; Statement: r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: org.apache.poi.xssf.usermodel.ListAutoNumber getBulletAutoNumberScheme()>() 
(define-const var1061 var3285 (var2682_get/-1216255739 var2202 var3737)) ; Statement: $r6 = interfaceinvoke r5.<java.util.List: java.lang.Object get(int)>(i1) 
(define-const var1958 Int (cast-from-var3285-to-Int var1061)) ; Statement: $r7 = (java.lang.Integer) $r6 
(assert true)
(define-const var972 Int (intValue/-1815674922 var1958)) ; Statement: $i2 = virtualinvoke $r7.<java.lang.Integer: int intValue()>() 
 ; Statement: if $i2 != 0 goto i19 = 0 
(assert (not (= var972 0))) ; Cond: $i2 != 0 
(define-const var2091 Int 0) ; Statement: i19 = 0 
(assert true) ; Non Conditional
 ; Statement: if i19 >= i1 goto $r8 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>() 
(assert (>= var2091 var3737)) ; Cond: i19 >= i1 
(assert true)
(define-const var2651 String (getText/-1503445906 var3518)) ; Statement: $r8 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>() 
(assert true)
(define-const var3918 Int (length/-134980193 var2651)) ; Statement: $i3 = virtualinvoke $r8.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= 0 goto $i20 = i17 + 1 
(assert (<= var3918 0)) ; Cond: $i3 <= 0 
(define-const var3636 Int (+ var675 1)) ; Statement: $i20 = i17 + 1 
(define-const var306 var2682 (_paragraphs/-1115286325 var3727)) ; Statement: $r26 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs> 
(define-const var1610 Int (var2682_size/-959786421 var306)) ; Statement: $i21 = interfaceinvoke $r26.<java.util.List: int size()>() 
 ; Statement: if $i20 != $i21 goto $r9 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs> 
(assert (not (not (= var3636 var1610)))) ; Negate: Cond: $i20 != $i21  
(define-const var3511 var1827 null-var1827) ; Statement: $r27 = null 
 ; Statement: goto [?= r28 = $r27] 
(assert true) ; Non Conditional
(define-const var3769 var1827 var3511) ; Statement: r28 = $r27 
 ; Statement: if $r27 != null goto $z0 = virtualinvoke $r27.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: boolean isBullet()>() 
(assert (not (not (= var3511 null-var1827)))) ; Negate: Cond: $r27 != null  
 ; Statement: goto [?= $r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0)] 
(assert true) ; Non Conditional
(define-const var381 Int (Int_valueOf/-1371140006 0)) ; Statement: $r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0) 
;(assert (var2682_set/-1241329960 var2202 var3737 (cast-from-Int-to-var3285 var381))) ; Statement: interfaceinvoke r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>(i1, $r29) 

(declare-const var2202!1 var2682)
(declare-const var3737!1 Int)
(declare-const var381!1 Int)
 ; Statement: return i17 
(check-sat)
(get-model)
(get-unsat-core)
; {_paragraphs/-1115286325=([org.apache.poi.xssf.usermodel.XSSFSimpleShape], java.util.List), var2682_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var3285-to-var1827=([java.lang.Object], org.apache.poi.xssf.usermodel.XSSFTextParagraph), getBulletAutoNumberStart/1466659731=([org.apache.poi.xssf.usermodel.XSSFTextParagraph], int), getBulletAutoNumberScheme/-937320043=([org.apache.poi.xssf.usermodel.XSSFTextParagraph], org.apache.poi.xssf.usermodel.ListAutoNumber), cast-from-var3285-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), getText/-1503445906=([org.apache.poi.xssf.usermodel.XSSFTextParagraph], java.lang.String), length/-134980193=([java.lang.String], int), var2682_size/-959786421=([java.util.List], int), Int_valueOf/-1371140006=([int], java.lang.Integer), var2682_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), cast-from-Int-to-var3285=([java.lang.Integer], java.lang.Object)}
; {var3955=org.apache.poi.xssf.usermodel.XSSFSimpleShape, var3727=r0, var675=i17, var3737=i1, var2682=java.util.List, var2202=r5, var127=r12, var1539=$r1, var3285=java.lang.Object, var2732=$r2, var1827=org.apache.poi.xssf.usermodel.XSSFTextParagraph, var3518=r3, var2867=i0, var2986=org.apache.poi.xssf.usermodel.ListAutoNumber, var2702=r4, var1061=$r6, var1958=$r7, var972=$i2, var2091=i19, var2651=$r8, var3918=$i3, var3636=$i20, var306=$r26, var1610=$i21, var3511=$r27, var3769=r28, var381=$r29}
; {org.apache.poi.xssf.usermodel.XSSFSimpleShape=var3955, r0=var3727, i17=var675, i1=var3737, java.util.List=var2682, r5=var2202, r12=var127, $r1=var1539, java.lang.Object=var3285, $r2=var2732, org.apache.poi.xssf.usermodel.XSSFTextParagraph=var1827, r3=var3518, i0=var2867, org.apache.poi.xssf.usermodel.ListAutoNumber=var2986, r4=var2702, $r6=var1061, $r7=var1958, $i2=var972, i19=var2091, $r8=var2651, $i3=var3918, $i20=var3636, $r26=var306, $i21=var1610, $r27=var3511, r28=var3769, $r29=var381}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape;	i17 := @parameter0: int;	i1 := @parameter1: int;	r5 := @parameter2: java.util.List;	r12 := @parameter3: java.lang.StringBuilder;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs>;	$r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(i17);	r3 = (org.apache.poi.xssf.usermodel.XSSFTextParagraph) $r2;	i0 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: int getBulletAutoNumberStart()>();	r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: org.apache.poi.xssf.usermodel.ListAutoNumber getBulletAutoNumberScheme()>();	$r6 = interfaceinvoke r5.<java.util.List: java.lang.Object get(int)>(i1);	$r7 = (java.lang.Integer) $r6;	$i2 = virtualinvoke $r7.<java.lang.Integer: int intValue()>();	if $i2 != 0 goto i19 = 0;	i19 = 0;	if i19 >= i1 goto $r8 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>();	$r8 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>();	$i3 = virtualinvoke $r8.<java.lang.String: int length()>();	if $i3 <= 0 goto $i20 = i17 + 1;	$i20 = i17 + 1;	$r26 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs>;	$i21 = interfaceinvoke $r26.<java.util.List: int size()>();	if $i20 != $i21 goto $r9 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs>;	$r27 = null;	goto [?= r28 = $r27];	r28 = $r27;	if $r27 != null goto $z0 = virtualinvoke $r27.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: boolean isBullet()>();	goto [?= $r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0)];	$r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0);	interfaceinvoke r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>(i1, $r29);	return i17
;block_num 9