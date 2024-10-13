(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3927 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-String String)
(declare-const var1947 (Array Int String)) ; Statement: r1 := @parameter0: java.lang.String[] 
(assert (not (= var1947 null-__Array__Int__String__)))
(declare-const var3106 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3106 null-String)))
(declare-const var1793 String) ; Statement: r8 := @parameter2: java.lang.String 
(assert (not (= var1793 null-String)))
(declare-const var699 String) ; Statement: r9 := @parameter3: java.lang.String 
(assert (not (= var699 null-String)))
(declare-const var177 String) ; Statement: r4 := @parameter4: java.lang.String 
(assert (not (= var177 null-String)))
(define-const var618 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var618)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var618!1 String)
(assert (= var618!1 ""))
(define-const var812 Int (getLength-Arr-String-1 var1947)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 <= 1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(assert (<= var812 1)) ; Cond: $i0 <= 1 
(assert true)
;(assert (append/672562846 var618!1 var3106)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var618!2 String)
(assert (= var618!2 (str.++ var618!1 var3106)))
(assert true) ; Non Conditional
(define-const var3646 Int (getLength-Arr-String-1 var1947)) ; Statement: $i1 = lengthof r1 
(define-const var1326 Int (- var3646 1)) ; Statement: $i2 = $i1 - 1 
(define-const var1839 String (select var1947 var1326)) ; Statement: $r3 = r1[$i2] 
(assert true)
(define-const var2441 String (append/672562846 var618!2 var1839)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var618!3 String)
(assert (= var618!3 (str.++ var618!2 var1839)))
(assert true)
;(assert (append/672562846 var2441 var177)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2441!1 String)
(assert (= var2441!1 (str.++ var2441 var177)))
(assert true)
(define-const var1034 String (toString/-2075883882 var618!3)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-String-1=([java.lang.String[]], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1947=r1, var3106=r2, var3927=null_type, var1793=r8, var699=r9, var177=r4, var618=$r0, var812=$i0, var3646=$i1, var1326=$i2, var1839=$r3, var2441=$r5, var1034=$r6}
; {r1=var1947, r2=var3106, null_type=var3927, r8=var1793, r9=var699, r4=var177, $r0=var618, $i0=var812, $i1=var3646, $i2=var1326, $r3=var1839, $r5=var2441, $r6=var1034}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String[];	r2 := @parameter1: java.lang.String;	r8 := @parameter2: java.lang.String;	r9 := @parameter3: java.lang.String;	r4 := @parameter4: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = lengthof r1;	if $i0 <= 1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$i1 = lengthof r1;	$i2 = $i1 - 1;	$r3 = r1[$i2];	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3