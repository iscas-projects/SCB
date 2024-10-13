(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1265 0)
(declare-sort var1303 0)
(declare-sort var1972 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun code/1471104503 (var1265) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1303-init () var1303)
(declare-fun toString/-522406933 (var1972) String)
(declare-fun cast-from-String-to-var1972 (String) var1972)
(declare-fun <init>/-1092629202 (var1303 String) void)
(declare-const null-var1265 var1265)
(declare-const var1633 var1265) ; Statement: r0 := @this: okhttp3.Response$Builder 
(assert (not (= var1633 null-var1265)))
(define-const var1432 Int (code/1471104503 var1633)) ; Statement: $i0 = r0.<okhttp3.Response$Builder: int code> 
 ; Statement: if $i0 < 0 goto $z0 = 0 
(assert (not (< var1432 0))) ; Negate: Cond: $i0 < 0  
(define-const var3705 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request> 
(assert (not (not (= (ite var3705 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1841 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1841)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1841!1 String)
(assert (= var1841!1 ""))
(assert true)
(define-const var3830 String (append/672562846 var1841!1 "code < 0: ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("code < 0: ") 
(declare-const var1841!2 String)
(assert (= var1841!2 (str.++ var1841!1 "code < 0: ")))
(define-const var3511 Int (code/1471104503 var1633)) ; Statement: $i4 = r0.<okhttp3.Response$Builder: int code> 
(assert true)
(define-const var1198 String (append/-1001720160 var3830 var3511)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var3830!1 String)
(assert (str.prefixof var3830 var3830!1))
(assert true)
(define-const var1001 String (toString/-2075883882 var1198)) ; Statement: $r24 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1262 var1303 var1303-init) ; Statement: $r22 = new java.lang.IllegalStateException 
(assert true)
(define-const var3067 String (toString/-522406933 (cast-from-String-to-var1972 var1001))) ; Statement: $r23 = virtualinvoke $r24.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1262 var3067)) ; Statement: specialinvoke $r22.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r23) 

(declare-const var1262!1 var1303)
(declare-const var3067!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {code/1471104503=([okhttp3.Response$Builder], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1303-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var1972=([java.lang.String], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1265=okhttp3.Response$Builder, var1633=r0, var1432=$i0, var3705=$z0, var1841=$r19, var3830=$r20, var3511=$i4, var1198=$r21, var1001=$r24, var1303=java.lang.IllegalStateException, var1262=$r22, var1972=java.lang.Object, var3067=$r23}
; {okhttp3.Response$Builder=var1265, r0=var1633, $i0=var1432, $z0=var3705, $r19=var1841, $r20=var3830, $i4=var3511, $r21=var1198, $r24=var1001, java.lang.IllegalStateException=var1303, $r22=var1262, java.lang.Object=var1972, $r23=var3067}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.Response$Builder;	$i0 = r0.<okhttp3.Response$Builder: int code>;	if $i0 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto $r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request>;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("code < 0: ");	$i4 = r0.<okhttp3.Response$Builder: int code>;	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r24 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r22 = new java.lang.IllegalStateException;	$r23 = virtualinvoke $r24.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r22.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r23);	throw $r22
;block_num 4