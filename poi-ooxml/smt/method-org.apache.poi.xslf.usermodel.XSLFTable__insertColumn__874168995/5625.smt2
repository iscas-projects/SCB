(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3678 0)
(declare-sort var3416 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNumberOfColumns/-1205746383 (var3678) Int)
(declare-fun var3416-init () var3416)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var3416 String) void)
(declare-const null-var3678 var3678)
(declare-const null-Int Int)
(declare-const var30 var3678) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFTable 
(assert (not (= var30 null-var3678)))
(declare-const var2495 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2495 null-Int)))
(assert true)
(define-const var250 Int (getNumberOfColumns/-1205746383 var30)) ; Statement: $i1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfColumns()>() 
 ; Statement: if $i1 >= i0 goto $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFTable: org.openxmlformats.schemas.drawingml.x2006.main.CTTable _table> 
(assert (not (>= var250 var2495))) ; Negate: Cond: $i1 >= i0  
(define-const var2719 var3416 var3416-init) ; Statement: $r16 = new java.lang.IndexOutOfBoundsException 
(define-const var3901 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3901)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3901!1 String)
(assert (= var3901!1 ""))
(assert true)
(define-const var27 String (append/672562846 var3901!1 "Cannot insert column at ")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot insert column at ") 
(declare-const var3901!2 String)
(assert (= var3901!2 (str.++ var3901!1 "Cannot insert column at ")))
(assert true)
(define-const var254 String (append/-1001720160 var27 var2495)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var27!1 String)
(assert (str.prefixof var27 var27!1))
(assert true)
(define-const var606 String (append/672562846 var254 "; table has only ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; table has only ") 
(declare-const var254!1 String)
(assert (= var254!1 (str.++ var254 "; table has only ")))
(assert true)
(define-const var762 Int (getNumberOfColumns/-1205746383 var30)) ; Statement: $i3 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfColumns()>() 
(assert true)
(define-const var1920 String (append/-1001720160 var606 var762)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var606!1 String)
(assert (str.prefixof var606 var606!1))
(assert true)
(define-const var214 String (append/672562846 var1920 "columns.")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("columns.") 
(declare-const var1920!1 String)
(assert (= var1920!1 (str.++ var1920 "columns.")))
(assert true)
(define-const var208 String (toString/-2075883882 var214)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var2719 var208)) ; Statement: specialinvoke $r16.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r23) 

(declare-const var2719!1 var3416)
(declare-const var208!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {getNumberOfColumns/-1205746383=([org.apache.poi.xslf.usermodel.XSLFTable], int), var3416-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var3678=org.apache.poi.xslf.usermodel.XSLFTable, var30=r0, var2495=i0, var250=$i1, var3416=java.lang.IndexOutOfBoundsException, var2719=$r16, var3901=$r17, var27=$r18, var254=$r19, var606=$r20, var762=$i3, var1920=$r21, var214=$r22, var208=$r23}
; {org.apache.poi.xslf.usermodel.XSLFTable=var3678, r0=var30, i0=var2495, $i1=var250, java.lang.IndexOutOfBoundsException=var3416, $r16=var2719, $r17=var3901, $r18=var27, $r19=var254, $r20=var606, $i3=var762, $r21=var1920, $r22=var214, $r23=var208}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFTable;	i0 := @parameter0: int;	$i1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfColumns()>();	if $i1 >= i0 goto $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFTable: org.openxmlformats.schemas.drawingml.x2006.main.CTTable _table>;	$r16 = new java.lang.IndexOutOfBoundsException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot insert column at ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; table has only ");	$i3 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfColumns()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("columns.");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r23);	throw $r16
;block_num 2