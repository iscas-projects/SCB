(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2810 0)
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
(declare-const var90 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var90 null-String)))
(assert true)
(define-const var3774 Bool (contains/1009244746 var90 (cast-from-String-to-String "\u0022"))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\"") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'") 
(assert (= (ite var3774 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3701 Bool (contains/1009244746 var90 (cast-from-String-to-String "\u0027"))) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'") 
 ; Statement: if $z1 != 0 goto $r7 = new java.lang.StringBuilder 
(assert (not (= (ite var3701 1 0) 0))) ; Cond: $z1 != 0 
(define-const var2437 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2437)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2437!1 String)
(assert (= var2437!1 ""))
(assert true)
(define-const var3459 String (append/-1166366385 var2437!1 34)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var2437!2 String)
(assert (str.prefixof var2437!1 var2437!2))
(assert true)
(define-const var631 String (append/672562846 var3459 var90)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3459!1 String)
(assert (= var3459!1 (str.++ var3459 var90)))
(assert true)
(define-const var1888 String (append/-1166366385 var631 34)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var631!1 String)
(assert (str.prefixof var631 var631!1))
(assert true)
(define-const var779 String (toString/-2075883882 var1888)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var90=r0, var2810=null_type, var3774=$z0, var3701=$z1, var2437=$r7, var3459=$r8, var631=$r9, var1888=$r10, var779=$r11}
; {r0=var90, null_type=var2810, $z0=var3774, $z1=var3701, $r7=var2437, $r8=var3459, $r9=var631, $r10=var1888, $r11=var779}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\"");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'");	$z1 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("\'");	if $z1 != 0 goto $r7 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 3