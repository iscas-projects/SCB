(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3954 var3954)
(declare-const null-Int Int)
(declare-const var2111 var3954) ; Statement: r7 := @this: okhttp3.internal.ws.WebSocketProtocol 
(assert (not (= var2111 null-var3954)))
(declare-const var3398 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3398 null-Int)))
 ; Statement: if i0 < 1000 goto $r0 = new java.lang.StringBuilder 
(assert (< var3398 1000)) ; Cond: i0 < 1000 
(define-const var3886 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3886)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3886!1 String)
(assert (= var3886!1 ""))
(assert true)
(define-const var2957 String (append/672562846 var3886!1 "Code must be in range [1000,5000): ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Code must be in range [1000,5000): ") 
(declare-const var3886!2 String)
(assert (= var3886!2 (str.++ var3886!1 "Code must be in range [1000,5000): ")))
(assert true)
(define-const var551 String (append/-1001720160 var2957 var3398)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2957!1 String)
(assert (str.prefixof var2957 var2957!1))
(assert true)
(define-const var2109 String (toString/-2075883882 var551)) ; Statement: $r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r8] 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3954=okhttp3.internal.ws.WebSocketProtocol, var2111=r7, var3398=i0, var3886=$r0, var2957=$r1, var551=$r2, var2109=$r8}
; {okhttp3.internal.ws.WebSocketProtocol=var3954, r7=var2111, i0=var3398, $r0=var3886, $r1=var2957, $r2=var551, $r8=var2109}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: okhttp3.internal.ws.WebSocketProtocol;	i0 := @parameter0: int;	if i0 < 1000 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Code must be in range [1000,5000): ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r8];	return $r8
;block_num 3