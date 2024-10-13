(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var707 0)
(declare-sort var819 0)
(declare-sort var1479 0)
(declare-sort var798 0)
(declare-sort var95 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _paragraphs/-1115286325 (var707) var819)
(declare-fun var819_get/-1216255739 (var819 Int) var1479)
(declare-fun cast-from-var1479-to-var798 (var1479) var798)
(declare-fun getBulletAutoNumberStart/1466659731 (var798) Int)
(declare-fun getBulletAutoNumberScheme/-937320043 (var798) var95)
(declare-fun cast-from-var1479-to-Int (var1479) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun getText/-1503445906 (var798) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var819_size/-959786421 (var819) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var819_set/-1241329960 (var819 Int var1479) var1479)
(declare-fun cast-from-Int-to-var1479 (Int) var1479)
(declare-const null-var707 var707)
(declare-const null-Int Int)
(declare-const null-var819 var819)
(declare-const null-String String)
(declare-const null-var798 var798)
(declare-const var3776 var707) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape 
(assert (not (= var3776 null-var707)))
(declare-const var1696 Int) ; Statement: i17 := @parameter0: int 
(assert (not (= var1696 null-Int)))
(declare-const var2408 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2408 null-Int)))
(declare-const var3858 var819) ; Statement: r5 := @parameter2: java.util.List 
(assert (not (= var3858 null-var819)))
(declare-const var2081 String) ; Statement: r12 := @parameter3: java.lang.StringBuilder 
(assert (not (= var2081 null-String)))
(define-const var1309 var819 (_paragraphs/-1115286325 var3776)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs> 
(define-const var2159 var1479 (var819_get/-1216255739 var1309 var1696)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(i17) 
(define-const var3230 var798 (cast-from-var1479-to-var798 var2159)) ; Statement: r3 = (org.apache.poi.xssf.usermodel.XSSFTextParagraph) $r2 
(assert true)
(define-const var1222 Int (getBulletAutoNumberStart/1466659731 var3230)) ; Statement: i0 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: int getBulletAutoNumberStart()>() 
(assert true)
(define-const var2157 var95 (getBulletAutoNumberScheme/-937320043 var3230)) ; Statement: r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: org.apache.poi.xssf.usermodel.ListAutoNumber getBulletAutoNumberScheme()>() 
(define-const var3244 var1479 (var819_get/-1216255739 var3858 var2408)) ; Statement: $r6 = interfaceinvoke r5.<java.util.List: java.lang.Object get(int)>(i1) 
(define-const var1846 Int (cast-from-var1479-to-Int var3244)) ; Statement: $r7 = (java.lang.Integer) $r6 
(assert true)
(define-const var414 Int (intValue/-1815674922 var1846)) ; Statement: $i2 = virtualinvoke $r7.<java.lang.Integer: int intValue()>() 
 ; Statement: if $i2 != 0 goto i19 = 0 
(assert (not (= var414 0))) ; Cond: $i2 != 0 
(define-const var3498 Int 0) ; Statement: i19 = 0 
(assert true) ; Non Conditional
 ; Statement: if i19 >= i1 goto $r8 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>() 
(assert (>= var3498 var2408)) ; Cond: i19 >= i1 
(assert true)
(define-const var3817 String (getText/-1503445906 var3230)) ; Statement: $r8 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>() 
(assert true)
(define-const var442 Int (length/-134980193 var3817)) ; Statement: $i3 = virtualinvoke $r8.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= 0 goto $i20 = i17 + 1 
(assert (<= var442 0)) ; Cond: $i3 <= 0 
(define-const var3631 Int (+ var1696 1)) ; Statement: $i20 = i17 + 1 
(define-const var616 var819 (_paragraphs/-1115286325 var3776)) ; Statement: $r26 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs> 
(define-const var3475 Int (var819_size/-959786421 var616)) ; Statement: $i21 = interfaceinvoke $r26.<java.util.List: int size()>() 
 ; Statement: if $i20 != $i21 goto $r9 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs> 
(assert (not (= var3631 var3475))) ; Cond: $i20 != $i21 
(define-const var1484 var819 (_paragraphs/-1115286325 var3776)) ; Statement: $r9 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs> 
(define-const var1664 Int (+ var1696 1)) ; Statement: $i4 = i17 + 1 
(define-const var3148 var1479 (var819_get/-1216255739 var1484 var1664)) ; Statement: $r10 = interfaceinvoke $r9.<java.util.List: java.lang.Object get(int)>($i4) 
(define-const var2114 var798 (cast-from-var1479-to-var798 var3148)) ; Statement: $r27 = (org.apache.poi.xssf.usermodel.XSSFTextParagraph) $r10 
(assert true) ; Non Conditional
(define-const var3359 var798 var2114) ; Statement: r28 = $r27 
 ; Statement: if $r27 != null goto $z0 = virtualinvoke $r27.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: boolean isBullet()>() 
(assert (not (not (= var2114 null-var798)))) ; Negate: Cond: $r27 != null  
 ; Statement: goto [?= $r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0)] 
(assert true) ; Non Conditional
(define-const var2475 Int (Int_valueOf/-1371140006 0)) ; Statement: $r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0) 
;(assert (var819_set/-1241329960 var3858 var2408 (cast-from-Int-to-var1479 var2475))) ; Statement: interfaceinvoke r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>(i1, $r29) 

