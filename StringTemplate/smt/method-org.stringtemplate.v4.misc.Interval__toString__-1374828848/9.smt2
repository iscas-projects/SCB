(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var363 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun a/-388494032 (var363) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun b/-388494032 (var363) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var363 var363)
(declare-const var3316 var363) ; Statement: r1 := @this: org.stringtemplate.v4.misc.Interval 
(assert (not (= var3316 null-var363)))
(define-const var3878 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3878)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3878!1 String)
(assert (= var3878!1 ""))
(define-const var640 Int (a/-388494032 var3316)) ; Statement: $i0 = r1.<org.stringtemplate.v4.misc.Interval: int a> 
(assert true)
(define-const var3005 String (append/-1001720160 var3878!1 var640)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3878!2 String)
(assert (str.prefixof var3878!1 var3878!2))
(assert true)
(define-const var30 String (append/672562846 var3005 "..")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..") 
(declare-const var3005!1 String)
(assert (= var3005!1 (str.++ var3005 "..")))
(define-const var3947 Int (b/-388494032 var3316)) ; Statement: $i1 = r1.<org.stringtemplate.v4.misc.Interval: int b> 
(assert true)
(define-const var1429 String (append/-1001720160 var30 var3947)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var30!1 String)
(assert (str.prefixof var30 var30!1))
(assert true)
(define-const var1971 String (toString/-2075883882 var1429)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), a/-388494032=([org.stringtemplate.v4.misc.Interval], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), b/-388494032=([org.stringtemplate.v4.misc.Interval], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var363=org.stringtemplate.v4.misc.Interval, var3316=r1, var3878=$r0, var640=$i0, var3005=$r2, var30=$r3, var3947=$i1, var1429=$r4, var1971=$r5}
; {org.stringtemplate.v4.misc.Interval=var363, r1=var3316, $r0=var3878, $i0=var640, $r2=var3005, $r3=var30, $i1=var3947, $r4=var1429, $r5=var1971}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.misc.Interval;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = r1.<org.stringtemplate.v4.misc.Interval: int a>;	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("..");	$i1 = r1.<org.stringtemplate.v4.misc.Interval: int b>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1