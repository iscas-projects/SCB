(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var118 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var118-GAN (Array Int String))
(declare-const var118-ZHI (Array Int String))
(declare-const var3741 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3741 null-Int)))
(define-const var1937 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1937)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1937!1 String)
(assert (= var1937!1 ""))
(define-const var2333 (Array Int String) var118-GAN) ; Statement: $r1 = <cn.hutool.core.date.chinese.GanZhi: java.lang.String[] GAN> 
(define-const var2473 Int (mod var3741 10)) ; Statement: $i1 = i0 % 10 
(define-const var2166 String (select var2333 var2473)) ; Statement: $r2 = $r1[$i1] 
(assert true)
(define-const var2879 String (append/672562846 var1937!1 var2166)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1937!2 String)
(assert (= var1937!2 (str.++ var1937!1 var2166)))
(define-const var2798 (Array Int String) var118-ZHI) ; Statement: $r3 = <cn.hutool.core.date.chinese.GanZhi: java.lang.String[] ZHI> 
(define-const var2690 Int (mod var3741 12)) ; Statement: $i2 = i0 % 12 
(define-const var1057 String (select var2798 var2690)) ; Statement: $r4 = $r3[$i2] 
(assert true)
(define-const var504 String (append/672562846 var2879 var1057)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2879!1 String)
(assert (= var2879!1 (str.++ var2879 var1057)))
(assert true)
(define-const var2271 String (toString/-2075883882 var504)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3741=i0, var1937=$r0, var118=cn.hutool.core.date.chinese.GanZhi, var2333=$r1, var2473=$i1, var2166=$r2, var2879=$r5, var2798=$r3, var2690=$i2, var1057=$r4, var504=$r6, var2271=$r7}
; {i0=var3741, $r0=var1937, cn.hutool.core.date.chinese.GanZhi=var118, $r1=var2333, $i1=var2473, $r2=var2166, $r5=var2879, $r3=var2798, $i2=var2690, $r4=var1057, $r6=var504, $r7=var2271}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = <cn.hutool.core.date.chinese.GanZhi: java.lang.String[] GAN>;	$i1 = i0 % 10;	$r2 = $r1[$i1];	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = <cn.hutool.core.date.chinese.GanZhi: java.lang.String[] ZHI>;	$i2 = i0 % 12;	$r4 = $r3[$i2];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1