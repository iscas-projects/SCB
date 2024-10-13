(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3237 0)
(declare-sort var3870 0)
(declare-sort var564 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3870-init () var3870)
(declare-fun <init>/-949075851 (var3870 String Int Int Bool Bool) void)
(declare-fun var564_format/1746937582 (String) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getCellRefParts/105673054 (var3870) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1944 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1944 null-String)))
(declare-const var2445 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2445 null-Int)))
(declare-const var3069 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3069 null-Int)))
(declare-const var2767 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var2767 null-Int)))
(declare-const var3389 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var3389 null-Int)))
(define-const var2197 var3870 var3870-init) ; Statement: $r30 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var2197 var1944 0 var2445 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1) 

(declare-const var2197!1 var3870)
(declare-const var1944!1 String)
(declare-const var3158 Int)
(declare-const var2445!1 Int)
(declare-const var12 Int)
(declare-const var12!1 Int)
(define-const var2584 var3870 var3870-init) ; Statement: $r31 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var2584 var1944!1 0 var3069 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1) 

(declare-const var2584!1 var3870)
(declare-const var1944!2 String)
(declare-const var3158!1 Int)
(declare-const var3069!1 Int)
(declare-const var12!2 Int)
(declare-const var12!3 Int)
(define-const var3472 var3870 var3870-init) ; Statement: $r32 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var3472 var1944!2 var2767 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1) 

(declare-const var3472!1 var3870)
(declare-const var1944!3 String)
(declare-const var2767!1 Int)
(declare-const var3158!2 Int)
(declare-const var12!4 Int)
(declare-const var12!5 Int)
(define-const var1484 var3870 var3870-init) ; Statement: $r33 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var1484 var1944!3 var3389 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1) 

(declare-const var1484!1 var3870)
(declare-const var1944!4 String)
(declare-const var3389!1 Int)
(declare-const var3158!3 Int)
(declare-const var12!6 Int)
(declare-const var12!7 Int)
(define-const var3276 String (var564_format/1746937582 var1944!4)) ; Statement: r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1) 
(define-const var749 String "") ; Statement: r26 = "" 
(define-const var1991 String "") ; Statement: r27 = "" 
(define-const var2547 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (not (= var2445!1 var2547)))) ; Negate: Cond: i0 != $i7  
(define-const var2614 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i1 == $i9 goto $i11 = (int) -1 
(assert (= var3069!1 var2614)) ; Cond: i1 == $i9 
(define-const var1273 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (= var2767!1 var1273))) ; Cond: i2 != $i11 
(assert true)
(define-const var268 (Array Int String) (getCellRefParts/105673054 var3472!1)) ; Statement: $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var364 String (select var268 1)) ; Statement: $r22 = $r14[1] 
(assert true)
(define-const var3381 (Array Int String) (getCellRefParts/105673054 var1484!1)) ; Statement: $r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var1476 String (select var3381 1)) ; Statement: $r23 = $r15[1] 
(assert true)
(define-const var263 Bool (= var364 "0")) ; Statement: $z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0") 
 ; Statement: if $z0 != 0 goto $r36 = new java.lang.StringBuilder 
(assert (not (= (ite var263 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3331 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3331)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3331!1 String)
(assert (= var3331!1 ""))
(assert true)
;(assert (append/672562846 var3331!1 var749)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var3331!2 String)
(assert (= var3331!2 (str.++ var3331!1 var749)))
(assert true)
(define-const var2037 Int (length/-171891354 var3331!2)) ; Statement: $i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (<= var2037 0)) ; Cond: $i5 <= 0 
(assert true)
;(assert (append/672562846 var3331!2 var1991)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var3331!3 String)
(assert (= var3331!3 (str.++ var3331!2 var1991)))
(assert true)
(define-const var1590 String (toString/-2075883882 var3331!3)) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var3870-init=([], org.apache.poi.ss.util.CellReference), <init>/-949075851=([org.apache.poi.ss.util.CellReference, java.lang.String, int, int, boolean, boolean], void), var564_format/1746937582=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([int], int), getCellRefParts/105673054=([org.apache.poi.ss.util.CellReference], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1944=r1, var3237=null_type, var2445=i0, var3069=i1, var2767=i2, var3389=i3, var3870=org.apache.poi.ss.util.CellReference, var2197=$r30, var3158=0, var12=1, var2584=$r31, var3472=$r32, var1484=$r33, var564=org.apache.poi.ss.formula.SheetNameFormatter, var3276=r5, var749=r26, var1991=r27, var2547=$i7, var2614=$i9, var1273=$i11, var268=$r14, var364=$r22, var3381=$r15, var1476=$r23, var263=$z0, var3331=$r36, var2037=$i5, var1590=$r29}
; {r1=var1944, null_type=var3237, i0=var2445, i1=var3069, i2=var2767, i3=var3389, org.apache.poi.ss.util.CellReference=var3870, $r30=var2197, 0=var3158, 1=var12, $r31=var2584, $r32=var3472, $r33=var1484, org.apache.poi.ss.formula.SheetNameFormatter=var564, r5=var3276, r26=var749, r27=var1991, $i7=var2547, $i9=var2614, $i11=var1273, $r14=var268, $r22=var364, $r15=var3381, $r23=var1476, $z0=var263, $r36=var3331, $i5=var2037, $r29=var1590}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	$r30 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1);	$r31 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1);	$r32 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1);	$r33 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1);	r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1);	r26 = "";	r27 = "";	$i7 = (int) -1;	if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$i9 = (int) -1;	if i1 == $i9 goto $i11 = (int) -1;	$i11 = (int) -1;	if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r22 = $r14[1];	$r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r23 = $r15[1];	$z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0");	if $z0 != 0 goto $r36 = new java.lang.StringBuilder;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>();	if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	return $r29
;block_num 6