(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3900 0)
(declare-sort var398 0)
(declare-sort var1197 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var398-init () var398)
(declare-fun <init>/-949075851 (var398 String Int Int Bool Bool) void)
(declare-fun var1197_format/1746937582 (String) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getCellRefParts/105673054 (var398) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun length/-171891354 (String) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var462 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var462 null-String)))
(declare-const var112 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var112 null-Int)))
(declare-const var1072 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1072 null-Int)))
(declare-const var538 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var538 null-Int)))
(declare-const var1493 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var1493 null-Int)))
(define-const var3535 var398 var398-init) ; Statement: $r30 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var3535 var462 0 var112 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1) 

(declare-const var3535!1 var398)
(declare-const var462!1 String)
(declare-const var601 Int)
(declare-const var112!1 Int)
(declare-const var957 Int)
(declare-const var957!1 Int)
(define-const var2525 var398 var398-init) ; Statement: $r31 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var2525 var462!1 0 var1072 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1) 

(declare-const var2525!1 var398)
(declare-const var462!2 String)
(declare-const var601!1 Int)
(declare-const var1072!1 Int)
(declare-const var957!2 Int)
(declare-const var957!3 Int)
(define-const var426 var398 var398-init) ; Statement: $r32 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var426 var462!2 var538 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1) 

(declare-const var426!1 var398)
(declare-const var462!3 String)
(declare-const var538!1 Int)
(declare-const var601!2 Int)
(declare-const var957!4 Int)
(declare-const var957!5 Int)
(define-const var783 var398 var398-init) ; Statement: $r33 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var783 var462!3 var1493 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1) 

(declare-const var783!1 var398)
(declare-const var462!4 String)
(declare-const var1493!1 Int)
(declare-const var601!3 Int)
(declare-const var957!6 Int)
(declare-const var957!7 Int)
(define-const var3740 String (var1197_format/1746937582 var462!4)) ; Statement: r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1) 
(define-const var917 String "") ; Statement: r26 = "" 
(define-const var3075 String "") ; Statement: r27 = "" 
(define-const var2488 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (= var112!1 var2488))) ; Cond: i0 != $i7 
(assert true)
(define-const var3513 (Array Int String) (getCellRefParts/105673054 var3535!1)) ; Statement: $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var1013 String (select var3513 2)) ; Statement: $r24 = $r6[2] 
(assert true)
(define-const var128 (Array Int String) (getCellRefParts/105673054 var2525!1)) ; Statement: $r7 = virtualinvoke $r31.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var304 String (select var128 2)) ; Statement: $r25 = $r7[2] 
(define-const var1276 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1276)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1276!1 String)
(assert (= var1276!1 ""))
(assert true)
(define-const var3931 String (append/672562846 var1276!1 var3740)) ; Statement: $r9 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1276!2 String)
(assert (= var1276!2 (str.++ var1276!1 var3740)))
(assert true)
(define-const var3980 String (append/672562846 var3931 "!$")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!$") 
(declare-const var3931!1 String)
(assert (= var3931!1 (str.++ var3931 "!$")))
(assert true)
(define-const var3610 String (append/672562846 var3980 var1013)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var3980!1 String)
(assert (= var3980!1 (str.++ var3980 var1013)))
(assert true)
(define-const var566 String (append/672562846 var3610 ":$")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$") 
(declare-const var3610!1 String)
(assert (= var3610!1 (str.++ var3610 ":$")))
(assert true)
(define-const var764 String (append/672562846 var566 var304)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var566!1 String)
(assert (= var566!1 (str.++ var566 var304)))
(assert true)
(define-const var917!1 String (toString/-2075883882 var764)) ; Statement: r26 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1376 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (not (= var538!1 var1376)))) ; Negate: Cond: i2 != $i11  
(define-const var2692 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i3 == $i13 goto $r36 = new java.lang.StringBuilder 
(assert (not (= var1493!1 var2692))) ; Negate: Cond: i3 == $i13  
(assert true)
(define-const var681 (Array Int String) (getCellRefParts/105673054 var426!1)) ; Statement: $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var3988 String (select var681 1)) ; Statement: $r22 = $r14[1] 
(assert true)
(define-const var1497 (Array Int String) (getCellRefParts/105673054 var783!1)) ; Statement: $r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var2105 String (select var1497 1)) ; Statement: $r23 = $r15[1] 
(assert true)
(define-const var1123 Bool (= var3988 "0")) ; Statement: $z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0") 
 ; Statement: if $z0 != 0 goto $r36 = new java.lang.StringBuilder 