(declare-const var3858!1 var819)
(declare-const var2408!1 Int)
(declare-const var2475!1 Int)
 ; Statement: return i17 
(check-sat)
(get-model)
(get-unsat-core)
; {_paragraphs/-1115286325=([org.apache.poi.xssf.usermodel.XSSFSimpleShape], java.util.List), var819_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var1479-to-var798=([java.lang.Object], org.apache.poi.xssf.usermodel.XSSFTextParagraph), getBulletAutoNumberStart/1466659731=([org.apache.poi.xssf.usermodel.XSSFTextParagraph], int), getBulletAutoNumberScheme/-937320043=([org.apache.poi.xssf.usermodel.XSSFTextParagraph], org.apache.poi.xssf.usermodel.ListAutoNumber), cast-from-var1479-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), getText/-1503445906=([org.apache.poi.xssf.usermodel.XSSFTextParagraph], java.lang.String), length/-134980193=([java.lang.String], int), var819_size/-959786421=([java.util.List], int), Int_valueOf/-1371140006=([int], java.lang.Integer), var819_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), cast-from-Int-to-var1479=([java.lang.Integer], java.lang.Object)}
; {var707=org.apache.poi.xssf.usermodel.XSSFSimpleShape, var3776=r0, var1696=i17, var2408=i1, var819=java.util.List, var3858=r5, var2081=r12, var1309=$r1, var1479=java.lang.Object, var2159=$r2, var798=org.apache.poi.xssf.usermodel.XSSFTextParagraph, var3230=r3, var1222=i0, var95=org.apache.poi.xssf.usermodel.ListAutoNumber, var2157=r4, var3244=$r6, var1846=$r7, var414=$i2, var3498=i19, var3817=$r8, var442=$i3, var3631=$i20, var616=$r26, var3475=$i21, var1484=$r9, var1664=$i4, var3148=$r10, var2114=$r27, var3359=r28, var2475=$r29}
; {org.apache.poi.xssf.usermodel.XSSFSimpleShape=var707, r0=var3776, i17=var1696, i1=var2408, java.util.List=var819, r5=var3858, r12=var2081, $r1=var1309, java.lang.Object=var1479, $r2=var2159, org.apache.poi.xssf.usermodel.XSSFTextParagraph=var798, r3=var3230, i0=var1222, org.apache.poi.xssf.usermodel.ListAutoNumber=var95, r4=var2157, $r6=var3244, $r7=var1846, $i2=var414, i19=var3498, $r8=var3817, $i3=var442, $i20=var3631, $r26=var616, $i21=var3475, $r9=var1484, $i4=var1664, $r10=var3148, $r27=var2114, r28=var3359, $r29=var2475}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape;	i17 := @parameter0: int;	i1 := @parameter1: int;	r5 := @parameter2: java.util.List;	r12 := @parameter3: java.lang.StringBuilder;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs>;	$r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(i17);	r3 = (org.apache.poi.xssf.usermodel.XSSFTextParagraph) $r2;	i0 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: int getBulletAutoNumberStart()>();	r4 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: org.apache.poi.xssf.usermodel.ListAutoNumber getBulletAutoNumberScheme()>();	$r6 = interfaceinvoke r5.<java.util.List: java.lang.Object get(int)>(i1);	$r7 = (java.lang.Integer) $r6;	$i2 = virtualinvoke $r7.<java.lang.Integer: int intValue()>();	if $i2 != 0 goto i19 = 0;	i19 = 0;	if i19 >= i1 goto $r8 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>();	$r8 = virtualinvoke r3.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>();	$i3 = virtualinvoke $r8.<java.lang.String: int length()>();	if $i3 <= 0 goto $i20 = i17 + 1;	$i20 = i17 + 1;	$r26 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs>;	$i21 = interfaceinvoke $r26.<java.util.List: int size()>();	if $i20 != $i21 goto $r9 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs>;	$r9 = r0.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs>;	$i4 = i17 + 1;	$r10 = interfaceinvoke $r9.<java.util.List: java.lang.Object get(int)>($i4);	$r27 = (org.apache.poi.xssf.usermodel.XSSFTextParagraph) $r10;	r28 = $r27;	if $r27 != null goto $z0 = virtualinvoke $r27.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: boolean isBullet()>();	goto [?= $r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0)];	$r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0);	interfaceinvoke r5.<java.util.List: java.lang.Object set(int,java.lang.Object)>(i1, $r29);	return i17
;block_num 9