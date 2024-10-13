(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2863 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun append/-1166366385 (String Int) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var2792 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2792 null-String)))
(declare-const var3110 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3110 null-String)))
(assert (and true (and (> (str.len var3110) 0) (<= 0 0))))
(define-const var228 Int (charAt/698050440 var3110 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var2983 Int (cast-from-Int-to-Int var228)) ; Statement: $i1 = (int) $c0 
 ; Statement: if $i1 == 40 goto $r10 = new java.lang.StringBuilder 
(assert (= var2983 40)) ; Cond: $i1 == 40 
(define-const var1781 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1781)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1781!1 String)
(assert (= var1781!1 ""))
(assert true)
(define-const var3631 String (append/672562846 var1781!1 "(L")) ; Statement: $r4 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(L") 
(declare-const var1781!2 String)
(assert (= var1781!2 (str.++ var1781!1 "(L")))
(assert true)
(define-const var441 String (replace/1524665721 var2792 46 47)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var597 String (append/672562846 var3631 var441)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3631!1 String)
(assert (= var3631!1 (str.++ var3631 var441)))
(assert true)
(define-const var2305 String (append/-1166366385 var597 59)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59) 
(declare-const var597!1 String)
(assert (str.prefixof var597 var597!1))
(assert (and true (and (>= 1 0) (>= (str.len var3110) 1))))
(define-const var2948 String (substring/850833817 var3110 1)) ; Statement: $r6 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1) 
(assert true)
(define-const var3962 String (append/672562846 var2305 var2948)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2305!1 String)
(assert (= var2305!1 (str.++ var2305 var2948)))
(assert true)
(define-const var759 String (toString/-2075883882 var3962)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2792=r2, var2863=null_type, var3110=r0, var228=$c0, var2983=$i1, var1781=$r10, var3631=$r4, var441=$r3, var597=$r5, var2305=$r7, var2948=$r6, var3962=$r8, var759=$r9}
; {r2=var2792, null_type=var2863, r0=var3110, $c0=var228, $i1=var2983, $r10=var1781, $r4=var3631, $r3=var441, $r5=var597, $r7=var2305, $r6=var2948, $r8=var3962, $r9=var759}
;seq <java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i1 = (int) $c0;	if $i1 == 40 goto $r10 = new java.lang.StringBuilder;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(L");	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	$r6 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2