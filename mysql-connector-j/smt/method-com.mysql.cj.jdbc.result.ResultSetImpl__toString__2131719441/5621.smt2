(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1575 0)
(declare-sort var1208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasRows/-179421194 (var1208) Bool)
(declare-fun cast-from-var1575-to-var1208 (var1575) var1208)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun updateCount/187522098 (var1208) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1575 var1575)
(declare-const var0 var1575) ; Statement: r0 := @this: com.mysql.cj.jdbc.result.ResultSetImpl 
(assert (not (= var0 null-var1575)))
(assert true)
(define-const var3470 Bool (hasRows/-179421194 (cast-from-var1575-to-var1208 var0))) ; Statement: $z0 = virtualinvoke r0.<com.mysql.cj.jdbc.result.ResultSetImpl: boolean hasRows()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var3470 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2266 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2266)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2266!1 String)
(assert (= var2266!1 ""))
(assert true)
(define-const var3388 String (append/672562846 var2266!1 "Result set representing update count of ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Result set representing update count of ") 
(declare-const var2266!2 String)
(assert (= var2266!2 (str.++ var2266!1 "Result set representing update count of ")))
(define-const var331 Int (updateCount/187522098 (cast-from-var1575-to-var1208 var0))) ; Statement: $l0 = r0.<com.mysql.cj.jdbc.result.ResultSetImpl: long updateCount> 
(assert true)
(define-const var2976 String (append/-901862667 var3388 var331)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3388!1 String)
(assert (str.prefixof var3388 var3388!1))
(assert true)
(define-const var2606 String (toString/-2075883882 var2976)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {hasRows/-179421194=([com.mysql.cj.protocol.a.result.NativeResultset], boolean), cast-from-var1575-to-var1208=([com.mysql.cj.jdbc.result.ResultSetImpl], com.mysql.cj.protocol.a.result.NativeResultset), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), updateCount/187522098=([com.mysql.cj.protocol.a.result.NativeResultset], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1575=com.mysql.cj.jdbc.result.ResultSetImpl, var0=r0, var1208=com.mysql.cj.protocol.a.result.NativeResultset, var3470=$z0, var2266=$r1, var3388=$r2, var331=$l0, var2976=$r3, var2606=$r4}
; {com.mysql.cj.jdbc.result.ResultSetImpl=var1575, r0=var0, com.mysql.cj.protocol.a.result.NativeResultset=var1208, $z0=var3470, $r1=var2266, $r2=var3388, $l0=var331, $r3=var2976, $r4=var2606}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.result.ResultSetImpl;	$z0 = virtualinvoke r0.<com.mysql.cj.jdbc.result.ResultSetImpl: boolean hasRows()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Result set representing update count of ");	$l0 = r0.<com.mysql.cj.jdbc.result.ResultSetImpl: long updateCount>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3