(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1253 0)
(declare-sort var3136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getRed/-1578122584 (var1253) Int)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getGreen/591220726 (var1253) Int)
(declare-fun getBlue/1520570055 (var1253) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1253 var1253)
(declare-const null-String String)
(declare-const var2829 var1253) ; Statement: r2 := @parameter0: java.awt.Color 
(assert (not (= var2829 null-var1253)))
(declare-const var3984 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3984 null-String)))
(define-const var2648 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2648 var3984)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1) 
(declare-const var2648!1 String)
(assert (= var2648!1 var3984))
(assert true)
(define-const var1289 Int (getRed/-1578122584 var2829)) ; Statement: $i0 = virtualinvoke r2.<java.awt.Color: int getRed()>() 
(define-const var639 String (Int_toHexString/1865784998 var1289)) ; Statement: r6 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i0) 
(assert true)
(define-const var1633 Int (length/-134980193 var639)) ; Statement: $i1 = virtualinvoke r6.<java.lang.String: int length()>() 
 ; Statement: if 1 != $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(assert (not (= 1 var1633))) ; Cond: 1 != $i1 
(assert true)
;(assert (append/672562846 var2648!1 var639)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var2648!2 String)
(assert (= var2648!2 (str.++ var2648!1 var639)))
(assert true)
(define-const var2876 Int (getGreen/591220726 var2829)) ; Statement: $i2 = virtualinvoke r2.<java.awt.Color: int getGreen()>() 
(define-const var3480 String (Int_toHexString/1865784998 var2876)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i2) 
(assert true)
(define-const var3876 Int (length/-134980193 var3480)) ; Statement: $i3 = virtualinvoke $r5.<java.lang.String: int length()>() 
 ; Statement: if 1 != $i3 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(assert (not (= 1 var3876))) ; Cond: 1 != $i3 
(assert true)
;(assert (append/672562846 var2648!2 var3480)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2648!3 String)
(assert (= var2648!3 (str.++ var2648!2 var3480)))
(assert true)
(define-const var2981 Int (getBlue/1520570055 var2829)) ; Statement: $i4 = virtualinvoke r2.<java.awt.Color: int getBlue()>() 
(define-const var2455 String (Int_toHexString/1865784998 var2981)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4) 
(assert true)
(define-const var2538 Int (length/-134980193 var2455)) ; Statement: $i5 = virtualinvoke $r4.<java.lang.String: int length()>() 
 ; Statement: if 1 != $i5 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(assert (not (= 1 var2538))) ; Cond: 1 != $i5 
(assert true)
;(assert (append/672562846 var2648!3 var2455)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2648!4 String)
(assert (= var2648!4 (str.++ var2648!3 var2455)))
(assert true)
(define-const var881 String (toString/-2075883882 var2648!4)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getRed/-1578122584=([java.awt.Color], int), Int_toHexString/1865784998=([int], java.lang.String), length/-134980193=([java.lang.String], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getGreen/591220726=([java.awt.Color], int), getBlue/1520570055=([java.awt.Color], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1253=java.awt.Color, var2829=r2, var3984=r1, var3136=null_type, var2648=$r0, var1289=$i0, var639=r6, var1633=$i1, var2876=$i2, var3480=$r5, var3876=$i3, var2981=$i4, var2455=$r4, var2538=$i5, var881=$r3}
; {java.awt.Color=var1253, r2=var2829, r1=var3984, null_type=var3136, $r0=var2648, $i0=var1289, r6=var639, $i1=var1633, $i2=var2876, $r5=var3480, $i3=var3876, $i4=var2981, $r4=var2455, $i5=var2538, $r3=var881}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.awt.Color;	r1 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1);	$i0 = virtualinvoke r2.<java.awt.Color: int getRed()>();	r6 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i0);	$i1 = virtualinvoke r6.<java.lang.String: int length()>();	if 1 != $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$i2 = virtualinvoke r2.<java.awt.Color: int getGreen()>();	$r5 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i2);	$i3 = virtualinvoke $r5.<java.lang.String: int length()>();	if 1 != $i3 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$i4 = virtualinvoke r2.<java.awt.Color: int getBlue()>();	$r4 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i4);	$i5 = virtualinvoke $r4.<java.lang.String: int length()>();	if 1 != $i5 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 4