(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3857 0)
(declare-sort var3753 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3753-init () var3753)
(declare-fun <init>/-949075851 (var3753 String Int Int Bool Bool) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCellRefParts/105673054 (var3753) (Array Int String))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2596 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2596 null-String)))
(declare-const var33 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var33 null-Int)))
(declare-const var755 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var755 null-Int)))
(declare-const var2022 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var2022 null-Int)))
(declare-const var105 Int) ; Statement: i2 := @parameter4: int 
(assert (not (= var105 null-Int)))
(define-const var3745 var3753 var3753-init) ; Statement: $r0 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var3745 var2596 var2022 var33 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r0.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i0, i1, 1, 1) 

(declare-const var3745!1 var3753)
(declare-const var2596!1 String)
(declare-const var2022!1 Int)
(declare-const var33!1 Int)
(declare-const var1289 Int)
(declare-const var1289!1 Int)
(define-const var2498 var3753 var3753-init) ; Statement: $r2 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var2498 var2596!1 var105 var755 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r2.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, i3, 1, 1) 

(declare-const var2498!1 var3753)
(declare-const var2596!2 String)
(declare-const var105!1 Int)
(declare-const var755!1 Int)
(declare-const var1289!2 Int)
(declare-const var1289!3 Int)
(define-const var2996 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2996)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2996!1 String)
(assert (= var2996!1 ""))
(assert true)
(define-const var1217 String (append/672562846 var2996!1 "$")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$") 
(declare-const var2996!2 String)
(assert (= var2996!2 (str.++ var2996!1 "$")))
(assert true)
(define-const var2367 (Array Int String) (getCellRefParts/105673054 var3745!1)) ; Statement: $r4 = virtualinvoke $r0.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var2187 String (select var2367 2)) ; Statement: $r5 = $r4[2] 
(assert true)
(define-const var737 String (append/672562846 var1217 var2187)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1217!1 String)
(assert (= var1217!1 (str.++ var1217 var2187)))
(assert true)
(define-const var1371 String (append/672562846 var737 "$")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$") 
(declare-const var737!1 String)
(assert (= var737!1 (str.++ var737 "$")))
(assert true)
(define-const var3297 (Array Int String) (getCellRefParts/105673054 var3745!1)) ; Statement: $r8 = virtualinvoke $r0.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var2309 String (select var3297 1)) ; Statement: $r9 = $r8[1] 
(assert true)
(define-const var3356 String (append/672562846 var1371 var2309)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1371!1 String)
(assert (= var1371!1 (str.++ var1371 var2309)))
(assert true)
(define-const var3095 String (append/672562846 var3356 ":$")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$") 
(declare-const var3356!1 String)
(assert (= var3356!1 (str.++ var3356 ":$")))
(assert true)
(define-const var2909 (Array Int String) (getCellRefParts/105673054 var2498!1)) ; Statement: $r12 = virtualinvoke $r2.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var454 String (select var2909 2)) ; Statement: $r13 = $r12[2] 
(assert true)
(define-const var2729 String (append/672562846 var3095 var454)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3095!1 String)
(assert (= var3095!1 (str.++ var3095 var454)))
(assert true)
(define-const var3005 String (append/672562846 var2729 "$")) ; Statement: $r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$") 
(declare-const var2729!1 String)
(assert (= var2729!1 (str.++ var2729 "$")))
(assert true)
(define-const var1428 (Array Int String) (getCellRefParts/105673054 var2498!1)) ; Statement: $r16 = virtualinvoke $r2.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var189 String (select var1428 1)) ; Statement: $r17 = $r16[1] 
(assert true)
(define-const var2813 String (append/672562846 var3005 var189)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3005!1 String)
(assert (= var3005!1 (str.++ var3005 var189)))
(assert true)
(define-const var2641 String (toString/-2075883882 var2813)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var3753-init=([], org.apache.poi.ss.util.CellReference), <init>/-949075851=([org.apache.poi.ss.util.CellReference, java.lang.String, int, int, boolean, boolean], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCellRefParts/105673054=([org.apache.poi.ss.util.CellReference], java.lang.String[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2596=r1, var3857=null_type, var33=i1, var755=i3, var2022=i0, var105=i2, var3753=org.apache.poi.ss.util.CellReference, var3745=$r0, var1289=1, var2498=$r2, var2996=$r3, var1217=$r6, var2367=$r4, var2187=$r5, var737=$r7, var1371=$r10, var3297=$r8, var2309=$r9, var3356=$r11, var3095=$r14, var2909=$r12, var454=$r13, var2729=$r15, var3005=$r18, var1428=$r16, var189=$r17, var2813=$r19, var2641=$r20}
; {r1=var2596, null_type=var3857, i1=var33, i3=var755, i0=var2022, i2=var105, org.apache.poi.ss.util.CellReference=var3753, $r0=var3745, 1=var1289, $r2=var2498, $r3=var2996, $r6=var1217, $r4=var2367, $r5=var2187, $r7=var737, $r10=var1371, $r8=var3297, $r9=var2309, $r11=var3356, $r14=var3095, $r12=var2909, $r13=var454, $r15=var2729, $r18=var3005, $r16=var1428, $r17=var189, $r19=var2813, $r20=var2641}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i3 := @parameter2: int;	i0 := @parameter3: int;	i2 := @parameter4: int;	$r0 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r0.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i0, i1, 1, 1);	$r2 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r2.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, i3, 1, 1);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$");	$r4 = virtualinvoke $r0.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r5 = $r4[2];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$");	$r8 = virtualinvoke $r0.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r9 = $r8[1];	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$");	$r12 = virtualinvoke $r2.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r13 = $r12[2];	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$");	$r16 = virtualinvoke $r2.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r17 = $r16[1];	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	return $r20
;block_num 1