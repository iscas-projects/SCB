(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3071 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var168 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var168 null-String)))
(assert (and true (and (> (str.len var168) 0) (<= 0 0))))
(define-const var3275 Int (charAt/698050440 var168 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var1686 Int (cast-from-Int-to-Int var3275)) ; Statement: $i1 = (int) $c0 
 ; Statement: if $i1 != 91 goto $r12 = new java.lang.StringBuilder 
(assert (not (= var1686 91))) ; Cond: $i1 != 91 
(define-const var878 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var878)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var878!1 String)
(assert (= var878!1 ""))
(assert true)
(define-const var3086 String (append/672562846 var878!1 "[L")) ; Statement: $r3 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[L") 
(declare-const var878!2 String)
(assert (= var878!2 (str.++ var878!1 "[L")))
(assert true)
(define-const var3335 String (replace/1524665721 var168 46 47)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var3339 String (append/672562846 var3086 var3335)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3086!1 String)
(assert (= var3086!1 (str.++ var3086 var3335)))
(assert true)
(define-const var2872 String (append/672562846 var3339 ";")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";") 
(declare-const var3339!1 String)
(assert (= var3339!1 (str.++ var3339 ";")))
(assert true)
(define-const var193 String (toString/-2075883882 var2872)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var168=r0, var3071=null_type, var3275=$c0, var1686=$i1, var878=$r12, var3086=$r3, var3335=$r2, var3339=$r4, var2872=$r5, var193=$r6}
; {r0=var168, null_type=var3071, $c0=var3275, $i1=var1686, $r12=var878, $r3=var3086, $r2=var3335, $r4=var3339, $r5=var2872, $r6=var193}
;seq <java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i1 = (int) $c0;	if $i1 != 91 goto $r12 = new java.lang.StringBuilder;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[L");	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2