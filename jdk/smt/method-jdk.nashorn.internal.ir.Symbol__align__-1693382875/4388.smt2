(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var136 0)
(declare-sort var3556 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3556_min/-1112089438 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var308 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var308 null-String)))
(declare-const var1550 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1550 null-Int)))
(define-const var2162 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2162)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2162!1 String)
(assert (= var2162!1 ""))
(assert true)
(define-const var3136 Int (length/-134980193 var308)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2205 Int (var3556_min/-1112089438 var3136 var1550)) ; Statement: $i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, i0) 
(assert (and true (and (>= 0 0) (>= (str.len var308) var2205) (>= var2205 0))))
(define-const var2871 String (substring/-1240304868 var308 0 var2205)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i2) 
(assert true)
;(assert (append/672562846 var2162!1 var2871)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2162!2 String)
(assert (= var2162!2 (str.++ var2162!1 var2871)))
(assert true) ; Non Conditional
(assert true)
(define-const var1915 Int (length/-171891354 var2162!2)) ; Statement: $i3 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i3 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1915 var1550)) ; Cond: $i3 >= i0 
(assert true)
(define-const var2843 String (toString/-2075883882 var2162!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), var3556_min/-1112089438=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var308=r1, var136=null_type, var1550=i0, var2162=$r0, var3136=$i1, var3556=java.lang.Math, var2205=$i2, var2871=$r2, var1915=$i3, var2843=$r3}
; {r1=var308, null_type=var136, i0=var1550, $r0=var2162, $i1=var3136, java.lang.Math=var3556, $i2=var2205, $r2=var2871, $i3=var1915, $r3=var2843}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, i0);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$i3 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	if $i3 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3