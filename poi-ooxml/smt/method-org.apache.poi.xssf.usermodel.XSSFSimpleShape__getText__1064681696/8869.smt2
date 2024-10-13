(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2046 0)
(declare-sort var1184 0)
(declare-sort var858 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1184-init () var1184)
(declare-fun <init>/1228603609 (var1184 Int) void)
(declare-fun _paragraphs/-1115286325 (var2046) var858)
(declare-fun var858_size/-959786421 (var858) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2046 var2046)
(declare-const var772 var2046) ; Statement: r2 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape 
(assert (not (= var772 null-var2046)))
(define-const var2105 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2105)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2105!1 String)
(assert (= var2105!1 ""))
(define-const var468 var1184 var1184-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/1228603609 var468 9)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>(int)>(9) 

(declare-const var468!1 var1184)
(declare-const var3403 Int)
(define-const var2426 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= 9 goto i6 = 0 
(assert (>= var2426 9)) ; Cond: i5 >= 9 
(define-const var3066 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var3340 var858 (_paragraphs/-1115286325 var772)) ; Statement: $r3 = r2.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs> 
(define-const var1382 Int (var858_size/-959786421 var3340)) ; Statement: $i0 = interfaceinvoke $r3.<java.util.List: int size()>() 
 ; Statement: if i6 >= $i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3066 var1382)) ; Cond: i6 >= $i0 
(assert true)
(define-const var1763 String (toString/-2075883882 var2105!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1184-init=([], java.util.ArrayList), <init>/1228603609=([java.util.ArrayList, int], void), _paragraphs/-1115286325=([org.apache.poi.xssf.usermodel.XSSFSimpleShape], java.util.List), var858_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2046=org.apache.poi.xssf.usermodel.XSSFSimpleShape, var772=r2, var2105=$r0, var1184=java.util.ArrayList, var468=$r1, var3403=9, var2426=i5, var3066=i6, var858=java.util.List, var3340=$r3, var1382=$i0, var1763=$r4}
; {org.apache.poi.xssf.usermodel.XSSFSimpleShape=var2046, r2=var772, $r0=var2105, java.util.ArrayList=var1184, $r1=var468, 9=var3403, i5=var2426, i6=var3066, java.util.List=var858, $r3=var3340, $i0=var1382, $r4=var1763}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.poi.xssf.usermodel.XSSFSimpleShape;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>(int)>(9);	i5 = 0;	if i5 >= 9 goto i6 = 0;	i6 = 0;	$r3 = r2.<org.apache.poi.xssf.usermodel.XSSFSimpleShape: java.util.List _paragraphs>;	$i0 = interfaceinvoke $r3.<java.util.List: int size()>();	if i6 >= $i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 5