(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3611 0)
(declare-sort var408 0)
(declare-sort var501 0)
(declare-sort var1824 0)
(declare-sort var1371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _paragraphs/-1115286325 (var3611) var408)
(declare-fun var408_get/-1216255739 (var408 Int) var501)
(declare-fun cast-from-var501-to-var1824 (var501) var1824)
(declare-fun getBulletAutoNumberStart/1466659731 (var1824) Int)
(declare-fun getBulletAutoNumberScheme/-937320043 (var1824) var1371)
(declare-fun cast-from-var501-to-Int (var501) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun getText/-1503445906 (var1824) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var408_size/-959786421 (var408) Int)
(declare-fun isBullet/2002197266 (var1824) Bool)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var408_set/-1241329960 (var408 Int var501) var501)
(declare-fun cast-from-Int-to-var501 (Int) var501)
(declare-const null-var3611 var3611)
(declare-const null-Int Int)
(declare-const null-var408 var408)
(declare-const null-String String)
(declare-const null-var1824 var1824)
(declare-const var240 var3611) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape 
(assert (not (= var240 null-var3611)))
(declare-const var1948 Int) ; Statement: i17 := @parameter0: int 
(assert (not (= var1948 null-Int)))
(declare-const var177 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var177 null-Int)))
(declare-const var1690 var408) ; Statement: r5 := @parameter2: java.util.List 
(assert (not (= var1690 null-var408)))
(declare-const var2282 String) ; Statement: r12 := @parameter3: java.lang.StringBuilder 
(assert (not (= var2282 null-String)))
(define-const var1309 var408 (_paragraphs/-1115286325 var240)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs> 
(define-const var913 var501 (var408_get/-1216255739 var1309 var1948)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(i17) 
(define-const var1611 var1824 (cast-from-var501-to-var1824 var913)) ; Statement: r3 = (org.apache.poi.xssf.usermodel.XSSFTextParagraph) $r2 
(assert true)
(define-const var391 Int (getBulletAutoNumberStart/1466659731 var1611)) ; Statement: i0 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: int getBulletAutoNumberStart()>() 
(assert true)
(define-const var102 var1371 (getBulletAutoNumberScheme/-937320043 var1611)) ; Statement: r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: org.apache.poi.xssf.usermodel.ListAutoNumber getBulletAutoNumberScheme()>() 
(define-const var3500 var501 (var408_get/-1216255739 var1690 var177)) ; Statement: $r6 = interfaceinvoke r5.<java.util.List: java.lang.Object get(int)>(i1) 
(define-const var1969 Int (cast-from-var501-to-Int var3500)) ; Statement: $r7 = (java.lang.Integer) $r6 
(assert true)
(define-const var2190 Int (intValue/-1815674922 var1969)) ; Statement: $i2 = virtualinvoke $r7.<java.lang.Integer: int intValue()>() 
 ; Statement: if $i2 != 0 goto i19 = 0 
(assert (not (= var2190 0))) ; Cond: $i2 != 0 
(define-const var1004 Int 0) ; Statement: i19 = 0 
(assert true) ; Non Conditional
 ; Statement: if i19 >= i1 goto $r8 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>() 
(assert (>= var1004 var177)) ; Cond: i19 >= i1 
(assert true)
(define-const var737 String (getText/-1503445906 var1611)) ; Statement: $r8 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>() 
(assert true)
(define-const var3385 Int (length/-134980193 var737)) ; Statement: $i3 = virtualinvoke $r8.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= 0 goto $i20 = i17 + 1 
(assert (<= var3385 0)) ; Cond: $i3 <= 0 
(define-const var3061 Int (+ var1948 1)) ; Statement: $i20 = i17 + 1 
(define-const var3638 var408 (_paragraphs/-1115286325 var240)) ; Statement: $r26 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs> 
(define-const var3360 Int (var408_size/-959786421 var3638)) ; Statement: $i21 = interfaceinvoke $r26.<java.util.List: int size()>() 
 ; Statement: if $i20 != $i21 goto $r9 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs> 
(assert (not (not (= var3061 var3360)))) ; Negate: Cond: $i20 != $i21  
(define-const var3573 var1824 null-var1824) ; Statement: $r27 = null 
 ; Statement: goto [?= r28 = $r27] 
(assert true) ; Non Conditional
(define-const var642 var1824 var3573) ; Statement: r28 = $r27 
 ; Statement: if $r27 != null goto $z0 = virtualinvoke $r27.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: boolean isBullet()>() 
(assert (not (= var3573 null-var1824))) ; Cond: $r27 != null 
(assert true)
(define-const var984 Bool (isBullet/2002197266 var3573)) ; Statement: $z0 = virtualinvoke $r27.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: boolean isBullet()>() 
 ; Statement: if $z0 == 0 goto $r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0) 
(assert (= (ite var984 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3166 Int (Int_valueOf/-1371140006 0)) ; Statement: $r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0) 
;(assert (var408_set/-1241329960 var1690 var177 (cast-from-Int-to-var501 var3166))) ; Statement: interfaceinvoke r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>(i1, $r29) 

(declare-const var1690!1 var408)
(declare-const var177!1 Int)
(declare-const var3166!1 Int)
 ; Statement: return i17 
(check-sat)
(get-model)
(get-unsat-core)
; {_paragraphs/-1115286325=([org.apache.poi.xssf.usermodel.XSSFSimpleShape], java.util.List), var408_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var501-to-var1824=([java.lang.Object], org.apache.poi.xssf.usermodel.XSSFTextParagraph), getBulletAutoNumberStart/1466659731=([org.apache.poi.xssf.usermodel.XSSFTextParagraph], int), getBulletAutoNumberScheme/-937320043=([org.apache.poi.xssf.usermodel.XSSFTextParagraph], org.apache.poi.xssf.usermodel.ListAutoNumber), cast-from-var501-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), getText/-1503445906=([org.apache.poi.xssf.usermodel.XSSFTextParagraph], java.lang.String), length/-134980193=([java.lang.String], int), var408_size/-959786421=([java.util.List], int), isBullet/2002197266=([org.apache.poi.xssf.usermodel.XSSFTextParagraph], boolean), Int_valueOf/-1371140006=([int], java.lang.Integer), var408_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), cast-from-Int-to-var501=([java.lang.Integer], java.lang.Object)}
; {var3611=org.apache.poi.xssf.usermodel.XSSFSimpleShape, var240=r0, var1948=i17, var177=i1, var408=java.util.List, var1690=r5, var2282=r12, var1309=$r1, var501=java.lang.Object, var913=$r2, var1824=org.apache.poi.xssf.usermodel.XSSFTextParagraph, var1611=r3, var391=i0, var1371=org.apache.poi.xssf.usermodel.ListAutoNumber, var102=r4, var3500=$r6, var1969=$r7, var2190=$i2, var1004=i19, var737=$r8, var3385=$i3, var3061=$i20, var3638=$r26, var3360=$i21, var3573=$r27, var642=r28, var984=$z0, var3166=$r29}
; {org.apache.poi.xssf.usermodel.XSSFSimpleShape=var3611, r0=var240, i17=var1948, i1=var177, java.util.List=var408, r5=var1690, r12=var2282, $r1=var1309, java.lang.Object=var501, $r2=var913, org.apache.poi.xssf.usermodel.XSSFTextParagraph=var1824, r3=var1611, i0=var391, org.apache.poi.xssf.usermodel.ListAutoNumber=var1371, r4=var102, $r6=var3500, $r7=var1969, $i2=var2190, i19=var1004, $r8=var737, $i3=var3385, $i20=var3061, $r26=var3638, $i21=var3360, $r27=var3573, r28=var642, $z0=var984, $r29=var3166}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape;	i17 := @parameter0: int;	i1 := @parameter1: int;	r5 := @parameter2: java.util.List;	r12 := @parameter3: java.lang.StringBuilder;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs>;	$r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(i17);	r3 = (org.apache.poi.xssf.usermodel.XSSFTextParagraph) $r2;	i0 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: int getBulletAutoNumberStart()>();	r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: org.apache.poi.xssf.usermodel.ListAutoNumber getBulletAutoNumberScheme()>();	$r6 = interfaceinvoke r5.<java.util.List: java.lang.Object get(int)>(i1);	$r7 = (java.lang.Integer) $r6;	$i2 = virtualinvoke $r7.<java.lang.Integer: int intValue()>();	if $i2 != 0 goto i19 = 0;	i19 = 0;	if i19 >= i1 goto $r8 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>();	$r8 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>();	$i3 = virtualinvoke $r8.<java.lang.String: int length()>();	if $i3 <= 0 goto $i20 = i17 + 1;	$i20 = i17 + 1;	$r26 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs>;	$i21 = interfaceinvoke $r26.<java.util.List: int size()>();	if $i20 != $i21 goto $r9 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs>;	$r27 = null;	goto [?= r28 = $r27];	r28 = $r27;	if $r27 != null goto $z0 = virtualinvoke $r27.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: boolean isBullet()>();	$z0 = virtualinvoke $r27.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: boolean isBullet()>();	if $z0 == 0 goto $r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0);	$r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0);	interfaceinvoke r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>(i1, $r29);	return i17
;block_num 9