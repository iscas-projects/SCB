(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var187 0)
(declare-sort var2974 0)
(declare-sort var2220 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2974-init () var2974)
(declare-fun <init>/-949075851 (var2974 String Int Int Bool Bool) void)
(declare-fun var2220_format/1746937582 (String) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getCellRefParts/105673054 (var2974) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun length/-171891354 (String) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1654 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1654 null-String)))
(declare-const var2038 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2038 null-Int)))
(declare-const var2601 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2601 null-Int)))
(declare-const var2908 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var2908 null-Int)))
(declare-const var3908 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var3908 null-Int)))
(define-const var1820 var2974 var2974-init) ; Statement: $r30 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var1820 var1654 0 var2038 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1) 

(declare-const var1820!1 var2974)
(declare-const var1654!1 String)
(declare-const var110 Int)
(declare-const var2038!1 Int)
(declare-const var2310 Int)
(declare-const var2310!1 Int)
(define-const var1686 var2974 var2974-init) ; Statement: $r31 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var1686 var1654!1 0 var2601 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1) 

(declare-const var1686!1 var2974)
(declare-const var1654!2 String)
(declare-const var110!1 Int)
(declare-const var2601!1 Int)
(declare-const var2310!2 Int)
(declare-const var2310!3 Int)
(define-const var3322 var2974 var2974-init) ; Statement: $r32 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var3322 var1654!2 var2908 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1) 

(declare-const var3322!1 var2974)
(declare-const var1654!3 String)
(declare-const var2908!1 Int)
(declare-const var110!2 Int)
(declare-const var2310!4 Int)
(declare-const var2310!5 Int)
(define-const var1685 var2974 var2974-init) ; Statement: $r33 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var1685 var1654!3 var3908 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1) 

(declare-const var1685!1 var2974)
(declare-const var1654!4 String)
(declare-const var3908!1 Int)
(declare-const var110!3 Int)
(declare-const var2310!6 Int)
(declare-const var2310!7 Int)
(define-const var2099 String (var2220_format/1746937582 var1654!4)) ; Statement: r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1) 
(define-const var287 String "") ; Statement: r26 = "" 
(define-const var3239 String "") ; Statement: r27 = "" 
(define-const var36 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (= var2038!1 var36))) ; Cond: i0 != $i7 
(assert true)
(define-const var3507 (Array Int String) (getCellRefParts/105673054 var1820!1)) ; Statement: $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var868 String (select var3507 2)) ; Statement: $r24 = $r6[2] 
(assert true)
(define-const var1821 (Array Int String) (getCellRefParts/105673054 var1686!1)) ; Statement: $r7 = virtualinvoke $r31.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var713 String (select var1821 2)) ; Statement: $r25 = $r7[2] 
(define-const var3370 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3370)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3370!1 String)
(assert (= var3370!1 ""))
(assert true)
(define-const var3518 String (append/672562846 var3370!1 var2099)) ; Statement: $r9 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3370!2 String)
(assert (= var3370!2 (str.++ var3370!1 var2099)))
(assert true)
(define-const var1585 String (append/672562846 var3518 "!$")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!$") 
(declare-const var3518!1 String)
(assert (= var3518!1 (str.++ var3518 "!$")))
(assert true)
(define-const var2886 String (append/672562846 var1585 var868)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1585!1 String)
(assert (= var1585!1 (str.++ var1585 var868)))
(assert true)
(define-const var664 String (append/672562846 var2886 ":$")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$") 
(declare-const var2886!1 String)
(assert (= var2886!1 (str.++ var2886 ":$")))
(assert true)
(define-const var3898 String (append/672562846 var664 var713)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var664!1 String)
(assert (= var664!1 (str.++ var664 var713)))
(assert true)
(define-const var287!1 String (toString/-2075883882 var3898)) ; Statement: r26 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1480 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (= var2908!1 var1480))) ; Cond: i2 != $i11 
(assert true)
(define-const var1234 (Array Int String) (getCellRefParts/105673054 var3322!1)) ; Statement: $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var1916 String (select var1234 1)) ; Statement: $r22 = $r14[1] 
(assert true)
(define-const var403 (Array Int String) (getCellRefParts/105673054 var1685!1)) ; Statement: $r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var2642 String (select var403 1)) ; Statement: $r23 = $r15[1] 
(assert true)
(define-const var391 Bool (= var1916 "0")) ; Statement: $z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0") 
 ; Statement: if $z0 != 0 goto $r36 = new java.lang.StringBuilder 
(assert (not (= (ite var391 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3711 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3711)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3711!1 String)
(assert (= var3711!1 ""))
(assert true)
;(assert (append/672562846 var3711!1 var287!1)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var3711!2 String)
(assert (= var3711!2 (str.++ var3711!1 var287!1)))
(assert true)
(define-const var3721 Int (length/-171891354 var3711!2)) ; Statement: $i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (<= var3721 0)) ; Cond: $i5 <= 0 
(assert true)
;(assert (append/672562846 var3711!2 var3239)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var3711!3 String)
(assert (= var3711!3 (str.++ var3711!2 var3239)))
(assert true)
(define-const var2411 String (toString/-2075883882 var3711!3)) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var2974-init=([], org.apache.poi.ss.util.CellReference), <init>/-949075851=([org.apache.poi.ss.util.CellReference, java.lang.String, int, int, boolean, boolean], void), var2220_format/1746937582=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([int], int), getCellRefParts/105673054=([org.apache.poi.ss.util.CellReference], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-171891354=([java.lang.StringBuilder], int)}
; {var1654=r1, var187=null_type, var2038=i0, var2601=i1, var2908=i2, var3908=i3, var2974=org.apache.poi.ss.util.CellReference, var1820=$r30, var110=0, var2310=1, var1686=$r31, var3322=$r32, var1685=$r33, var2220=org.apache.poi.ss.formula.SheetNameFormatter, var2099=r5, var287=r26, var3239=r27, var36=$i7, var3507=$r6, var868=$r24, var1821=$r7, var713=$r25, var3370=$r34, var3518=$r9, var1585=$r10, var2886=$r11, var664=$r12, var3898=$r13, var1480=$i11, var1234=$r14, var1916=$r22, var403=$r15, var2642=$r23, var391=$z0, var3711=$r36, var3721=$i5, var2411=$r29}
; {r1=var1654, null_type=var187, i0=var2038, i1=var2601, i2=var2908, i3=var3908, org.apache.poi.ss.util.CellReference=var2974, $r30=var1820, 0=var110, 1=var2310, $r31=var1686, $r32=var3322, $r33=var1685, org.apache.poi.ss.formula.SheetNameFormatter=var2220, r5=var2099, r26=var287, r27=var3239, $i7=var36, $r6=var3507, $r24=var868, $r7=var1821, $r25=var713, $r34=var3370, $r9=var3518, $r10=var1585, $r11=var2886, $r12=var664, $r13=var3898, $i11=var1480, $r14=var1234, $r22=var1916, $r15=var403, $r23=var2642, $z0=var391, $r36=var3711, $i5=var3721, $r29=var2411}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	$r30 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1);	$r31 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1);	$r32 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1);	$r33 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1);	r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1);	r26 = "";	r27 = "";	$i7 = (int) -1;	if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r24 = $r6[2];	$r7 = virtualinvoke $r31.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r25 = $r7[2];	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!$");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	r26 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$i11 = (int) -1;	if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r22 = $r14[1];	$r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r23 = $r15[1];	$z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0");	if $z0 != 0 goto $r36 = new java.lang.StringBuilder;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>();	if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	return $r29
;block_num 6