(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1254 0)
(declare-sort var3542 0)
(declare-sort var2977 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3542-init () var3542)
(declare-fun <init>/-949075851 (var3542 String Int Int Bool Bool) void)
(declare-fun var2977_format/1746937582 (String) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getCellRefParts/105673054 (var3542) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun length/-171891354 (String) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1132 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1132 null-String)))
(declare-const var3214 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3214 null-Int)))
(declare-const var1243 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1243 null-Int)))
(declare-const var1048 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var1048 null-Int)))
(declare-const var475 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var475 null-Int)))
(define-const var2256 var3542 var3542-init) ; Statement: $r30 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var2256 var1132 0 var3214 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1) 

(declare-const var2256!1 var3542)
(declare-const var1132!1 String)
(declare-const var550 Int)
(declare-const var3214!1 Int)
(declare-const var3184 Int)
(declare-const var3184!1 Int)
(define-const var2590 var3542 var3542-init) ; Statement: $r31 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var2590 var1132!1 0 var1243 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1) 

(declare-const var2590!1 var3542)
(declare-const var1132!2 String)
(declare-const var550!1 Int)
(declare-const var1243!1 Int)
(declare-const var3184!2 Int)
(declare-const var3184!3 Int)
(define-const var2736 var3542 var3542-init) ; Statement: $r32 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var2736 var1132!2 var1048 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1) 

(declare-const var2736!1 var3542)
(declare-const var1132!3 String)
(declare-const var1048!1 Int)
(declare-const var550!2 Int)
(declare-const var3184!4 Int)
(declare-const var3184!5 Int)
(define-const var803 var3542 var3542-init) ; Statement: $r33 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var803 var1132!3 var475 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1) 

(declare-const var803!1 var3542)
(declare-const var1132!4 String)
(declare-const var475!1 Int)
(declare-const var550!3 Int)
(declare-const var3184!6 Int)
(declare-const var3184!7 Int)
(define-const var607 String (var2977_format/1746937582 var1132!4)) ; Statement: r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1) 
(define-const var2674 String "") ; Statement: r26 = "" 
(define-const var3069 String "") ; Statement: r27 = "" 
(define-const var1847 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (not (= var3214!1 var1847)))) ; Negate: Cond: i0 != $i7  
(define-const var2386 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i1 == $i9 goto $i11 = (int) -1 
(assert (not (= var1243!1 var2386))) ; Negate: Cond: i1 == $i9  
(assert true)
(define-const var3231 (Array Int String) (getCellRefParts/105673054 var2256!1)) ; Statement: $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var944 String (select var3231 2)) ; Statement: $r24 = $r6[2] 
(assert true)
(define-const var1880 (Array Int String) (getCellRefParts/105673054 var2590!1)) ; Statement: $r7 = virtualinvoke $r31.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var3403 String (select var1880 2)) ; Statement: $r25 = $r7[2] 
(define-const var2022 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2022)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2022!1 String)
(assert (= var2022!1 ""))
(assert true)
(define-const var2084 String (append/672562846 var2022!1 var607)) ; Statement: $r9 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2022!2 String)
(assert (= var2022!2 (str.++ var2022!1 var607)))
(assert true)
(define-const var2952 String (append/672562846 var2084 "!$")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!$") 
(declare-const var2084!1 String)
(assert (= var2084!1 (str.++ var2084 "!$")))
(assert true)
(define-const var1002 String (append/672562846 var2952 var944)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2952!1 String)
(assert (= var2952!1 (str.++ var2952 var944)))
(assert true)
(define-const var175 String (append/672562846 var1002 ":$")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$") 
(declare-const var1002!1 String)
(assert (= var1002!1 (str.++ var1002 ":$")))
(assert true)
(define-const var310 String (append/672562846 var175 var3403)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var175!1 String)
(assert (= var175!1 (str.++ var175 var3403)))
(assert true)
(define-const var2674!1 String (toString/-2075883882 var310)) ; Statement: r26 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1995 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (not (= var1048!1 var1995)))) ; Negate: Cond: i2 != $i11  
(define-const var3041 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i3 == $i13 goto $r36 = new java.lang.StringBuilder 
(assert (= var475!1 var3041)) ; Cond: i3 == $i13 
(define-const var2390 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2390)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2390!1 String)
(assert (= var2390!1 ""))
(assert true)
;(assert (append/672562846 var2390!1 var2674!1)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var2390!2 String)
(assert (= var2390!2 (str.++ var2390!1 var2674!1)))
(assert true)
(define-const var2309 Int (length/-171891354 var2390!2)) ; Statement: $i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (<= var2309 0)) ; Cond: $i5 <= 0 
(assert true)
;(assert (append/672562846 var2390!2 var3069)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var2390!3 String)
(assert (= var2390!3 (str.++ var2390!2 var3069)))
(assert true)
(define-const var2188 String (toString/-2075883882 var2390!3)) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var3542-init=([], org.apache.poi.ss.util.CellReference), <init>/-949075851=([org.apache.poi.ss.util.CellReference, java.lang.String, int, int, boolean, boolean], void), var2977_format/1746937582=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([int], int), getCellRefParts/105673054=([org.apache.poi.ss.util.CellReference], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-171891354=([java.lang.StringBuilder], int)}
; {var1132=r1, var1254=null_type, var3214=i0, var1243=i1, var1048=i2, var475=i3, var3542=org.apache.poi.ss.util.CellReference, var2256=$r30, var550=0, var3184=1, var2590=$r31, var2736=$r32, var803=$r33, var2977=org.apache.poi.ss.formula.SheetNameFormatter, var607=r5, var2674=r26, var3069=r27, var1847=$i7, var2386=$i9, var3231=$r6, var944=$r24, var1880=$r7, var3403=$r25, var2022=$r34, var2084=$r9, var2952=$r10, var1002=$r11, var175=$r12, var310=$r13, var1995=$i11, var3041=$i13, var2390=$r36, var2309=$i5, var2188=$r29}
; {r1=var1132, null_type=var1254, i0=var3214, i1=var1243, i2=var1048, i3=var475, org.apache.poi.ss.util.CellReference=var3542, $r30=var2256, 0=var550, 1=var3184, $r31=var2590, $r32=var2736, $r33=var803, org.apache.poi.ss.formula.SheetNameFormatter=var2977, r5=var607, r26=var2674, r27=var3069, $i7=var1847, $i9=var2386, $r6=var3231, $r24=var944, $r7=var1880, $r25=var3403, $r34=var2022, $r9=var2084, $r10=var2952, $r11=var1002, $r12=var175, $r13=var310, $i11=var1995, $i13=var3041, $r36=var2390, $i5=var2309, $r29=var2188}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	$r30 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1);	$r31 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1);	$r32 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1);	$r33 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1);	r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1);	r26 = "";	r27 = "";	$i7 = (int) -1;	if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$i9 = (int) -1;	if i1 == $i9 goto $i11 = (int) -1;	$r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r24 = $r6[2];	$r7 = virtualinvoke $r31.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r25 = $r7[2];	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!$");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	r26 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$i11 = (int) -1;	if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$i13 = (int) -1;	if i3 == $i13 goto $r36 = new java.lang.StringBuilder;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>();	if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	return $r29
;block_num 7