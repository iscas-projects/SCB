(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1461 0)
(declare-sort var1475 0)
(declare-sort var1911 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1475-init () var1475)
(declare-fun <init>/-949075851 (var1475 String Int Int Bool Bool) void)
(declare-fun var1911_format/1746937582 (String) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var498 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var498 null-String)))
(declare-const var1771 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1771 null-Int)))
(declare-const var1529 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1529 null-Int)))
(declare-const var2616 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var2616 null-Int)))
(declare-const var3729 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var3729 null-Int)))
(define-const var1211 var1475 var1475-init) ; Statement: $r30 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var1211 var498 0 var1771 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1) 

(declare-const var1211!1 var1475)
(declare-const var498!1 String)
(declare-const var1444 Int)
(declare-const var1771!1 Int)
(declare-const var527 Int)
(declare-const var527!1 Int)
(define-const var1921 var1475 var1475-init) ; Statement: $r31 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var1921 var498!1 0 var1529 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1) 

(declare-const var1921!1 var1475)
(declare-const var498!2 String)
(declare-const var1444!1 Int)
(declare-const var1529!1 Int)
(declare-const var527!2 Int)
(declare-const var527!3 Int)
(define-const var2031 var1475 var1475-init) ; Statement: $r32 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var2031 var498!2 var2616 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1) 

(declare-const var2031!1 var1475)
(declare-const var498!3 String)
(declare-const var2616!1 Int)
(declare-const var1444!2 Int)
(declare-const var527!4 Int)
(declare-const var527!5 Int)
(define-const var2354 var1475 var1475-init) ; Statement: $r33 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var2354 var498!3 var3729 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1) 

(declare-const var2354!1 var1475)
(declare-const var498!4 String)
(declare-const var3729!1 Int)
(declare-const var1444!3 Int)
(declare-const var527!6 Int)
(declare-const var527!7 Int)
(define-const var1238 String (var1911_format/1746937582 var498!4)) ; Statement: r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1) 
(define-const var826 String "") ; Statement: r26 = "" 
(define-const var2580 String "") ; Statement: r27 = "" 
(define-const var507 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (not (= var1771!1 var507)))) ; Negate: Cond: i0 != $i7  
(define-const var3773 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i1 == $i9 goto $i11 = (int) -1 
(assert (= var1529!1 var3773)) ; Cond: i1 == $i9 
(define-const var600 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (not (= var2616!1 var600)))) ; Negate: Cond: i2 != $i11  
(define-const var2477 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i3 == $i13 goto $r36 = new java.lang.StringBuilder 
(assert (= var3729!1 var2477)) ; Cond: i3 == $i13 
(define-const var427 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var427)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var427!1 String)
(assert (= var427!1 ""))
(assert true)
;(assert (append/672562846 var427!1 var826)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var427!2 String)
(assert (= var427!2 (str.++ var427!1 var826)))
(assert true)
(define-const var875 Int (length/-171891354 var427!2)) ; Statement: $i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (<= var875 0)) ; Cond: $i5 <= 0 
(assert true)
;(assert (append/672562846 var427!2 var2580)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var427!3 String)
(assert (= var427!3 (str.++ var427!2 var2580)))
(assert true)
(define-const var58 String (toString/-2075883882 var427!3)) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var1475-init=([], org.apache.poi.ss.util.CellReference), <init>/-949075851=([org.apache.poi.ss.util.CellReference, java.lang.String, int, int, boolean, boolean], void), var1911_format/1746937582=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var498=r1, var1461=null_type, var1771=i0, var1529=i1, var2616=i2, var3729=i3, var1475=org.apache.poi.ss.util.CellReference, var1211=$r30, var1444=0, var527=1, var1921=$r31, var2031=$r32, var2354=$r33, var1911=org.apache.poi.ss.formula.SheetNameFormatter, var1238=r5, var826=r26, var2580=r27, var507=$i7, var3773=$i9, var600=$i11, var2477=$i13, var427=$r36, var875=$i5, var58=$r29}
; {r1=var498, null_type=var1461, i0=var1771, i1=var1529, i2=var2616, i3=var3729, org.apache.poi.ss.util.CellReference=var1475, $r30=var1211, 0=var1444, 1=var527, $r31=var1921, $r32=var2031, $r33=var2354, org.apache.poi.ss.formula.SheetNameFormatter=var1911, r5=var1238, r26=var826, r27=var2580, $i7=var507, $i9=var3773, $i11=var600, $i13=var2477, $r36=var427, $i5=var875, $r29=var58}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	$r30 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1);	$r31 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1);	$r32 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1);	$r33 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1);	r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1);	r26 = "";	r27 = "";	$i7 = (int) -1;	if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$i9 = (int) -1;	if i1 == $i9 goto $i11 = (int) -1;	$i11 = (int) -1;	if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$i13 = (int) -1;	if i3 == $i13 goto $r36 = new java.lang.StringBuilder;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>();	if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	return $r29
;block_num 6