(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3619 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun String_valueOf/-371898945 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3458 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3458 null-String)))
(declare-const var837 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var837 null-Int)))
(declare-const var473 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var473 null-String)))
(define-const var832 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var832)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var832!1 String)
(assert (= var832!1 ""))
(define-const var1153 String (String_valueOf/-371898945 40)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(40) 
(assert true)
(define-const var700 String (append/672562846 var832!1 var1153)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var832!2 String)
(assert (= var832!2 (str.++ var832!1 var1153)))
(assert true)
(define-const var2040 String (append/672562846 var700 var3458)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var700!1 String)
(assert (= var700!1 (str.++ var700 var3458)))
(assert true)
(define-const var742 String (append/-1166366385 var2040 var837)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var2040!1 String)
(assert (str.prefixof var2040 var2040!1))
(assert true)
(define-const var2624 String (append/672562846 var742 var473)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var742!1 String)
(assert (= var742!1 (str.++ var742 var473)))
(assert true)
(define-const var553 String (append/-1166366385 var2624 41)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2624!1 String)
(assert (str.prefixof var2624 var2624!1))
(assert true)
(define-const var1264 String (toString/-2075883882 var553)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), String_valueOf/-371898945=([char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3458=r2, var3619=null_type, var837=c0, var473=r5, var832=$r0, var1153=$r1, var700=$r3, var2040=$r4, var742=$r6, var2624=$r7, var553=$r8, var1264=$r9}
; {r2=var3458, null_type=var3619, c0=var837, r5=var473, $r0=var832, $r1=var1153, $r3=var700, $r4=var2040, $r6=var742, $r7=var2624, $r8=var553, $r9=var1264}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String valueOf(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String valueOf(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	c0 := @parameter1: char;	r5 := @parameter2: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(40);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1