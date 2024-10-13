(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1966 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun prefix/727099159 (var1966) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun code/727099159 (var1966) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1966 var1966)
(declare-const var3890 var1966) ; Statement: r1 := @this: cn.hutool.core.lang.ansi.Ansi8BitColor 
(assert (not (= var3890 null-var1966)))
(define-const var3223 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3223)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3223!1 String)
(assert (= var3223!1 ""))
(define-const var1595 String (prefix/727099159 var3890)) ; Statement: $r2 = r1.<cn.hutool.core.lang.ansi.Ansi8BitColor: java.lang.String prefix> 
(assert true)
(define-const var2229 String (append/672562846 var3223!1 var1595)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3223!2 String)
(assert (= var3223!2 (str.++ var3223!1 var1595)))
(define-const var2030 Int (code/727099159 var3890)) ; Statement: $i0 = r1.<cn.hutool.core.lang.ansi.Ansi8BitColor: int code> 
(assert true)
(define-const var447 String (append/-1001720160 var2229 var2030)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2229!1 String)
(assert (str.prefixof var2229 var2229!1))
(assert true)
(define-const var597 String (toString/-2075883882 var447)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), prefix/727099159=([cn.hutool.core.lang.ansi.Ansi8BitColor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), code/727099159=([cn.hutool.core.lang.ansi.Ansi8BitColor], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1966=cn.hutool.core.lang.ansi.Ansi8BitColor, var3890=r1, var3223=$r0, var1595=$r2, var2229=$r3, var2030=$i0, var447=$r4, var597=$r5}
; {cn.hutool.core.lang.ansi.Ansi8BitColor=var1966, r1=var3890, $r0=var3223, $r2=var1595, $r3=var2229, $i0=var2030, $r4=var447, $r5=var597}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.lang.ansi.Ansi8BitColor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<cn.hutool.core.lang.ansi.Ansi8BitColor: java.lang.String prefix>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$i0 = r1.<cn.hutool.core.lang.ansi.Ansi8BitColor: int code>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1