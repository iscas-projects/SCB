(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3315 0)
(declare-sort var2981 0)
(declare-sort var1636 0)
(declare-sort var319 0)
(declare-sort var3955 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/366243679 (var2981) Int)
(declare-fun var319-init () var319)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3955) String)
(declare-fun cast-from-var2981-to-var3955 (var2981) var3955)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var319 String) void)
(declare-const null-var3315 var3315)
(declare-const null-var2981 var2981)
(declare-const var1636-$SwitchMap$org$apache$poi$ss$usermodel$CellType (Array Int Int))
(declare-const var2748 var3315) ; Statement: r2 := @this: org.apache.poi.xssf.streaming.SXSSFCell 
(assert (not (= var2748 null-var3315)))
(declare-const var842 var2981) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.CellType 
(assert (not (= var842 null-var2981)))
(define-const var3913 (Array Int Int) var1636-$SwitchMap$org$apache$poi$ss$usermodel$CellType) ; Statement: $r1 = <org.apache.poi.xssf.streaming.SXSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType> 
(assert true)
(define-const var2954 Int (ordinal/366243679 var842)) ; Statement: $i0 = virtualinvoke r0.<org.apache.poi.ss.usermodel.CellType: int ordinal()>() 
(define-const var2219 Int (select var3913 var2954)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r12 = new org.apache.poi.xssf.streaming.SXSSFCell$BlankValue;     case 2: goto $r11 = new org.apache.poi.xssf.streaming.SXSSFCell$NumericValue;     case 3: goto $r9 = new org.apache.poi.xssf.streaming.SXSSFCell$PlainStringValue;     case 4: goto $r7 = new org.apache.poi.xssf.streaming.SXSSFCell$BooleanValue;     case 5: goto $r6 = new org.apache.poi.xssf.streaming.SXSSFCell$ErrorValue;     case 6: goto $r4 = virtualinvoke r2.<org.apache.poi.xssf.streaming.SXSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>();     default: goto $r13 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2219 6)) (and (not (= var2219 5)) (and (not (= var2219 4)) (and (not (= var2219 3)) (and (not (= var2219 2)) (and (not (= var2219 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var3024 var319 var319-init) ; Statement: $r13 = new java.lang.IllegalArgumentException 
(define-const var182 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var182)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var182!1 String)
(assert (= var182!1 ""))
(assert true)
(define-const var1693 String (append/672562846 var182!1 "Illegal type ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal type ") 
(declare-const var182!2 String)
(assert (= var182!2 (str.++ var182!1 "Illegal type ")))
(assert true)
(define-const var2051 String (append/-1031950772 var1693 (cast-from-var2981-to-var3955 var842))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1693!1 String)
(assert (str.prefixof var1693 var1693!1))
(assert true)
(define-const var1154 String (toString/-2075883882 var2051)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3024 var1154)) ; Statement: specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r17) 

(declare-const var3024!1 var319)
(declare-const var1154!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/366243679=([org.apache.poi.ss.usermodel.CellType], int), var319-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2981-to-var3955=([org.apache.poi.ss.usermodel.CellType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3315=org.apache.poi.xssf.streaming.SXSSFCell, var2748=r2, var2981=org.apache.poi.ss.usermodel.CellType, var842=r0, var1636=org.apache.poi.xssf.streaming.SXSSFCell$1, var3913=$r1, var2954=$i0, var2219=$i1, var319=java.lang.IllegalArgumentException, var3024=$r13, var182=$r14, var1693=$r15, var3955=java.lang.Object, var2051=$r16, var1154=$r17}
; {org.apache.poi.xssf.streaming.SXSSFCell=var3315, r2=var2748, org.apache.poi.ss.usermodel.CellType=var2981, r0=var842, org.apache.poi.xssf.streaming.SXSSFCell$1=var1636, $r1=var3913, $i0=var2954, $i1=var2219, java.lang.IllegalArgumentException=var319, $r13=var3024, $r14=var182, $r15=var1693, java.lang.Object=var3955, $r16=var2051, $r17=var1154}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.poi.xssf.streaming.SXSSFCell;	r0 := @parameter0: org.apache.poi.ss.usermodel.CellType;	$r1 = <org.apache.poi.xssf.streaming.SXSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType>;	$i0 = virtualinvoke r0.<org.apache.poi.ss.usermodel.CellType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r12 = new org.apache.poi.xssf.streaming.SXSSFCell$BlankValue;     case 2: goto $r11 = new org.apache.poi.xssf.streaming.SXSSFCell$NumericValue;     case 3: goto $r9 = new org.apache.poi.xssf.streaming.SXSSFCell$PlainStringValue;     case 4: goto $r7 = new org.apache.poi.xssf.streaming.SXSSFCell$BooleanValue;     case 5: goto $r6 = new org.apache.poi.xssf.streaming.SXSSFCell$ErrorValue;     case 6: goto $r4 = virtualinvoke r2.<org.apache.poi.xssf.streaming.SXSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>();     default: goto $r13 = new java.lang.IllegalArgumentException; };	$r13 = new java.lang.IllegalArgumentException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal type ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r17);	throw $r13
;block_num 2