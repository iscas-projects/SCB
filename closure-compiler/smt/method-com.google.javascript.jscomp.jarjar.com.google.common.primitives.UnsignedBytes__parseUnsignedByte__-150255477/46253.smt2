(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1472 0)
(declare-sort var1075 0)
(declare-sort var1444 0)
(declare-sort var1153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1444_checkNotNull/1446102589 (var1075) var1075)
(declare-fun cast-from-String-to-var1075 (String) var1075)
(declare-fun cast-from-var1075-to-String (var1075) String)
(declare-fun Int_parseInt/-1412036412 (String Int) Int)
(declare-fun var1153-init () var1153)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1788180247 (var1153 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3713 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3713 null-String)))
(declare-const var688 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var688 null-Int)))
(define-const var3735 var1075 (var1444_checkNotNull/1446102589 (cast-from-String-to-var1075 var3713))) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 
(define-const var2245 String (cast-from-var1075-to-String var3735)) ; Statement: $r2 = (java.lang.String) $r1 
(define-const var1760 Int (Int_parseInt/-1412036412 var2245 var688)) ; Statement: i1 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String,int)>($r2, i0) 
(define-const var3002 Int (div var1760 (to_int (^ 2 8)))) ; Statement: $i2 = i1 >> 8 
 ; Statement: if $i2 != 0 goto $r3 = new java.lang.NumberFormatException 
(assert (not (= var3002 0))) ; Cond: $i2 != 0 
(define-const var893 var1153 var1153-init) ; Statement: $r3 = new java.lang.NumberFormatException 
(define-const var3598 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3598)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3598!1 String)
(assert (= var3598!1 ""))
(assert true)
(define-const var3286 String (append/672562846 var3598!1 "out of range: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("out of range: ") 
(declare-const var3598!2 String)
(assert (= var3598!2 (str.++ var3598!1 "out of range: ")))
(assert true)
(define-const var1959 String (append/-1001720160 var3286 var1760)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3286!1 String)
(assert (str.prefixof var3286 var3286!1))
(assert true)
(define-const var2910 String (toString/-2075883882 var1959)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1788180247 var893 var2910)) ; Statement: specialinvoke $r3.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r7) 

(declare-const var893!1 var1153)
(declare-const var2910!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1444_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var1075=([java.lang.String], java.lang.Object), cast-from-var1075-to-String=([java.lang.Object], java.lang.String), Int_parseInt/-1412036412=([java.lang.String, int], int), var1153-init=([], java.lang.NumberFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1788180247=([java.lang.NumberFormatException, java.lang.String], void)}
; {var3713=r0, var1472=null_type, var688=i0, var1075=java.lang.Object, var1444=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3735=$r1, var2245=$r2, var1760=i1, var3002=$i2, var1153=java.lang.NumberFormatException, var893=$r3, var3598=$r4, var3286=$r5, var1959=$r6, var2910=$r7}
; {r0=var3713, null_type=var1472, i0=var688, java.lang.Object=var1075, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1444, $r1=var3735, $r2=var2245, i1=var1760, $i2=var3002, java.lang.NumberFormatException=var1153, $r3=var893, $r4=var3598, $r5=var3286, $r6=var1959, $r7=var2910}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$r2 = (java.lang.String) $r1;	i1 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String,int)>($r2, i0);	$i2 = i1 >> 8;	if $i2 != 0 goto $r3 = new java.lang.NumberFormatException;	$r3 = new java.lang.NumberFormatException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("out of range: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 2