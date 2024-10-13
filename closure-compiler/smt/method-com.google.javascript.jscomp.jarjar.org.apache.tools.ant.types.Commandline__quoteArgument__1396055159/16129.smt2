(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2758 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var316 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var316 null-String)))
(assert true)
(define-const var1203 Bool (contains/1009244746 var316 (cast-from-String-to-String "\u0022"))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\"") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'") 
(assert (not (= (ite var1203 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var496 Bool (contains/1009244746 var316 (cast-from-String-to-String "\u0027"))) ; Statement: $z5 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'") 
 ; Statement: if $z5 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var496 1 0) 0)) ; Cond: $z5 == 0 
(define-const var3991 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3991)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3991!1 String)
(assert (= var3991!1 ""))
(assert true)
(define-const var3328 String (append/-1166366385 var3991!1 39)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var3991!2 String)
(assert (str.prefixof var3991!1 var3991!2))
(assert true)
(define-const var1109 String (append/672562846 var3328 var316)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3328!1 String)
(assert (= var3328!1 (str.++ var3328 var316)))
(assert true)
(define-const var2092 String (append/-1166366385 var1109 39)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var1109!1 String)
(assert (str.prefixof var1109 var1109!1))
(assert true)
(define-const var798 String (toString/-2075883882 var2092)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var316=r0, var2758=null_type, var1203=$z0, var496=$z5, var3991=$r1, var3328=$r2, var1109=$r3, var2092=$r4, var798=$r5}
; {r0=var316, null_type=var2758, $z0=var1203, $z5=var496, $r1=var3991, $r2=var3328, $r3=var1109, $r4=var2092, $r5=var798}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\"");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'");	$z5 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'");	if $z5 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3