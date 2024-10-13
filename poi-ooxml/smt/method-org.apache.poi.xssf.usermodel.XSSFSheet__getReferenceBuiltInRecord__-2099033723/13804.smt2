(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3039 0)
(declare-sort var1368 0)
(declare-sort var3669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1368-init () var1368)
(declare-fun <init>/-949075851 (var1368 String Int Int Bool Bool) void)
(declare-fun var3669_format/1746937582 (String) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getCellRefParts/105673054 (var1368) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var254 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var254 null-String)))
(declare-const var1886 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1886 null-Int)))
(declare-const var3886 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3886 null-Int)))
(declare-const var1911 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var1911 null-Int)))
(declare-const var1118 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var1118 null-Int)))
(define-const var1749 var1368 var1368-init) ; Statement: $r30 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var1749 var254 0 var1886 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1) 

(declare-const var1749!1 var1368)
(declare-const var254!1 String)
(declare-const var1839 Int)
(declare-const var1886!1 Int)
(declare-const var1283 Int)
(declare-const var1283!1 Int)
(define-const var1401 var1368 var1368-init) ; Statement: $r31 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var1401 var254!1 0 var3886 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1) 

(declare-const var1401!1 var1368)
(declare-const var254!2 String)
(declare-const var1839!1 Int)
(declare-const var3886!1 Int)
(declare-const var1283!2 Int)
(declare-const var1283!3 Int)
(define-const var3780 var1368 var1368-init) ; Statement: $r32 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var3780 var254!2 var1911 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1) 

(declare-const var3780!1 var1368)
(declare-const var254!3 String)
(declare-const var1911!1 Int)
(declare-const var1839!2 Int)
(declare-const var1283!4 Int)
(declare-const var1283!5 Int)
(define-const var2739 var1368 var1368-init) ; Statement: $r33 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var2739 var254!3 var1118 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1) 

(declare-const var2739!1 var1368)
(declare-const var254!4 String)
(declare-const var1118!1 Int)
(declare-const var1839!3 Int)
(declare-const var1283!6 Int)
(declare-const var1283!7 Int)
(define-const var1809 String (var3669_format/1746937582 var254!4)) ; Statement: r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1) 
(define-const var669 String "") ; Statement: r26 = "" 
(define-const var920 String "") ; Statement: r27 = "" 
(define-const var1722 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (not (= var1886!1 var1722)))) ; Negate: Cond: i0 != $i7  
(define-const var799 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i1 == $i9 goto $i11 = (int) -1 
(assert (= var3886!1 var799)) ; Cond: i1 == $i9 
(define-const var311 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (not (= var1911!1 var311)))) ; Negate: Cond: i2 != $i11  
(define-const var1475 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i3 == $i13 goto $r36 = new java.lang.StringBuilder 
(assert (not (= var1118!1 var1475))) ; Negate: Cond: i3 == $i13  
(assert true)
(define-const var3625 (Array Int String) (getCellRefParts/105673054 var3780!1)) ; Statement: $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var1891 String (select var3625 1)) ; Statement: $r22 = $r14[1] 
(assert true)
(define-const var942 (Array Int String) (getCellRefParts/105673054 var2739!1)) ; Statement: $r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var1480 String (select var942 1)) ; Statement: $r23 = $r15[1] 
(assert true)
(define-const var2155 Bool (= var1891 "0")) ; Statement: $z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0") 
 ; Statement: if $z0 != 0 goto $r36 = new java.lang.StringBuilder 
(assert (not (= (ite var2155 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2866 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2866)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2866!1 String)
(assert (= var2866!1 ""))
(assert true)
;(assert (append/672562846 var2866!1 var669)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var2866!2 String)
(assert (= var2866!2 (str.++ var2866!1 var669)))
(assert true)
(define-const var857 Int (length/-171891354 var2866!2)) ; Statement: $i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (<= var857 0)) ; Cond: $i5 <= 0 
(assert true)
;(assert (append/672562846 var2866!2 var920)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var2866!3 String)
(assert (= var2866!3 (str.++ var2866!2 var920)))
(assert true)
(define-const var1049 String (toString/-2075883882 var2866!3)) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var1368-init=([], org.apache.poi.ss.util.CellReference), <init>/-949075851=([org.apache.poi.ss.util.CellReference, java.lang.String, int, int, boolean, boolean], void), var3669_format/1746937582=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([int], int), getCellRefParts/105673054=([org.apache.poi.ss.util.CellReference], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var254=r1, var3039=null_type, var1886=i0, var3886=i1, var1911=i2, var1118=i3, var1368=org.apache.poi.ss.util.CellReference, var1749=$r30, var1839=0, var1283=1, var1401=$r31, var3780=$r32, var2739=$r33, var3669=org.apache.poi.ss.formula.SheetNameFormatter, var1809=r5, var669=r26, var920=r27, var1722=$i7, var799=$i9, var311=$i11, var1475=$i13, var3625=$r14, var1891=$r22, var942=$r15, var1480=$r23, var2155=$z0, var2866=$r36, var857=$i5, var1049=$r29}
; {r1=var254, null_type=var3039, i0=var1886, i1=var3886, i2=var1911, i3=var1118, org.apache.poi.ss.util.CellReference=var1368, $r30=var1749, 0=var1839, 1=var1283, $r31=var1401, $r32=var3780, $r33=var2739, org.apache.poi.ss.formula.SheetNameFormatter=var3669, r5=var1809, r26=var669, r27=var920, $i7=var1722, $i9=var799, $i11=var311, $i13=var1475, $r14=var3625, $r22=var1891, $r15=var942, $r23=var1480, $z0=var2155, $r36=var2866, $i5=var857, $r29=var1049}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	$r30 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1);	$r31 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1);	$r32 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1);	$r33 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1);	r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1);	r26 = "";	r27 = "";	$i7 = (int) -1;	if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$i9 = (int) -1;	if i1 == $i9 goto $i11 = (int) -1;	$i11 = (int) -1;	if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$i13 = (int) -1;	if i3 == $i13 goto $r36 = new java.lang.StringBuilder;	$r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r22 = $r14[1];	$r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r23 = $r15[1];	$z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0");	if $z0 != 0 goto $r36 = new java.lang.StringBuilder;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>();	if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	return $r29
;block_num 7