(assert (not (= (ite var1123 1 0) 0))) ; Cond: $z0 != 0 
(define-const var487 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var487)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var487!1 String)
(assert (= var487!1 ""))
(assert true)
;(assert (append/672562846 var487!1 var917!1)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var487!2 String)
(assert (= var487!2 (str.++ var487!1 var917!1)))
(assert true)
(define-const var124 Int (length/-171891354 var487!2)) ; Statement: $i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (<= var124 0)) ; Cond: $i5 <= 0 
(assert true)
;(assert (append/672562846 var487!2 var3075)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var487!3 String)
(assert (= var487!3 (str.++ var487!2 var3075)))
(assert true)
(define-const var1016 String (toString/-2075883882 var487!3)) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var398-init=([], org.apache.poi.ss.util.CellReference), <init>/-949075851=([org.apache.poi.ss.util.CellReference, java.lang.String, int, int, boolean, boolean], void), var1197_format/1746937582=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([int], int), getCellRefParts/105673054=([org.apache.poi.ss.util.CellReference], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-171891354=([java.lang.StringBuilder], int)}
; {var462=r1, var3900=null_type, var112=i0, var1072=i1, var538=i2, var1493=i3, var398=org.apache.poi.ss.util.CellReference, var3535=$r30, var601=0, var957=1, var2525=$r31, var426=$r32, var783=$r33, var1197=org.apache.poi.ss.formula.SheetNameFormatter, var3740=r5, var917=r26, var3075=r27, var2488=$i7, var3513=$r6, var1013=$r24, var128=$r7, var304=$r25, var1276=$r34, var3931=$r9, var3980=$r10, var3610=$r11, var566=$r12, var764=$r13, var1376=$i11, var2692=$i13, var681=$r14, var3988=$r22, var1497=$r15, var2105=$r23, var1123=$z0, var487=$r36, var124=$i5, var1016=$r29}
; {r1=var462, null_type=var3900, i0=var112, i1=var1072, i2=var538, i3=var1493, org.apache.poi.ss.util.CellReference=var398, $r30=var3535, 0=var601, 1=var957, $r31=var2525, $r32=var426, $r33=var783, org.apache.poi.ss.formula.SheetNameFormatter=var1197, r5=var3740, r26=var917, r27=var3075, $i7=var2488, $r6=var3513, $r24=var1013, $r7=var128, $r25=var304, $r34=var1276, $r9=var3931, $r10=var3980, $r11=var3610, $r12=var566, $r13=var764, $i11=var1376, $i13=var2692, $r14=var681, $r22=var3988, $r15=var1497, $r23=var2105, $z0=var1123, $r36=var487, $i5=var124, $r29=var1016}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	$r30 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1);	$r31 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1);	$r32 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1);	$r33 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1);	r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1);	r26 = "";	r27 = "";	$i7 = (int) -1;	if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r24 = $r6[2];	$r7 = virtualinvoke $r31.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r25 = $r7[2];	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!$");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	r26 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$i11 = (int) -1;	if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$i13 = (int) -1;	if i3 == $i13 goto $r36 = new java.lang.StringBuilder;	$r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r22 = $r14[1];	$r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r23 = $r15[1];	$z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0");	if $z0 != 0 goto $r36 = new java.lang.StringBuilder;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>();	if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	return $r29
;block_num 7