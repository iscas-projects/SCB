(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var459 0)
(declare-sort var2038 0)
(declare-sort var2002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun code/1471104503 (var459) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2038-init () var2038)
(declare-fun toString/-522406933 (var2002) String)
(declare-fun cast-from-String-to-var2002 (String) var2002)
(declare-fun <init>/-1092629202 (var2038 String) void)
(declare-const null-var459 var459)
(declare-const var2267 var459) ; Statement: r0 := @this: okhttp3.Response$Builder 
(assert (not (= var2267 null-var459)))
(define-const var2502 Int (code/1471104503 var2267)) ; Statement: $i0 = r0.<okhttp3.Response$Builder: int code> 
 ; Statement: if $i0 < 0 goto $z0 = 0 
(assert (< var2502 0)) ; Cond: $i0 < 0 
(define-const var3333 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request> 
(assert (not (not (= (ite var3333 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1074 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1074)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1074!1 String)
(assert (= var1074!1 ""))
(assert true)
(define-const var2011 String (append/672562846 var1074!1 "code < 0: ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("code < 0: ") 
(declare-const var1074!2 String)
(assert (= var1074!2 (str.++ var1074!1 "code < 0: ")))
(define-const var2688 Int (code/1471104503 var2267)) ; Statement: $i4 = r0.<okhttp3.Response$Builder: int code> 
(assert true)
(define-const var142 String (append/-1001720160 var2011 var2688)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var2011!1 String)
(assert (str.prefixof var2011 var2011!1))
(assert true)
(define-const var2669 String (toString/-2075883882 var142)) ; Statement: $r24 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2894 var2038 var2038-init) ; Statement: $r22 = new java.lang.IllegalStateException 
(assert true)
(define-const var2424 String (toString/-522406933 (cast-from-String-to-var2002 var2669))) ; Statement: $r23 = virtualinvoke $r24.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2894 var2424)) ; Statement: specialinvoke $r22.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r23) 

(declare-const var2894!1 var2038)
(declare-const var2424!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {code/1471104503=([okhttp3.Response$Builder], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2038-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var2002=([java.lang.String], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var459=okhttp3.Response$Builder, var2267=r0, var2502=$i0, var3333=$z0, var1074=$r19, var2011=$r20, var2688=$i4, var142=$r21, var2669=$r24, var2038=java.lang.IllegalStateException, var2894=$r22, var2002=java.lang.Object, var2424=$r23}
; {okhttp3.Response$Builder=var459, r0=var2267, $i0=var2502, $z0=var3333, $r19=var1074, $r20=var2011, $i4=var2688, $r21=var142, $r24=var2669, java.lang.IllegalStateException=var2038, $r22=var2894, java.lang.Object=var2002, $r23=var2424}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.Response$Builder;	$i0 = r0.<okhttp3.Response$Builder: int code>;	if $i0 < 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request>;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("code < 0: ");	$i4 = r0.<okhttp3.Response$Builder: int code>;	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r24 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r22 = new java.lang.IllegalStateException;	$r23 = virtualinvoke $r24.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r22.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r23);	throw $r22
;block_num 4