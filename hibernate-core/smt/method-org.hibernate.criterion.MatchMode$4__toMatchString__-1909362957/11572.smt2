(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var960 0)
(declare-sort var1854 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var960 var960)
(declare-const null-String String)
(declare-const var2206 var960) ; Statement: r6 := @this: org.hibernate.criterion.MatchMode$4 
(assert (not (= var2206 null-var960)))
(declare-const var2823 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2823 null-String)))
(define-const var1047 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1047)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1047!1 String)
(assert (= var1047!1 ""))
(assert true)
(define-const var2306 String (append/-1166366385 var1047!1 37)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(37) 
(declare-const var1047!2 String)
(assert (str.prefixof var1047!1 var1047!2))
(assert true)
(define-const var1888 String (append/672562846 var2306 var2823)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2306!1 String)
(assert (= var2306!1 (str.++ var2306 var2823)))
(assert true)
(define-const var1764 String (append/-1166366385 var1888 37)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(37) 
(declare-const var1888!1 String)
(assert (str.prefixof var1888 var1888!1))
(assert true)
(define-const var470 String (toString/-2075883882 var1764)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var960=org.hibernate.criterion.MatchMode$4, var2206=r6, var2823=r1, var1854=null_type, var1047=$r0, var2306=$r2, var1888=$r3, var1764=$r4, var470=$r5}
; {org.hibernate.criterion.MatchMode$4=var960, r6=var2206, r1=var2823, null_type=var1854, $r0=var1047, $r2=var2306, $r3=var1888, $r4=var1764, $r5=var470}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.criterion.MatchMode$4;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(37);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(37);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1