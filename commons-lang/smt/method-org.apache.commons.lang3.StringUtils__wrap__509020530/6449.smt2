(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var650 0)
(declare-sort var3759 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3759_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3234 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3234 null-String)))
(declare-const var676 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var676 null-Int)))
(define-const var2749 Bool (var3759_isEmpty/1595667738 (cast-from-String-to-String var3234))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var2749 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if c0 != 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= var676 0))) ; Cond: c0 != 0 
(define-const var747 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var747)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var747!1 String)
(assert (= var747!1 ""))
(assert true)
(define-const var1414 String (append/-1166366385 var747!1 var676)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var747!2 String)
(assert (str.prefixof var747!1 var747!2))
(assert true)
(define-const var2136 String (append/672562846 var1414 var3234)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1414!1 String)
(assert (= var1414!1 (str.++ var1414 var3234)))
(assert true)
(define-const var2043 String (append/-1166366385 var2136 var676)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var2136!1 String)
(assert (str.prefixof var2136 var2136!1))
(assert true)
(define-const var638 String (toString/-2075883882 var2043)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3759_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3234=r0, var650=null_type, var676=c0, var3759=org.apache.commons.lang3.StringUtils, var2749=$z0, var747=$r1, var1414=$r2, var2136=$r3, var2043=$r4, var638=$r5}
; {r0=var3234, null_type=var650, c0=var676, org.apache.commons.lang3.StringUtils=var3759, $z0=var2749, $r1=var747, $r2=var1414, $r3=var2136, $r4=var2043, $r5=var638}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	c0 := @parameter1: char;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	if c0 != 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3