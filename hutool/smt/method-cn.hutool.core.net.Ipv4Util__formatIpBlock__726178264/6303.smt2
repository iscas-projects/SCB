(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var785 0)
(declare-sort var3140 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3140_getMaskBitByMask/1019457560 (String) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1417 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1417 null-String)))
(declare-const var3457 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3457 null-String)))
(define-const var2948 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2948)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2948!1 String)
(assert (= var2948!1 ""))
(assert true)
(define-const var1099 String (append/672562846 var2948!1 var1417)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2948!2 String)
(assert (= var2948!2 (str.++ var2948!1 var1417)))
(assert true)
(define-const var1062 String (append/672562846 var1099 "/")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var1099!1 String)
(assert (= var1099!1 (str.++ var1099 "/")))
(define-const var409 Int (var3140_getMaskBitByMask/1019457560 var3457)) ; Statement: $i0 = staticinvoke <cn.hutool.core.net.Ipv4Util: int getMaskBitByMask(java.lang.String)>(r3) 
(assert true)
(define-const var1563 String (append/-1001720160 var1062 var409)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1062!1 String)
(assert (str.prefixof var1062 var1062!1))
(assert true)
(define-const var3397 String (toString/-2075883882 var1563)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3140_getMaskBitByMask/1019457560=([java.lang.String], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1417=r1, var785=null_type, var3457=r3, var2948=$r0, var1099=$r2, var1062=$r4, var3140=cn.hutool.core.net.Ipv4Util, var409=$i0, var1563=$r5, var3397=$r6}
; {r1=var1417, null_type=var785, r3=var3457, $r0=var2948, $r2=var1099, $r4=var1062, cn.hutool.core.net.Ipv4Util=var3140, $i0=var409, $r5=var1563, $r6=var3397}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$i0 = staticinvoke <cn.hutool.core.net.Ipv4Util: int getMaskBitByMask(java.lang.String)>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1