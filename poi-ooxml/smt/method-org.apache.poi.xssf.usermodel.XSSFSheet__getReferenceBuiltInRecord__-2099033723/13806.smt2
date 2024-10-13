(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1430 0)
(declare-sort var1326 0)
(declare-sort var2076 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1326-init () var1326)
(declare-fun <init>/-949075851 (var1326 String Int Int Bool Bool) void)
(declare-fun var2076_format/1746937582 (String) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getCellRefParts/105673054 (var1326) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1978 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1978 null-String)))
(declare-const var956 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var956 null-Int)))
(declare-const var877 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var877 null-Int)))
(declare-const var394 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var394 null-Int)))
(declare-const var2662 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var2662 null-Int)))
(define-const var3727 var1326 var1326-init) ; Statement: $r30 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var3727 var1978 0 var956 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1) 

(declare-const var3727!1 var1326)
(declare-const var1978!1 String)
(declare-const var1322 Int)
(declare-const var956!1 Int)
(declare-const var2962 Int)
(declare-const var2962!1 Int)
(define-const var743 var1326 var1326-init) ; Statement: $r31 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var743 var1978!1 0 var877 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1) 

(declare-const var743!1 var1326)
(declare-const var1978!2 String)
(declare-const var1322!1 Int)
(declare-const var877!1 Int)
(declare-const var2962!2 Int)
(declare-const var2962!3 Int)
(define-const var1245 var1326 var1326-init) ; Statement: $r32 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var1245 var1978!2 var394 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1) 

(declare-const var1245!1 var1326)
(declare-const var1978!3 String)
(declare-const var394!1 Int)
(declare-const var1322!2 Int)
(declare-const var2962!4 Int)
(declare-const var2962!5 Int)
(define-const var286 var1326 var1326-init) ; Statement: $r33 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var286 var1978!3 var2662 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1) 

(declare-const var286!1 var1326)
(declare-const var1978!4 String)
(declare-const var2662!1 Int)
(declare-const var1322!3 Int)
(declare-const var2962!6 Int)
(declare-const var2962!7 Int)
(define-const var3730 String (var2076_format/1746937582 var1978!4)) ; Statement: r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1) 
(define-const var1065 String "") ; Statement: r26 = "" 
(define-const var3485 String "") ; Statement: r27 = "" 
(define-const var2773 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (not (= var956!1 var2773)))) ; Negate: Cond: i0 != $i7  
(define-const var3248 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i1 == $i9 goto $i11 = (int) -1 
(assert (= var877!1 var3248)) ; Cond: i1 == $i9 
(define-const var1872 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (= var394!1 var1872))) ; Cond: i2 != $i11 
(assert true)
(define-const var841 (Array Int String) (getCellRefParts/105673054 var1245!1)) ; Statement: $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var3078 String (select var841 1)) ; Statement: $r22 = $r14[1] 
(assert true)
(define-const var43 (Array Int String) (getCellRefParts/105673054 var286!1)) ; Statement: $r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var2320 String (select var43 1)) ; Statement: $r23 = $r15[1] 
(assert true)
(define-const var3030 Bool (= var3078 "0")) ; Statement: $z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0") 
 ; Statement: if $z0 != 0 goto $r36 = new java.lang.StringBuilder 
(assert (not (not (= (ite var3030 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var3009 Bool (= var2320 "0")) ; Statement: $z1 = virtualinvoke $r23.<java.lang.String: boolean equals(java.lang.Object)>("0") 
 ; Statement: if $z1 != 0 goto $r36 = new java.lang.StringBuilder 
(assert (not (= (ite var3009 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3095 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3095)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3095!1 String)
(assert (= var3095!1 ""))
(assert true)
;(assert (append/672562846 var3095!1 var1065)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var3095!2 String)
(assert (= var3095!2 (str.++ var3095!1 var1065)))
(assert true)
(define-const var3702 Int (length/-171891354 var3095!2)) ; Statement: $i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (<= var3702 0)) ; Cond: $i5 <= 0 
(assert true)
;(assert (append/672562846 var3095!2 var3485)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var3095!3 String)
(assert (= var3095!3 (str.++ var3095!2 var3485)))
(assert true)
(define-const var3722 String (toString/-2075883882 var3095!3)) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var1326-init=([], org.apache.poi.ss.util.CellReference), <init>/-949075851=([org.apache.poi.ss.util.CellReference, java.lang.String, int, int, boolean, boolean], void), var2076_format/1746937582=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([int], int), getCellRefParts/105673054=([org.apache.poi.ss.util.CellReference], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1978=r1, var1430=null_type, var956=i0, var877=i1, var394=i2, var2662=i3, var1326=org.apache.poi.ss.util.CellReference, var3727=$r30, var1322=0, var2962=1, var743=$r31, var1245=$r32, var286=$r33, var2076=org.apache.poi.ss.formula.SheetNameFormatter, var3730=r5, var1065=r26, var3485=r27, var2773=$i7, var3248=$i9, var1872=$i11, var841=$r14, var3078=$r22, var43=$r15, var2320=$r23, var3030=$z0, var3009=$z1, var3095=$r36, var3702=$i5, var3722=$r29}
; {r1=var1978, null_type=var1430, i0=var956, i1=var877, i2=var394, i3=var2662, org.apache.poi.ss.util.CellReference=var1326, $r30=var3727, 0=var1322, 1=var2962, $r31=var743, $r32=var1245, $r33=var286, org.apache.poi.ss.formula.SheetNameFormatter=var2076, r5=var3730, r26=var1065, r27=var3485, $i7=var2773, $i9=var3248, $i11=var1872, $r14=var841, $r22=var3078, $r15=var43, $r23=var2320, $z0=var3030, $z1=var3009, $r36=var3095, $i5=var3702, $r29=var3722}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	$r30 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1);	$r31 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1);	$r32 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1);	$r33 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1);	r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1);	r26 = "";	r27 = "";	$i7 = (int) -1;	if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$i9 = (int) -1;	if i1 == $i9 goto $i11 = (int) -1;	$i11 = (int) -1;	if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r22 = $r14[1];	$r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r23 = $r15[1];	$z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0");	if $z0 != 0 goto $r36 = new java.lang.StringBuilder;	$z1 = virtualinvoke $r23.<java.lang.String: boolean equals(java.lang.Object)>("0");	if $z1 != 0 goto $r36 = new java.lang.StringBuilder;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>();	if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	return $r29
;block_num 7