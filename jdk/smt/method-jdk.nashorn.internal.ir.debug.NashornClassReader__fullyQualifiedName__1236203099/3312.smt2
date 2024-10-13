(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1270 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var253 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var253 null-String)))
(declare-const var1617 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1617 null-String)))
(declare-const var1357 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var1357 null-String)))
(define-const var3438 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3438)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3438!1 String)
(assert (= var3438!1 ""))
(assert true)
(define-const var1236 String (append/672562846 var3438!1 var253)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3438!2 String)
(assert (= var3438!2 (str.++ var3438!1 var253)))
(assert true)
(define-const var1630 String (append/-1166366385 var1236 46)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1236!1 String)
(assert (str.prefixof var1236 var1236!1))
(assert true)
(define-const var3140 String (append/672562846 var1630 var1617)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1630!1 String)
(assert (= var1630!1 (str.++ var1630 var1617)))
(assert true)
(define-const var2319 String (append/672562846 var3140 var1357)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3140!1 String)
(assert (= var3140!1 (str.++ var3140 var1357)))
(assert true)
(define-const var1735 String (toString/-2075883882 var2319)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var253=r1, var1270=null_type, var1617=r3, var1357=r5, var3438=$r0, var1236=$r2, var1630=$r4, var3140=$r6, var2319=$r7, var1735=$r8}
; {r1=var253, null_type=var1270, r3=var1617, r5=var1357, $r0=var3438, $r2=var1236, $r4=var1630, $r6=var3140, $r7=var2319, $r8=var1735}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1